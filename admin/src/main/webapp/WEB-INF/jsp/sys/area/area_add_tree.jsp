<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<form class="form-horizontal" action="office/add" method="post" id="defForm" callfn="refreshTable">
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
            <div id="tree_body" class="portlet-body"></div>
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
    $("#defForm").validate();
    $(function () {
        $('#tree_body').jstree({
            'core': {
                'data': {
                    'url': 'area/findAllArea',
                    'data': function (result) {
                        alert(result);
                        return result;
                    }
                }
            },
            "types": {
                "default": {
                    "icon": "fa fa-folder icon-state-warning icon-lg"
                }
            },
            "plugins": ["types"]
        });
    });
</script>