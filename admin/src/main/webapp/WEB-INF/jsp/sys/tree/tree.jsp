<%--
  Created by IntelliJ IDEA.
  User: xhj224
  Date: 2017/2/23
  Time: 17:51
  创建树状图的代码片段
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="col-md-3">
    <div class="portlet light bordered">
        <div class="portlet-title">
            <div class="caption">
                <i class="font-blue-sharp"></i>
                <span class="caption-subject font-blue-sharp bold uppercase">机构管理</span>
            </div>
        </div>
        <div id="tree_body" class="portlet-body">
        </div>
    </div>
</div>
<script>
    $(function () {
        // 通过ajax创建树状图
        $('#tree_body').jstree({
            'core': {
                'data': {
                    'url': 'office/findAllOffice',
                    'data': function (result) {
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
