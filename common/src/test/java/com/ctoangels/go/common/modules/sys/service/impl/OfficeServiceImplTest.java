package com.ctoangels.go.common.modules.sys.service.impl;

import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.*;
import com.ctoangels.go.common.modules.sys.service.*;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

/**
 * Created by xhj224 on 2017/2/23.
 * OfficeServiceImpl类的测试类
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring/spring-mybatis.xml")
public class OfficeServiceImplTest {
    @Resource
    private IOfficeService officeService;
    @Resource
    private IProvinceService provinceService;
    @Resource
    private ICityService cityService;
    @Resource
    private ICountyService countyService;
    @Resource
    private IAreaService areaService;

    /**
     * 测试获取所有Office的方法
     */
    @Test
    public void selectAllOffice() {
        List<Office> offices = officeService.selectList(null);
        if (offices != null) {
            offices.forEach(System.out::println);
        }
    }

    @Test
    public void find() {
        Area countyArea = areaService.selectById(1214);
        County county = countyService.selectOne(new EntityWrapper<County>().addFilter("county_name={0}", countyArea.getName()));

        Area cityArea = areaService.selectById(countyArea.getParentId());
        City city = cityService.selectOne(new EntityWrapper<City>().addFilter("city_name={0}", cityArea.getName()));

        Area provinceArea = areaService.selectById(cityArea.getParentId());
        Province province = provinceService.selectOne(new EntityWrapper<Province>().addFilter("province_name={0}", provinceArea.getName()));

        System.out.println(county);
        System.out.println(city);
        System.out.println(province);
    }

    // @Test
    public void insertProvinces() {
        List<Province> provinces = provinceService.selectList(null);
        Area provinceArea;
        for (Province province : provinces) {
            provinceArea = new Area("#", province.getProvinceId() + ",", province.getProvinceName(), new BigDecimal(1), String.valueOf(1), new Date(), String.valueOf(1), new Date(), String.valueOf(0));
            areaService.insert(provinceArea);
        }
    }

    // @Test
    public void insertCity() {
        List<Province> provinces = provinceService.selectList(null);
        for (Province province : provinces) {
            Area area = areaService.selectOne(new EntityWrapper<Area>().addFilter("parent_ids={0}", province.getProvinceId() + ","));
            List<City> cities = cityService.selectList(new EntityWrapper<City>().addFilter("province_id={0}", province.getProvinceId()));
            for (City city : cities) {
                Area area1 = new Area(area.getId().toString(), area.getParentIds() + city.getCityId() + ",", city.getCityName(), new BigDecimal(1), String.valueOf(1), new Date(), String.valueOf(1), new Date(), String.valueOf(0));
                areaService.insert(area1);
            }
        }
    }

    // @Test
    public void insertCounty() {
        List<Province> provinces = provinceService.selectList(null);
        for (Province province : provinces) {
            List<City> cities = cityService.selectList(new EntityWrapper<City>().addFilter("province_id={0}", province.getProvinceId()));
            for (City city : cities) {
                Area area = areaService.selectOne(new EntityWrapper<Area>().addFilter("parent_ids={0}", province.getProvinceId() + "," + city.getCityId() + ","));
                List<County> counties = countyService.selectList(new EntityWrapper<County>().addFilter("city_id={0}", city.getCityId()));
                for (County county : counties) {
                    Area area1 = new Area(area.getId().toString(), area.getParentIds() + county.getCountyId() + ",", county.getCountyName(), new BigDecimal(1), String.valueOf(1), new Date(), String.valueOf(1), new Date(), String.valueOf(0));
                    areaService.insert(area1);
                }
            }
        }
    }
}