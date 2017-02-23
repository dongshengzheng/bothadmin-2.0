package com.ctoangels.go.common.modules.sys.service.impl;

import com.ctoangels.go.common.modules.sys.entity.Office;
import com.ctoangels.go.common.modules.sys.service.IOfficeService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
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
}