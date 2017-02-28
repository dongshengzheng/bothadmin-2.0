package com.ctoangels.go.common.modules.sys.entity;

import com.baomidou.mybatisplus.annotations.IdType;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

import java.io.Serializable;

/**
 * 地区市数据库
 */
@TableName("position_county")
public class County implements Serializable {

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;

    /**
     * 地级市主键ID
     */
    @TableId(type = IdType.AUTO)
    private Integer id;

    /**
     * 地级市id
     */
    @TableField(value = "city_id")
    private Long cityId;

    /**
     * 县级id
     */
    @TableField(value = "county_id")
    private Long countyId;

    /**  */
    @TableField(value = "county_name")
    private String countyName;


    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Long getCityId() {
        return this.cityId;
    }

    public void setCityId(Long cityId) {
        this.cityId = cityId;
    }

    public Long getCountyId() {
        return this.countyId;
    }

    public void setCountyId(Long countyId) {
        this.countyId = countyId;
    }

    public String getCountyName() {
        return this.countyName;
    }

    public void setCountyName(String countyName) {
        this.countyName = countyName;
    }

    @Override
    public String toString() {
        return "County{" +
                "id=" + id +
                ", cityId=" + cityId +
                ", countyId=" + countyId +
                ", countyName='" + countyName + '\'' +
                '}';
    }
}
