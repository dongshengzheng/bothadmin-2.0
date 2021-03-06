package com.ctoangels.go.common.modules.sys.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.ctoangels.go.common.modules.sys.entity.Office;
import com.ctoangels.go.common.modules.sys.mapper.OfficeMapper;
import com.ctoangels.go.common.modules.sys.service.IOfficeService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;


/**
 * Office 表数据服务层接口实现类
 */
@Service
public class OfficeServiceImpl extends SuperServiceImpl<OfficeMapper, Office> implements IOfficeService {

    @Resource
    private OfficeMapper officeMapper;

    @Override
    public List<Office> findOfficeByParentId(Integer id) {
        return officeMapper.searchOfficeByParentId(id);
    }
}