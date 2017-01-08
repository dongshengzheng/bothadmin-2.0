package com.ctoangels.go.common.modules.jsdd.entity;

import java.io.Serializable;
import java.util.Date;

import com.baomidou.mybatisplus.annotations.IdType;

import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;

/**
 *
 *
 *
 */
@TableName("dd_working_progress")
public class WorkingProgress implements Serializable {

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

	/** 作品加工状态id */
	@TableId(type = IdType.AUTO)
	private Integer id;

	/**  */
	@TableField(value = "works_id")
	private Integer worksId;

	/**  */
	private String description;

	/**  */
	private String picture;

	/**  */
	private String percent;

	/** 加工者 */
	@TableField(value = "user_id")
	private Integer userId;

	/** 创建时间 */
	@TableField(value = "create_date")
	private Date createDate;

	/** 更新时间 */
	@TableField(value = "update_date")
	private Date updateDate;

	/** 创建者 */
	@TableField(value = "create_by")
	private Integer createBy;

	/** 更新者 */
	@TableField(value = "update_by")
	private Integer updateBy;

	/** 逻辑删除标记（0：显示；1：隐藏） */
	@TableField(value = "del_flag")
	private Integer delFlag;


	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getWorksId() {
		return this.worksId;
	}

	public void setWorksId(Integer worksId) {
		this.worksId = worksId;
	}

	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPicture() {
		return this.picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getPercent() {
		return this.percent;
	}

	public void setPercent(String percent) {
		this.percent = percent;
	}

	public Integer getUserId() {
		return this.userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public Date getUpdateDate() {
		return this.updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

	public Integer getCreateBy() {
		return this.createBy;
	}

	public void setCreateBy(Integer createBy) {
		this.createBy = createBy;
	}

	public Integer getUpdateBy() {
		return this.updateBy;
	}

	public void setUpdateBy(Integer updateBy) {
		this.updateBy = updateBy;
	}

	public Integer getDelFlag() {
		return this.delFlag;
	}

	public void setDelFlag(Integer delFlag) {
		this.delFlag = delFlag;
	}

}
