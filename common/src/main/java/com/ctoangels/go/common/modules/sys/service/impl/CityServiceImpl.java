package com.ctoangels.go.common.modules.sys.service.impl;

import org.springframework.stereotype.Service;

import com.ctoangels.go.common.modules.sys.mapper.CityMapper;
import com.ctoangels.go.common.modules.sys.entity.City;
import com.ctoangels.go.common.modules.sys.service.ICityService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * City 表数据服务层接口实现类
 *
 */
@Service
public class CityServiceImpl extends SuperServiceImpl<CityMapper, City> implements ICityService {


}