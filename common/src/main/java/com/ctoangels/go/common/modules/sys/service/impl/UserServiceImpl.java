package com.ctoangels.go.common.modules.sys.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.baomidou.framework.service.impl.SuperServiceImpl;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.ctoangels.go.common.modules.sys.entity.*;
import com.ctoangels.go.common.modules.sys.mapper.*;
import com.ctoangels.go.common.modules.sys.service.UserService;
import com.ctoangels.go.common.util.Const;
import org.apache.commons.lang.StringUtils;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.subject.Subject;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author Sun.Han
 * @version 1.0
 * @FileName UserServiceImpl.java
 * @Description:
 * @Date 2015年5月9日
 */
@Transactional(readOnly = true)
@Service
public class UserServiceImpl extends SuperServiceImpl<UserMapper, User> implements UserService {
    @Resource
    private UserMapper userMapper;
    @Resource
    private RoleMapper roleMapper;
    @Resource
    private UserRoleMapper userRoleMapper;
    @Resource
    private OfficeMapper officeMapper;
    @Resource
    private UserOfficeMapper userOfficeMapper;

    public List<Role> getRoles(Integer userId) {
        // 确定查找条件
        Map<String, Object> map = new HashMap<>();
        map.put("del_flag", 0);
        map.put("allocatable", 1);
        // 查找所有未删除且可分配的角色
        List<Role> roles = roleMapper.selectByMap(map);

        // 确定查找userRole的条件
        map = new HashMap<>();
        map.put("user_id", userId);
        // 根据用户ID找到对应的userRole集合
        List<UserRole> userRoles = userRoleMapper.selectByMap(map);

        for (Role role : roles) {
            for (UserRole userRole : userRoles) {
                if (role.getId().equals(userRole.getRoleId())) {
                    role.setChecked(true);
                    break;
                }
            }
        }
        return roles;
    }

    @Override
    public List<Office> getOffices(Integer userId) {
        // Map<String, Object> map = new HashMap<>();
        // map.put("USEABLE", 1);
        // map.put("del_flag", 0);
        // List<Office> offices = officeMapper.selectByMap(map);
        // EntityWrapper<Office> ew = new EntityWrapper<>();
        // ew.addFilter("USEABLE={0}", 1);
        // ew.addFilter("del_flag={0}", 0);
        // ew.addFilter("parent_id!={0}", "#");
        List<Office> offices = officeMapper.searchSubdivision();

        // map = new HashMap<>();
        // map.put("user_id", userId);
        List<UserOffice> userOffices = userOfficeMapper.selectList(new EntityWrapper<UserOffice>().addFilter("user_id={0}", userId));
        for (Office office : offices) {
            for (UserOffice userOffice : userOffices) {
                if (office.getId().equals(userOffice.getOfficeId().toString())) {
                    office.setChecked(true);
                    break;
                }
            }
        }
        return offices;
    }

    public void editRole(User user) {
        String roleIds = user.getRoleIds();
        Map<String, Object> map = new HashMap<>();
        Integer userId = user.getId();
        map.put("user_id", userId);
        if (StringUtils.isNotBlank(roleIds)) {
            List<UserRole> list = new ArrayList<>();
            String[] roleIdArr = roleIds.split(",");
            for (String roleId : roleIdArr) {
                UserRole userRole = new UserRole();
                userRole.setUserId(userId);
                userRole.setRoleId(Integer.valueOf(roleId));
                list.add(userRole);
            }
            userRoleMapper.deleteByMap(map);
            userRoleMapper.insertBatch(list);
        } else {
            userRoleMapper.deleteByMap(map);
        }
    }

    @Override
    public void editOffice(User user) {
        String officeIds = user.getOfficeIds();
        Map<String, Object> map = new HashMap<>();
        Integer userId = user.getId();
        map.put("user_id", userId);
        if (StringUtils.isNotBlank(officeIds)) {
            List<UserOffice> userOffices = new ArrayList<>();
            String[] officeIdArr = officeIds.split(",");
            for (String officeId : officeIdArr) {
                UserOffice userOffice = new UserOffice();
                userOffice.setUserId(userId);
                userOffice.setOfficeId(Integer.valueOf(officeId));
                userOffices.add(userOffice);
            }
            userOfficeMapper.deleteByMap(map);
            userOfficeMapper.insertBatch(userOffices);
        } else {
            userOfficeMapper.deleteByMap(map);
        }
    }

    @Override
    public void editRole(String userId, String roleIds) {
        if (StringUtils.isNotBlank(userId) && StringUtils.isNotBlank(roleIds)) {
            List<UserRole> list = new ArrayList<>();
            String[] roleIdArr = roleIds.split(",");
            for (String roleId : roleIdArr) {
                UserRole userRole = new UserRole();
                userRole.setUserId(Integer.parseInt(userId));
                userRole.setRoleId(Integer.valueOf(roleId));
                list.add(userRole);
            }
            Map<String, Object> map = new HashMap<>();
            map.put("user_id", userId);
            userRoleMapper.deleteByMap(map);
            userRoleMapper.insertBatch(list);
        }
    }

    public boolean isNameExist(String loginName) {
        User user = new User();
        user.setLoginName(loginName);
        user.setDelFlag(Const.DEL_FLAG_NORMAL);
        int count = userMapper.selectCount(user);
        return count > 0;
    }

    public JSONObject editPassword(String password, String oldPassword) {
        JSONObject result = new JSONObject();
        Subject subject = SecurityUtils.getSubject();
        User sessionUser = (User) subject.getSession().getAttribute(Const.SESSION_USER);

        User user = userMapper.selectById(sessionUser.getId());
        String loginName = user.getLoginName();
        String encodePwd = new SimpleHash("SHA-1", loginName, oldPassword).toString();
        if (user.getPassword().equals(encodePwd)) {
            User newer = new User();
            newer.setPassword(new SimpleHash("SHA-1", loginName, password).toString());
            newer.setId(sessionUser.getId());
            userMapper.updateSelectiveById(newer);
            result.put("status", 1);
        } else {
            result.put("status", 0);
            result.put("msg", "原密码错误");
        }
        return result;
    }

    @Override
    public List<User> searchUsersByName(String name, Integer myId) {
        return userMapper.searchUsersByName(name, myId);
    }

    @Override
    public User searchMyInfo(Integer myId) {
        return userMapper.searchMyInfo(myId);
    }

    @Override
    public List<User> searchFocusById(Integer id) {
        return userMapper.searchFocusById(id);
    }

    @Override
    public List<User> searchUserByNameAndId(String info, Integer myId) {
        return userMapper.searchUserByNameAndId(info, myId);
    }

    @Override
    public List<User> searchFollowUsersByUserId(Integer id) {
        return userMapper.searchFollowUsersByUserId(id);
    }

    @Override
    public List<User> searchFollowHistoryUsers(Integer followHistoryType, Integer targetId) {
        return userMapper.searchFollowHistoryUsers(followHistoryType, targetId);
    }

}
