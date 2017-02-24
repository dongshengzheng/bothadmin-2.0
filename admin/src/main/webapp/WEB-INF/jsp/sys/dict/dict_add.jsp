<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<form class="form-horizontal" action="dict/add" method="post"
      id="defForm" callfn="refreshTable">
    <div class="modal-header">
        <div class='bootstrap-dialog-header'>
            <div class='bootstrap-dialog-close-button'
                 style='display: block;'>
                <button class='close' data-dismiss='modal' aria-label='Close'>×</button>
            </div>
            <div class='bootstrap-dialog-title'>新增字典</div>
        </div>
    </div>
    <div class="modal-body">
        <div class="container-fluid">
            <div class="form-group">
                <label for="type" class="col-sm-2 control-label">字典类型</label>
                <div class="col-sm-7">
                    <input id="type" name="type" value="${dict.type}"
                           type="text" maxlength="32" minlength="2"
                           class="form-control required" placeholder="请输入字典类型">
                </div>
            </div>
            <div class="form-group">
                <label for="value" class="col-sm-2 control-label">数据值</label>
                <div class="col-sm-7">
                    <input id="value" name="value" value="${dict.value}"
                           type="text" maxlength="32"
                           class="form-control required" placeholder="请输入数据值">
                </div>
            </div>
            <div class="form-group">
                <label for="label" class="col-sm-2 control-label">字典标签</label>
                <div class="col-sm-7">
                    <input id="label" name="label" type="text" maxlength="32"
                           minlength="2" class="form-control required" placeholder="请输入字典标签">
                </div>
            </div>
            <div class="form-group">
                <label for="sort" class="col-sm-2 control-label">排序值</label>
                <div class="col-sm-7">
                    <input id="sort" name="sort" type="text" maxlength="32"
                           minlength="1" class="form-control required" placeholder="请输入排序值">
                </div>
            </div>

            <div class="form-group">
                <label for="description" class="col-sm-2 control-label">描述</label>
                <div class="col-sm-7">
					<textarea id="description" name="description" class="form-control"
                              rows="3"></textarea>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
        <shiro:hasPermission name="dict/add">
            <button type="submit" class="btn btn-primary">保存</button>
        </shiro:hasPermission>
    </div>
</form>
<script type="text/javascript">
    $("#defForm").validate({
        rules:{
            value:{
                digits:true,
                required:true
            },
            sort:{
                digits:true,
            }
        },
        messages:{
            value:{
                digits:"请输入数字",
                required:"数据值必填"
            },
            sort:{
                digits:"请输入数字",
            }
        }
    });
</script>