package com.ctoangels.go.common.modules.sys.controller;

import com.ctoangels.go.common.modules.sys.entity.Province;
import com.ctoangels.go.common.modules.sys.service.IProvinceService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;

/**
 * Province 控制层
 */
@Controller
@RequestMapping("/province")
public class ProvinceController extends BaseController {

    @Resource
    private IProvinceService provinceService;

    @RequestMapping(value = "/findAllProvince")
    @ResponseBody
    public List<Province> findAllProvince() {
        return provinceService.selectList(null);
    }
}