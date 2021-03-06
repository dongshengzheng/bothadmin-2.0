package com.ctoangels.go.common.modules.go.service.impl;

import com.ctoangels.go.common.modules.go.entity.RepairSpecItem;
import com.ctoangels.go.common.modules.go.entity.RepairSpecItemList;
import com.ctoangels.go.common.modules.go.mapper.RepairSpecItemMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ctoangels.go.common.modules.go.mapper.RepairSpecMapper;
import com.ctoangels.go.common.modules.go.entity.RepairSpec;
import com.ctoangels.go.common.modules.go.service.IRepairSpecService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

import java.util.ArrayList;
import java.util.List;

/**
 * RepairSpec 表数据服务层接口实现类
 */
@Service
public class RepairSpecServiceImpl extends SuperServiceImpl<RepairSpecMapper, RepairSpec> implements IRepairSpecService {
    @Autowired
    RepairSpecMapper repairSpecMapper;

    @Autowired
    RepairSpecItemMapper repairSpecItemMapper;

    @Override
    public boolean saveRepairSpec(RepairSpec repairSpec, RepairSpecItemList specItemList) {
        if (repairSpecMapper.insert(repairSpec) < 0) {
            return false;
        }

        List<RepairSpecItem> list = new ArrayList<>();
        list.addAll(specItemList.getType1List());
        list.addAll(specItemList.getType2List());
        list.addAll(specItemList.getType3List());
        list.addAll(specItemList.getType4List());
        list.addAll(specItemList.getType5List());
        list.addAll(specItemList.getType6List());
        list.addAll(specItemList.getType7List());
        for (RepairSpecItem item : list) {
            item.setRepairSpecId(repairSpec.getId());
        }
        if (repairSpecItemMapper.insertBatch(list) < 0) {
            return false;
        }
        ;
        return true;
    }
}