package com.ctoangels.go.common.modules.sys.controller;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.Office;
import com.ctoangels.go.common.modules.sys.entity.State;
import com.ctoangels.go.common.modules.sys.entity.Tree;
import com.ctoangels.go.common.modules.sys.service.IOfficeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Office 控制层
 */
@Controller
@RequestMapping("/office")
public class OfficeController extends BaseController {

    private static Logger logger = LoggerFactory.getLogger(OfficeController.class);

    private final IOfficeService officeService;

    @Autowired
    public OfficeController(IOfficeService officeService) {
        this.officeService = officeService;
    }

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
    public JSONObject listMenu() {
        EntityWrapper<Office> ew = getEntityWrapper();
        ew.addFilter("parent_id={0}", "#");
        return jsonPage(officeService.selectPage(getPage(), ew));
    }
}