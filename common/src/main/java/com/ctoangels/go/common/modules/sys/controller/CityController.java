package com.ctoangels.go.common.modules.sys.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.City;
import com.ctoangels.go.common.modules.sys.service.ICityService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * City 控制层
 */
@Controller
@RequestMapping(value = "/city")
public class CityController extends BaseController {
    @Resource
    private ICityService cityService;

    @RequestMapping(value = "/findAllCity")
    @ResponseBody
    public List<City> findAllCity(String provinceId) {
        EntityWrapper<City> ew = new EntityWrapper<>();
        ew.addFilter("province_id={0}", provinceId);
        return cityService.selectList(ew);
    }
}