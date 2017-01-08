package com.fish.idle.service.modules.sys.mapper;

import com.baomidou.mybatisplus.mapper.AutoMapper;
import com.fish.idle.service.modules.sys.entity.Menu;

import java.util.List;
import java.util.Map;

public interface MenuMapper extends AutoMapper<Menu> {
    List<Menu> findParentMenusByUserId(int userId);

    List<Menu> findMenusByUserIdAndParent(Map<?, ?> params);

    Menu getByPath(String url);

}