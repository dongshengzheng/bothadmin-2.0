package com.ctoangels.go.common.modules.sys.service;


import com.baomidou.framework.service.ISuperService;
import com.ctoangels.go.common.modules.sys.entity.Office;

import java.util.List;

/**
 * Office 表数据服务层接口
 */
public interface IOfficeService extends ISuperService<Office> {

    List<Office> findOfficeByParentId(Integer id);
}