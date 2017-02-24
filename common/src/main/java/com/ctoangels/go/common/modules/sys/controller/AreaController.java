package com.ctoangels.go.common.modules.sys.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by xhj224 on 2017/2/24.
 */
@Controller
@RequestMapping("/area")
public class AreaController extends BaseController {

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAdd() {
        return "sys/area/area_add";
    }
}
