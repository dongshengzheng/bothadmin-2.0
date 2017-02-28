<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<c:set var="base" value="${pageContext.servletContext.contextPath}"/>--%>
<form class="form-horizontal" action="area/add" method="post" id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>选择地区</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="provinceId" class="col-sm-3 control-label">省级市选择</label>
                <div class="col-sm-7">
                    <select class="form-control" id="provinceId" name="provinceId">
                        <option value="">请选择省级市</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="cityId" class="col-sm-3 control-label">地级市选择</label>
                <div class="col-sm-7">
                    <select class="form-control" id="cityId" name="cityId">
                        <option value="">请选择地级市</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="countyId" class="col-sm-3 control-label">县级市选择</label>
                <div class="col-sm-7">
                    <select class="form-control" id="countyId" name="countyId">
                        <option value="">请选择县级市</option>
                    </select>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <shiro:hasPermission name="area/add">
            <button type="submit" class="btn btn-primary">确定</button>
        </shiro:hasPermission>
    </div>
</form>
<script type="text/javascript">
    $("#defForm").validate();
    $(function () {
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
    });
</script>