package com.ctoangels.go.common.modules.sys.entity;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;

/**
 *
 *
 *
 */
@TableName("sys_user_office")
public class UserOffice implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**  */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**  */
    @TableField(value = "user_id")
    private Integer userId;

    /**  */
    @TableField(value = "office_id")
    private Integer officeId;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return this.userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getOfficeId() {
        return this.officeId;
    }

    public void setOfficeId(Integer officeId) {
        this.officeId = officeId;
    }

    @Override
    public String toString() {
        return "UserOffice{" +
                "id=" + id +
                ", userId=" + userId +
                ", officeId=" + officeId +
                '}';
    }
}
