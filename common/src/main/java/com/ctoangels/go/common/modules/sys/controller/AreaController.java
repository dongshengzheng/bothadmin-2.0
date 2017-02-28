package com.ctoangels.go.common.modules.sys.controller;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.*;
import com.ctoangels.go.common.modules.sys.service.IAreaService;
import com.ctoangels.go.common.modules.sys.service.ICityService;
import com.ctoangels.go.common.modules.sys.service.ICountyService;
import com.ctoangels.go.common.modules.sys.service.IProvinceService;
import com.ctoangels.go.common.util.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by xhj224 on 2017/2/24.
 */
@Controller
@RequestMapping("/area")
public class AreaController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(AreaController.class);

    @Resource
    private IProvinceService provinceService;
    @Resource
    private ICityService cityService;
    @Resource
    private ICountyService countyService;
    @Resource
    private IAreaService areaService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAdd() {
        // return "sys/area/area_add_tree";
        return "sys/area/area_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    public String add(String provinceId, String cityId, String countyId, ModelMap map) {
        if (StringUtils.isNotEmpty(provinceId) && StringUtils.isNotEmpty(cityId) && StringUtils.isNotEmpty(countyId)) {
            Province province = provinceService.selectOne(new EntityWrapper<Province>().addFilter("province_id={0}", Integer.parseInt(provinceId)));
            City city = cityService.selectOne(new EntityWrapper<City>().addFilter("city_id={0}", Long.parseLong(cityId)));
            County county = countyService.selectOne(new EntityWrapper<County>().addFilter("county_id={0}", Long.parseLong(countyId)));
            Area area = areaService.selectOne(new EntityWrapper<Area>().addFilter("name={0}", county.getCountyName()));
            map.put("areaId", String.valueOf(area.getId()));
            map.put("areaName", province.getProvinceName() + city.getCityName() + county.getCountyName());
            return "sys/office/office_add";
        } else {
            return "sys/area/area_add";
        }
    }

    @RequestMapping(value = "/findAllArea")
    @ResponseBody
    public List<Tree> findAllProvince() {
        Tree tree;
        List<Tree> trees = new ArrayList<>();
        // 获得所有省份信息
        List<Province> provinces = provinceService.selectList(null);
        // 将省份信息转换成对应的JSON格式包装类并存入集合中
        for (Province province : provinces) {
            tree = new Tree(String.valueOf(province.getProvinceId()), "#", province.getProvinceName());
            trees.add(tree);
        }
        // 获取市级信息，并转换成JSON包装类存入集合
        List<City> cities = cityService.selectList(null);
        for (City city : cities) {
            tree = new Tree(String.valueOf(city.getCityId()), String.valueOf(city.getProvinceId()), city.getCityName());
            trees.add(tree);
        }
        // 获取县级信息，并转换成JSON包装类存入集合
        List<County> counties = countyService.selectList(null);
        for (County county : counties) {
            tree = new Tree(String.valueOf(county.getCountyId()), String.valueOf(county.getCityId()), county.getCountyName());
            trees.add(tree);
        }
        return trees;
    }

}
