package com.ctoangels.go.common.modules.sys.service.impl;

import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.ctoangels.go.common.modules.sys.entity.UserOffice;
import com.ctoangels.go.common.modules.sys.mapper.UserOfficeMapper;
import com.ctoangels.go.common.modules.sys.service.IUserOfficeService;
import org.springframework.stereotype.Service;

/**
 * UserOffice 表数据服务层接口实现类
 */
@Service
public class UserOfficeServiceImpl extends SuperServiceImpl<UserOfficeMapper, UserOffice> implements IUserOfficeService {

}