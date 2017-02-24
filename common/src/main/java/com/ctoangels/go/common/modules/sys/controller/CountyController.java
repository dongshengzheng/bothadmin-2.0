package com.ctoangels.go.common.modules.sys.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.County;
import com.ctoangels.go.common.modules.sys.service.ICountyService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * County 控制层
 */
@Controller
@RequestMapping("/county")
public class CountyController extends BaseController {
    @Resource
    private ICountyService countyService;

    @RequestMapping(value = "/findAllCounty")
    @ResponseBody
    public List<County> findAllCounty(String cityId) {
        EntityWrapper<County> ew = new EntityWrapper<>();
        ew.addFilter("city_id={0}", cityId);
        return countyService.selectList(ew);
    }
}