<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<style>
    .timeline .timeline-icon {
        padding: 0;
        text-align: center;
        line-height: 80px
    }

    .col-sm-3.control-label {
        padding-left: 5px;
        padding-right: 5px;
    }
</style>
<go:navigater path="ship"></go:navigater>
<form class="form-horizontal" action="ship/edit" method="post"
      id="defForm" callfn="refreshTable">
    <div class="row">
        <div class="col-md-12">
            <div class="portlet light portlet-fit bordered">
                <div class="portlet-title tabbable-line">
                    <div class="caption caption-md">
                        <i class="icon-microphone font-green"></i>
                        <span class="caption-subject bold font-green uppercase"> 查看船舶信息</span>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="timeline">
                        <div class="timeline-item">
                            <div class="timeline-badge">
                                <div class="timeline-icon" style="">
                                    概要信息
                                </div>
                            </div>
                            <div class="timeline-body">
                                <div class="timeline-body-arrow"></div>
                                <div class="timeline-body-content">
                                    <div class="form-group col-md-6">
                                        <label for="name" class="col-sm-3 control-label">船舶名称</label>
                                        <div class="col-sm-6">
                                            <input disabled id="name" name="name" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.name}"
                                                   placeholder="暂无船舶名称">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="builder" class="col-sm-3 control-label">建造船厂</label>
                                        <div class="col-sm-6">
                                            <input disabled id="builder" name="builder" type="text" maxlength="32"
                                                   class="form-control" value="${ship.builder}"
                                                   placeholder="暂无建造船厂">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="imo" class="col-sm-3 control-label">IMO</label>
                                        <div class="col-sm-6">
                                            <input disabled id="imo" name="imo" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.imo}"
                                                   placeholder="暂无IMO">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="buildYear" class="col-sm-3 control-label">建造日期</label>
                                        <div class="col-sm-6">
                                            <div class="input-group">
                                                <input disabled id="buildYear" name="buildYear" type="text"
                                                       class="form-control date-picker"
                                                       value="<fmt:formatDate value='${ship.buildYear}'
                        pattern="yyyy-MM-dd"/>"
                                                       placeholder="暂无建造日期">
                                                <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="shipClass" class="col-sm-3 control-label">船级社</label>
                                        <div class="col-sm-6">
                                            <input disabled id="shipClass" name="shipClass" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.shipClass}"
                                                   placeholder="暂无船级社">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="callSign" class="col-sm-3 control-label">船舶呼号</label>
                                        <div class="col-sm-6">
                                            <input disabled id="callSign" name="callSign" type="text" maxlength="32"
                                                   class="form-control " value="${ship.callSign}"
                                                   placeholder="暂无船舶呼号">
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <label for="type" class="col-sm-3 control-label">船舶类型</label>
                                        <div class="col-sm-6">
                                            <input disabled id="type" name="type" type="text" maxlength="32"
                                                   class="form-control required" value="${ship.type}"
                                                   placeholder="暂无船舶类型">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        船体信息
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="loa" class="col-sm-3 control-label">船长</label>
                                            <div class="col-sm-6">
                                                <input disabled id="loa" name="loa" type="text" maxlength="32"
                                                       class="form-control required" value="${ship.loa}"
                                                       placeholder="暂无船长">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="draft" class="col-sm-3 control-label">吃水</label>
                                            <div class="col-sm-6">
                                                <input disabled id="draft" name="draft" type="text" maxlength="32"
                                                       class="form-control required" value="${ship.draft}"
                                                       placeholder="暂无吃水深度">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:米)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="beam" class="col-sm-3 control-label">船宽</label>
                                            <div class="col-sm-6">
                                                <input disabled id="beam" name="beam" type="text" maxlength="32"
                                                       class="form-control required" value="${ship.beam}"
                                                       placeholder="暂无船宽长度">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:米)</label>

                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="dwt" class="col-sm-3 control-label">载重吨</label>
                                            <div class="col-sm-6">
                                                <input disabled id="dwt" name="dwt" type="text" maxlength="32"
                                                       class="form-control " value="${ship.dwt}"
                                                       placeholder="暂无载重吨">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:吨)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="depth" class="col-sm-3 control-label">型深</label>
                                            <div class="col-sm-6">
                                                <input disabled id="depth" name="depth" type="text" maxlength="32"
                                                       class="form-control " value="${ship.depth}"
                                                       placeholder="暂无型深">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:米)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="gt" class="col-sm-3 control-label">总吨</label>
                                            <div class="col-sm-6">
                                                <input disabled id="gt" name="gtt" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship['gt']}"
                                                       placeholder="暂无总吨">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:吨)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="dd" class="col-sm-3 control-label">坞检</label>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                    <input disabled id="dd" name="dd" type="text"
                                                           class="form-control date-picker"
                                                           value="${ship.dd}"
                                                           placeholder="暂无坞检日期">
                                                    <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="ss" class="col-sm-3 control-label">特检</label>
                                            <div class="col-sm-6">
                                                <div class="input-group">
                                                    <input disabled id="ss" name="ss" type="text"
                                                           class="form-control date-picker"
                                                           value="${ship.ss}"
                                                           placeholder="暂无特检日期">
                                                    <span class="input-group-addon">
                                                                            <i class="fa fa-calendar"></i>
                                                                        </span></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        设备信息
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze">主机</span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="meMaker" class="col-sm-3 control-label">厂家</label>
                                            <div class="col-sm-6">
                                                <input disabled id="meMaker" name="meMaker" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meMaker}"
                                                       placeholder="暂无厂家名称">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meType" class="col-sm-3 control-label">型号</label>
                                            <div class="col-sm-6">
                                                <input disabled id="meType" name="meType" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meType}"
                                                       placeholder="暂无型号">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meBhpRpm" class="col-sm-3 control-label">马力/转速</label>
                                            <div class="col-sm-6">
                                                <input disabled id="meBhpRpm" name="meBhpRpm" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meBhpRpm}"
                                                       placeholder="暂无马力/转速">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meQty" class="col-sm-3 control-label">数量</label>
                                            <div class="col-sm-6">
                                                <input disabled id="meQty" name="meQty" type="text" maxlength="32"
                                                       class="form-control " value="${ship.meQty}"
                                                       placeholder="暂无数量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:台)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="meCylBore" class="col-sm-3 control-label">缸径</label>
                                            <div class="col-sm-6">
                                                <input disabled id="meCylBore" name="meCylBore" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.meCylBore}"
                                                       placeholder="暂无缸径">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:毫米)</label>
                                        </div>
                                    </div>
                                </div>

                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze">辅机</span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="auxMaker" class="col-sm-3 control-label">厂家</label>
                                            <div class="col-sm-6">
                                                <input disabled id="auxMaker" name="auxMaker" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxMaker}"
                                                       placeholder="暂无厂家名称">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxType" class="col-sm-3 control-label">型号</label>
                                            <div class="col-sm-6">
                                                <input disabled id="auxType" name="auxType" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxType}"
                                                       placeholder="暂无型号">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxRatedOr" class="col-sm-3 control-label">额定功率</label>
                                            <div class="col-sm-6">
                                                <input disabled id="auxRatedOr" name="auxRatedOr" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxRatedOr}"
                                                       placeholder="暂无额定功率">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:千瓦)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxQty" class="col-sm-3 control-label">数量</label>
                                            <div class="col-sm-6">
                                                <input disabled id="auxQty" name="auxQty" type="text" maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxQty}"
                                                       placeholder="暂无数量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:台)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="auxCylBore" class="col-sm-3 control-label">缸径</label>
                                            <div class="col-sm-6">
                                                <input disabled id="auxCylBore" name="auxCylBore" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.auxCylBore}"
                                                       placeholder="暂无缸径">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:毫米)</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <span class="timeline-body-alerttitle font-green-haze">锅炉</span>
                                        </div>
                                    </div>
                                    <div class="timeline-body-content">
                                        <div class="form-group col-md-6">
                                            <label for="boilerMaker" class="col-sm-3 control-label">厂家</label>
                                            <div class="col-sm-6">
                                                <input disabled id="boilerMaker" name="boilerMaker" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerMaker}"
                                                       placeholder="暂无厂家名称">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerType" class="col-sm-3 control-label">型号</label>
                                            <div class="col-sm-6">
                                                <input disabled id="boilerType" name="boilerType" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerType}"
                                                       placeholder="暂无型号">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerPressure" class="col-sm-3 control-label">工作压力</label>
                                            <div class="col-sm-6">
                                                <input disabled id="boilerPressure" name="boilerPressure" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerPressure}"
                                                       placeholder="暂无工作压力">
                                            </div>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerQty" class="col-sm-3 control-label">数量</label>
                                            <div class="col-sm-6">
                                                <input disabled id="boilerQty" name="boilerQty" type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerQty}"
                                                       placeholder="暂无数量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:台)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerHeatingArea" class="col-sm-3 control-label">热交换面积</label>
                                            <div class="col-sm-6">
                                                <input disabled id="boilerHeatingArea" name="boilerHeatingArea"
                                                       type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerHeatingArea}"
                                                       placeholder="暂无热交换面积">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:平方米)</label>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <label for="boilerEvaporation" class="col-sm-3 control-label">蒸发量</label>
                                            <div class="col-sm-6">
                                                <input disabled id="boilerEvaporation" name="boilerEvaporation"
                                                       type="text"
                                                       maxlength="32"
                                                       class="form-control "
                                                       value="${ship.boilerEvaporation}"
                                                       placeholder="暂无蒸发量">
                                            </div>
                                            <label class="col-sm-3 control-label">(单位:吨/时)</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="timeline-item">
                                <div class="timeline-badge">
                                    <div class="timeline-icon">
                                        完成
                                    </div>
                                </div>
                                <div class="timeline-body">
                                    <div class="timeline-body-arrow"></div>
                                    <div class="timeline-body-head">
                                        <div class="timeline-body-head-caption">
                                            <a href="ship" type="button" class="btn btn-default" data-target="navTab">返回
                                            </a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
    <!-- BEGIN QUICK SIDEBAR -->
</form>
