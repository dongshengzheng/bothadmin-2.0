package com.ctoangels.go.common.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.ctoangels.go.common.modules.sys.entity.Dict;

/**
 * Dict 表数据库控制层接口
 */
public interface DictMapper extends AutoMapper<Dict> {

    int findPinZhongIdByValue(String breed);
}