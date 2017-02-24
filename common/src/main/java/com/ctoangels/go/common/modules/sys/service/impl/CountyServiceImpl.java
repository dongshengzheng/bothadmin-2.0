package com.ctoangels.go.common.modules.sys.service.impl;

import org.springframework.stereotype.Service;

import com.ctoangels.go.common.modules.sys.mapper.CountyMapper;
import com.ctoangels.go.common.modules.sys.entity.County;
import com.ctoangels.go.common.modules.sys.service.ICountyService;
import com.baomidou.framework.service.impl.SuperServiceImpl;

/**
 *
 * County 表数据服务层接口实现类
 *
 */
@Service
public class CountyServiceImpl extends SuperServiceImpl<CountyMapper, County> implements ICountyService {


}