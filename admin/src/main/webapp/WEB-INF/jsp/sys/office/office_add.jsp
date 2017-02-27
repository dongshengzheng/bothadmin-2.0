<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<form class="form-horizontal" action="office/add" method="post"
      id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>新增机构</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="parentId" class="col-sm-2 control-label">上级机构</label>
                <div class="col-sm-7">
                    <select class="form-control" id="parentId" name="parentId">
                        <option value="#">无</option>
                    </select>
                </div>
            </div>
            <div class="form-group">
                <label for="officeName" class="col-sm-2 control-label">机构名称</label>
                <div class="col-sm-7">
                    <input id="officeName" name="name" type="text" maxlength="32"
                           minlength="2" class="form-control required" placeholder="请输入机构名称">
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label">地区选择</label>
                <div class="col-sm-7">
                    <div class="input-group">
                        <input class="form-control" placeholder="请点击按钮进行选择" type="text" value="${areaName}" readonly>
                        <span class="input-group-btn">
                            <button data-url="area/add" data-model="dialog" class="btn btn-outline green"> 选择
                                <i class="fa fa-edit"></i>
                            </button>
                        </span>
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
    });
</script>