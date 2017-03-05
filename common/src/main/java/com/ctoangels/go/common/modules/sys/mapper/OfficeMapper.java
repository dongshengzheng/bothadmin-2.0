package com.ctoangels.go.common.modules.sys.mapper;


import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.go.common.modules.sys.entity.Office;

import java.util.List;

/**
 * Office 表数据库控制层接口
 */
public interface OfficeMapper extends AutoMapper<Office> {

    /**
     * 查找所有的子部门，不包括中间的部门
     *
     * @return 所有子部门集合
     */
    List<Office> searchSubdivision();

    /**
     * 通过部门id查找该部门下所有的子部门
     *
     * @param id 部门id
     * @return 子部门集合
     */
    List<Office> searchOfficeByParentId(Integer id);
}