package com.ctoangels.go.admin.modules.go.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.ctoangels.go.admin.controller.BaseController;
import com.ctoangels.go.common.modules.jsdd.entity.Consumer;
import com.ctoangels.go.common.modules.jsdd.entity.Report;
import com.ctoangels.go.common.modules.jsdd.entity.Works;
import com.ctoangels.go.common.modules.jsdd.entity.WorksLevel;
import com.ctoangels.go.common.modules.jsdd.service.IConsumerService;
import com.ctoangels.go.common.modules.jsdd.service.IReportService;
import com.ctoangels.go.common.modules.jsdd.service.IWorksLevelService;
import com.ctoangels.go.common.modules.jsdd.service.IWorksService;
import com.ctoangels.go.common.util.Const;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

/**
 *
 * Works 控制层
 *
 */
@Controller
@RequestMapping("works")
public class WorksController  extends BaseController {

    @Autowired
    private IWorksLevelService worksLevelService;

    @Autowired
    private IReportService reportService;

    @Autowired
    private IConsumerService consumerService;

    @Autowired
    private IWorksService worksService;



    @RequestMapping
    public String page() {
        return "jsdd/works/works_list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject list(Works works) {
        EntityWrapper<Works> ew = getEntityWrapper();
        ew.addFilter("status <> {0}",Const.WORKS_STATUS_DRAFT);
        if (!StringUtils.isEmpty(works.getName()))
            ew.addFilter("name={0}",works.getName());
       Page<Works> page = worksService.selectPage(getPage(), ew);
       for (Works w:page.getRecords()){
           Consumer collect = consumerService.selectOne(new EntityWrapper<>(new Consumer(Const.CONSUMER_TYPE_COLLECT,works.getId())));
           w.setCollector(collect.getName());
       }
        return jsonPage(page);
    }

    /**
     * 审核作品
     */
    @RequestMapping(value = "check",method = RequestMethod.POST)
    @ResponseBody
    public Boolean check(Works works) {
        return worksService.updateSelectiveById(new Works(works.getId(),works.getStatus()));

    }

    /**
     * 作品轮播
     */
    @RequestMapping(value = "slide",method = RequestMethod.POST)
    @ResponseBody
    public Boolean slide(Integer id,Integer slide) {
        Works works = new Works();
        works.setId(id);
        works.setSlide(slide);
        return worksService.updateSelectiveById(works);

    }

    @RequestMapping(value = "/level", method = RequestMethod.GET)
    public String level(@RequestParam Integer worksId, ModelMap map) {
        WorksLevel worksLevel = worksLevelService.selectOne(new WorksLevel(worksId));
        map.put("worksLevel", worksLevel);
        return "jsdd/works/level";
    }


    @RequestMapping(value = "/provider", method = RequestMethod.GET)
    public String provider(@RequestParam Integer worksId, ModelMap map) {
        Consumer provider = consumerService.selectOne(new Consumer(Const.CONSUMER_TYPE_PROVIDER,worksId));
        map.put("provider", provider);
        return "jsdd/works/provider";
    }

    @RequestMapping(value = "/collect", method = RequestMethod.GET)
    public String collect(@RequestParam Integer worksId, ModelMap map) {
        Consumer collect = consumerService.selectOne(new Consumer(Const.CONSUMER_TYPE_COLLECT,worksId));
        map.put("collect", collect);
        return "jsdd/works/collect";
    }


    @RequestMapping(value = "/report", method = RequestMethod.GET)
    public String toEdit(@RequestParam Integer worksId, ModelMap map) {
        Report works = reportService.selectOne(new Report(worksId));
        map.put("works", works);
        return "jsdd/works/report";
    }
}