package com.ctoangels.go.common.modules.sys.mapper;


import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.go.common.modules.sys.entity.Office;

import java.util.List;

/**
 *
 * Office 表数据库控制层接口
 *
 */
public interface OfficeMapper extends AutoMapper<Office> {

    List<Office> searchSubdivision();
}