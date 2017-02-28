package com.ctoangels.go.common.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.*;
import com.ctoangels.go.common.modules.sys.service.*;
import com.ctoangels.go.common.util.Const;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Office 控制层
 */
@Controller
@RequestMapping("/office")
public class OfficeController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(OfficeController.class);

    @Resource
    private IOfficeService officeService;
    @Resource
    private IAreaService areaService;
    @Resource
    private IProvinceService provinceService;
    @Resource
    private ICityService cityService;
    @Resource
    private ICountyService countyService;

    /**
     * 创建树状图所用到的方法
     *
     * @return 基于jztree JSON格式的JSON集合
     */
    @RequestMapping(value = "/findAllOffice", method = RequestMethod.GET)
    @ResponseBody
    public List<Tree> findOffice() {
        List<Office> offices = officeService.selectList(null);
        List<Tree> trees = new ArrayList<>();
        Tree tree;
        State state;
        if (offices != null) {
            for (Office office : offices) {
                tree = new Tree(office.getId(), office.getParentId(), office.getName());
                state = new State(true, false, false);
                tree.setState(state);
                trees.add(tree);
            }
        }
        return trees;
    }

    @RequestMapping
    public String page() {
        return "sys/office/office_list";
    }

    @RequestMapping(value = "/list")
    @ResponseBody
    public JSONObject listMenu(Office office) {
        EntityWrapper<Office> ew = getEntityWrapper();
        if (!StringUtils.isEmpty(office.getParentId())) {
            ew.addFilter("parent_id={0}", office.getParentId());
        } else {
            ew.addFilter("parent_id={0}", "#");
        }
        return jsonPage(officeService.selectPage(getPage(), ew));
    }

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public String toAdd() {
        return "sys/office/office_add";
    }

    @RequestMapping(value = "/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject add(String parentId, String name, String provinceId, String cityId, String countyId, String code, String type, String grade, String sort) {
        County county = countyService.selectOne(new EntityWrapper<County>().addFilter("county_id={0}", Long.parseLong(countyId)));
        Area area = areaService.selectOne(new EntityWrapper<Area>().addFilter("name={0}", county.getCountyName()));
        int areaId = area.getId();
        Office superiorOffice = officeService.selectById(parentId);
        String parentIds = superiorOffice.getParentIds() + superiorOffice.getId() + ",";
        Office office = new Office(parentId, parentIds, name, new BigDecimal(sort), String.valueOf(areaId), type, grade, String.valueOf(1), new Date(), String.valueOf(1), new Date());
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("status", 1);
        office.setDelFlag(String.valueOf(Const.DEL_FLAG_NORMAL));
        office.setCode(code);
        officeService.insert(office);
        return jsonObject;
    }

    @RequestMapping(value = "/delete")
    @ResponseBody
    public JSONObject delete(@RequestParam Integer id) {
        officeService.deleteById(id);
        JSONObject jsonObject = new JSONObject();
        jsonObject.put("status", 1);
        return jsonObject;
    }
}