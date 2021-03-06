<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    .form-control{
        height: 28px;
        margin-top: 5px;
        width:100%;
    }
    .control-label{
        margin-top: 7px;
    }
    #line1{  border-bottom:solid 2px #337ab7; height:1px;margin-top: 10px  }
    .head{background-color: #C0C9CC;font-size: 20px  }

</style>
<go:navigater path="repairSpec"></go:navigater>
<div>
    <div id="line1"></div>
    <div style="height:40px;width: 100%;background-color: #C0C9CC" >
        <div class="timeline-body-content">
            <div class="form-group col-md-3">
                <label for="name" class="col-sm-4 control-label">船名：</label>
                <div class="col-sm-7">
                    <input id="name" name="name" type="text" maxlength="32"
                           class="form-control required">
                </div>
            </div>
            <div class="form-group col-md-3">
                <label for="builder" class="col-sm-6 control-label">项目分类：</label>
                <div class="col-sm-6">
                    <input id="builder" name="builder" type="text" maxlength="32"
                           class="form-control ">
                </div>
            </div>
            <div class="form-group col-md-3">
                <label for="imo" class="col-sm-6 control-label">项目号：</label>
                <div class="col-sm-6">
                    <input id="imo" name="imo" type="text" maxlength="32"
                           class="form-control required">
                </div>
            </div>
            <div class="form-group col-md-3">
                <label for="shipClass" class="col-sm-6 control-label">项目单号：</label>
                <div class="col-sm-6">
                    <input id="shipClass" name="shipClass" type="text" maxlength="32"
                           class="form-control required">
                </div>
            </div>
        </div>
    </div>
    <div class="row" >
        <div style="margin-top: 5px;border-right: dashed 1px #337ab7;" class="col-md-8">
            <div style="width: 100%;">
                <div ><span style="background-color: #C0C9CC;font-size: 20px">工程项目描述</span></div>
                <div style="margin-left: 20px">工程名称：<input type="text" name=""/></div>
                <div style="margin-left: 20px">工程描述： </div>
                <div class="form-group" style="margin-left: 20px">
                    <textarea class="form-control" rows="3"></textarea>
                </div>
            </div>
            <div style="width: 100%;">
                <div ><span class="head">设备信息</span></div>
                <div class="col-md-6">
                    <div class="form-group col-md-12">
                        <label for="name" class="col-sm-6 control-label">设备名称:</label>
                        <div class="col-sm-6">
                            <input id="ss" name="buildYear" type="text"
                                   class="">
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="builder" class="col-sm-6 control-label">设备型号:</label>
                        <div class="col-sm-6">
                            <input id="s1s" name="buildYear" type="text"
                                   class="">
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="imo" class="col-sm-6 control-label">厂家/国家:</label>
                        <div class="col-sm-6">
                            <input id="ss2" name="buildYear" type="text"
                                   class="">
                        </div>
                    </div>
                    <div class="form-group col-md-12">
                        <label for="ss3" class="col-sm-6 control-label">序列号:</label>
                        <div class="col-sm-6">
                            <input id="ss3" name="buildYear" type="text"
                                   class="">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group" style="margin-left: 20px">
                        <label>相关参数</label>
                        <textarea class="form-control" rows="7"></textarea>
                    </div>
                </div>
            </div>
            <div style="width: 100%;">
                <div ><span class="head">维修部位</span></div>
                <div class="form-group col-md-8">
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 甲板
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 机舱
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 货舱
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 泵舱
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 机舱棚
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 压载舱
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 驾驶室
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 舵机舱
                            <span></span>
                        </label>
                    </div>

                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 集控室
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 货控室
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 艏楼区域
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 罗经甲板
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 上建
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 船艉
                            <span></span>
                        </label>
                    </div>
                    <div class="form-group col-md-3">
                        <label class="mt-checkbox">
                            <input type="checkbox" id="" value="option1"> 其他请填
                            <span></span>
                        </label>
                    </div>
                </div>
                <div class="form-group col-md-4">
                    <div class="form-group" style="margin-left: 20px">
                        <textarea class="form-control" rows="10" placeholder="请输入详细位置"></textarea>
                    </div>
                </div>
            </div>
            <div style="width: 100%;">
                <div ><span class="head">损坏程度</span></div>
                <textarea class="form-control" rows="4"></textarea>
            </div>
        </div>
        <div class="col-md-3" style="border: 1px dashed #337ab7;margin-left: 10px">
            <p>插入图片或图纸</p>
            <img id="logo-img"
                 src="http://windyeel.img-cn-shanghai.aliyuncs.com/${company.logo}?x-oss-process=image/resize,m_fill,h_100,w_100"
                 style="display: block;width: 50%;height: 50%"
                 onerror="nofind(1)"/>
            <input type="hidden" id="logo" name="logo" value="${company.logo}">
            <br>
            <button id="upload_logo" class="btn blue" type="button"><i class="fa fa-tv"></i> 本地上传</button>
        </div>

    </div>
    <div style="width: 100%;margin-top: 10px">
        <div ><span class="head">请求材料规格</span></div>
        <table class="table table-striped table-bordered table-hover table-checkable order-column"
               id="default_table" width="90%" >
            <thead>
            <tr style="background-color: #8CD2E5">
                <th style="width: 70%">要求和描述/材料规格</th>
                <th>单位</th>
                <th>数量</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><textarea style="width: 100%;height: 100%"></textarea> </td>
                <td><input type="text" style="height: 100%;height: 100%"></td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>
            <tr>
                <td><input type="text"></td>
                <td><input type="text"></td>
                <td><input type="text"></td>
            </tr>

            </tbody>
        </table>
    </div>
    <div style="width: 100%;margin-top: 10px">
        <div ><span class="head">修理工艺</span></div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 动火
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 脚手架
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 吊车运输
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 功能测试
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 化学清洗
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 船厂提供螺栓螺母及垫片等材料
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 补漆
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 提供照明
                    <span></span>
                </label>
            </div>

            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 清舱除气
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 拆装花钢板地格栅
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 布置安全通道
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 需船厂提供维修场地
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 清洁
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 提供通风
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 压力测试
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 拆装栏杆等铁舾件
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 船东提供材料
                    <span></span>
                </label>
            </div>
            <div class="form-group col-md-3">
                <label class="mt-checkbox">
                    <input type="checkbox" id="" value="option1"> 其它请填
                    <span></span>
                </label>
            </div>
            <div class="form-group" style="margin-left: 20px">
                <textarea class="form-control" rows="6" placeholder="请填写修理工艺"></textarea>
            </div>
    </div>
</div>
<div class="form-actions">
    <div class="row">
        <div class="col-md-offset-3 col-md-9">
            <button type="button" class="btn green">保存</button>
            <button type="button" class="btn blue">提交</button>
            <button type="button" class="btn red">删除</button>
            <button type="button" class="btn default">重置</button>
            <button type="button" class="btn green">保存为工程单范本</button>
        </div>
    </div>
</div>