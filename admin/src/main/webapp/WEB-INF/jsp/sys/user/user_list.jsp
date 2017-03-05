<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="user"></go:navigater>

<div class="row">
    <%--<jsp:include page="../tree/tree.jsp"/>--%>
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
    <div class="col-md-9">
        <div class="portlet light bordered">
            <div class="portlet-body">
                <div class="table-toolbar">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="btn-group">
                                <shiro:hasPermission name="user/add">
                                    <button data-url="user/add" data-model="dialog"
                                            class="btn btn-outline btn-circle btn-sm green"> 新增
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </shiro:hasPermission>
                                <shiro:hasPermission name="user/batchDelete">

                                    <button data-url="user/batchDelete" data-msg="确定批量删除吗？"
                                            data-model="ajaxToDo"
                                            class="btn btn-outline btn-circle btn-sm green"
                                            data-checkbox-name="chx_default" data-callback="refreshTable">批量删除
                                        <i class="fa fa-times"></i>
                                    </button>
                                </shiro:hasPermission>
                            </div>
                        </div>
                        <div class="col-md-6">
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-bordered table-hover table-checkable order-column"
                       id="default_table">
                    <thead>
                    <tr>
                        <th width="10px">
                            <input type='checkbox' id="defaultCheck"/>
                        </th>
                        <th>用户名</th>
                        <th>姓名</th>
                        <th>邮箱</th>
                        <th>电话</th>
                        <th>最近登录</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    var defTable;
    var tree = $('#tree_body');
    var r;
    $(document).ready(function () {
        defTable = $('#default_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "autoWidth": false,
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "user/list",
                "type": "post",
                "data": function (data) {
                    data.keyword = $("#keyword").val();
                    data.id = r;
                }
            },
            "language": {
                "url": "<%=basePath%>assets/global/plugins/datatables/cn.txt"
            },
            "createdRow": function (row, data, index) {
                $('td:eq(0)', row).html("<input type='checkbox' name='chx_default' value='" + data.id + "'/>");
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {"data": "id", "orderable": false},
                {"data": "loginName", "orderable": false},
                {"data": "name"},
                {"data": "email"},
                {"data": "phone"},
                {"data": "lastLogin"}
            ],
            "columnDefs": [{
                "targets": 6,
                "render": function (data, type, row) {
                    return ""
                        <shiro:hasPermission name="right/editBtn">
                        + '<a href="user/edit?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-model="dialog"><i class="fa fa-edit"></i>编辑</a>'
                        </shiro:hasPermission>
                        <shiro:hasPermission name="right/deleteBtn">
                        + '<a href="user/delete?id=' + row.id +
                        '" data-msg="确定删除吗？"  data-model="ajaxToDo" data-callback="refreshTable" class="btn btn-outline btn-circle btn-sm green"><i class="fa fa-times"></i>删除</a>'
                        </shiro:hasPermission>
                        <shiro:hasPermission name="right/editRole">
                        + '<a href="user/editRole?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-model="dialog"><i class="fa fa-user"></i>分配角色</a>'
                        </shiro:hasPermission>;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
            "initComplete": function () {

                initSearchForm("", "搜索用户名和姓名");

            }
        });

        // 通过ajax创建树状图
        tree.jstree({
            'core': {
                "multiple": false,
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

        tree.on('select_node.jstree', function (e, data) {
            var i, j;
            for (i = 0, j = data.selected.length; i < j; i++) {
                var node = data.instance.get_node(data.selected[i]);
                // if (data.instance.is_leaf(node)) {
                //    r.push(node.id);
                // }
                r = node.id;
            }
            console.log(r);
            defTable.draw(false);
        }).jstree();
    });

    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            defTable.draw();
        } else {//表格重绘，保持在当前页
            defTable.draw(false);
        }
    }
</script>