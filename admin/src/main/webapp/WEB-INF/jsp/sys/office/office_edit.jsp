<%--@elvariable id="office" type="com.ctoangels.go.common.modules.sys.entity.Office"--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form class="form-horizontal" action="office/add" method="post"
      id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>修改机构</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="parentId" class="col-sm-2 control-label">上级机构</label>
                <div class="col-sm-7">
                    <select class="form-control" id="parentId" name="parentId">
                        <option value="${office.parentId}">无</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <input type="hidden" name="id" value="${office.id}">
                <label for="officeName" class="col-sm-2 control-label">机构名称</label>
                <div class="col-sm-7">
                    <input id="officeName" name="name" type="text" maxlength="32"
                           minlength="2" class="form-control required" placeholder="请输入机构名称" value="${office.name}">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">地区选择</label>
                <div class="col-sm-7">
                    <%--<div class="input-group">--%>
                    <%--<input type="hidden" id="areaId" name="areaId" value="${areaId}">--%>
                    <%--<input id="areaName" name="areaName" class="form-control" placeholder="请点击按钮进行选择" type="text"--%>
                    <%--value="${areaName}" readonly>--%>
                    <%--<span class="input-group-btn">--%>
                    <%--<button id="selectBtn" data-url="area/add" data-model="dialog"--%>
                    <%--class="btn btn-outline green"> 选择--%>
                    <%--<i class="fa fa-edit"></i>--%>
                    <%--</button>--%>
                    <%--</span>--%>
                    <%--</div>--%>
                    <label for="provinceId" class="col-sm-4 control-label">省级市选择</label>
                    <div class="col-sm-7">
                        <select class="form-control" id="provinceId" name="provinceId">
                            <option value="">请选择省级市</option>
                        </select>
                    </div>
                    <label for="cityId" class="col-sm-4 control-label">地级市选择</label>
                    <div class="col-sm-7">
                        <select class="form-control" id="cityId" name="cityId">
                            <option value="">请选择地级市</option>
                        </select>
                    </div>
                    <label for="countyId" class="col-sm-4 control-label">县级市选择</label>
                    <div class="col-sm-7">
                        <select class="form-control" id="countyId" name="countyId">
                            <option value="">请选择县级市</option>
                        </select>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label for="code" class="col-sm-2 control-label">机构编码</label>
                <div class="col-sm-7">
                    <input id="code" name="code" type="text" maxlength="32"
                           minlength="2" class="form-control required" placeholder="请输入机构编码">
                </div>
            </div>
            <div class="form-group">
                <label for="type" class="col-sm-2 control-label">机构类型</label>
                <div class="col-sm-7">
                    <select class="form-control" id="type" name="type">
                        <option value="1"
                                <c:if test="${office.type == 1}">selected</c:if>>
                            公司
                        </option>
                        <option value="2"
                                <c:if test="${office.type == 2}">selected</c:if>>
                            部门
                        </option>
                        <option value="3"
                                <c:if test="${office.type == 3}">selected</c:if>>
                            小组
                        </option>
                        <option value="4"
                                <c:if test="${office.type == 4}">selected</c:if>>
                            其他
                        </option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="grade" class="col-sm-2 control-label">机构级别</label>
                <div class="col-sm-7">
                    <select class="form-control" id="grade" name="grade">
                        <option value="1"
                                <c:if test="${office.type == 1}">selected</c:if> >
                            一级
                        </option>
                        <option value="2"
                                <c:if test="${office.type == 2}">selected</c:if>>
                            二级
                        </option>
                        <option value="3"
                                <c:if test="${office.type == 3}">selected</c:if>>
                            三级
                        </option>
                        <option value="4"
                                <c:if test="${office.type == 4}">selected</c:if>>
                            四级
                        </option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="sort" class="col-sm-2 control-label">排序</label>
                <div class="col-sm-7">
                    <input id="sort" name="sort" type="text" maxlength="32"
                           minlength="2" class="form-control required" placeholder="请输入排序编号">
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <shiro:hasPermission name="office/add">
            <button type="submit" class="btn btn-primary">保存</button>
        </shiro:hasPermission>
    </div>
</form>
<script type="text/javascript">
    $(function () {
        // 通过jQuery.validation对表单内容进行前端验证
        $("#defForm").validate();

        $.ajax({
            type: 'GET',
            url: 'office/findAllOffice',
            dataType: 'json',
            error: function () {
                alert('处理失败');
            },
            success: function (result) {
                var html = '';
                for (var i = 0; i < result.length; i++) {
                    html += '<option value=' + result[i].id + '>' + result[i].text + "</option>";
                }
                $('#parentId').append(html);
            }
        });


        // 查找省级市
        $.ajax({
            type: 'GET',
            url: 'province/findAllProvince',
            error: function () {
                alert('处理失败');
            },
            success: function (result) {
                var html = '';
                for (var i = 0; i < result.length; i++) {
                    html += '<option value=' + result[i].provinceId + '>' + result[i].provinceName + "</option>";
                }
                $('#provinceId').append(html);
            }
        });
        // 查找地级市
        $('#provinceId').change(function () {
            $('#countyId').get(0).length = 1;
            $('#cityId').get(0).length = 1;
            var provinceId = $('#provinceId').val();
            $.ajax({
                type: 'GET',
                url: 'city/findAllCity',
                data: {'provinceId': provinceId},
                error: function () {
                    alert('处理失败');
                },
                success: function (result) {
                    var html = '';
                    for (var i = 0; i < result.length; i++) {
                        html += '<option value=' + result[i].cityId + '>' + result[i].cityName + "</option>";
                    }
                    $('#cityId').append(html);
                }
            });
        });
        // 查找县级市
        $('#cityId').change(function () {
            $('#countyId').get(0).length = 1;
            var cityId = $('#cityId').val();
            $.ajax({
                type: 'GET',
                url: 'county/findAllCounty',
                data: {'cityId': cityId},
                error: function () {
                    alert('处理失败');
                },
                success: function (result) {
                    var html = '';
                    for (var i = 0; i < result.length; i++) {
                        html += '<option value=' + result[i].countyId + '>' + result[i].countyName + "</option>";
                    }
                    $('#countyId').append(html);
                }
            });
        });
// $('#selectBtn').click(function () {
//     $.ajax({
//         type: 'GET',
//         url: 'area/add',
//         error: function () {
//             alert('处理失败');
//         },
//         success: function (result) {
//
//         }
//     });
// });
    });
</script>