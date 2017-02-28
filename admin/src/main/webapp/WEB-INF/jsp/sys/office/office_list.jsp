<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="office"/>

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
                                <shiro:hasPermission name="office/add">
                                    <button data-url="office/add" data-model="dialog"
                                            class="btn btn-outline btn-circle btn-sm green"> 新增
                                        <i class="fa fa-plus"></i>
                                    </button>
                                </shiro:hasPermission>
                                <shiro:hasPermission name="office/batchDelete">
                                    <button data-url="role/batchDelete" data-msg="确定批量删除吗？" data-model="ajaxToDo"
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

                        <th>机构名称</th>
                        <%--<th>归属地区</th>--%>
                        <th>机构编码</th>
                        <th>机构类型</th>
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
//    $(function () {
        defTable = $('#default_table').DataTable({
            "ordering": false,
            "pagingType": "simple_numbers",
            "processing": true,
            "autoWidth": false,
            "serverSide": true,
            "ajax": {
                "url": "office/list",
                "type": "post",
                "data": function (data) {
                    // data.roleName = $("#officeName").val();
                    // data.keyword = $("#keyword").val();
                    data.parentId = r;
                }
            },
            "language": {
                "url": "http://idle-data.oss-cn-shanghai.aliyuncs.com/global/plugins/datatables/cn.txt"
            },
            "createdRow": function (row, data, index) {
                $('td:eq(0)', row).html("<input type='checkbox' name='chx_default' value='" + data.id + "'/>");
            },
            "lengthMenu": [[5, 40, 60], [5, 40, 60]],
            "columns": [
                {"data": "id"},
                {"data": "name"},
                {"data": "code"},
                {"data": "type"}
            ],
            "columnDefs": [{
                "targets": 4,
                "render": function (data, type, row) {
                    return ""
                        <shiro:hasPermission name="role/editBtn">
                        + '<a href="role/edit?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-model="dialog"><i class="fa fa-edit"></i>编辑</a>'
                        </shiro:hasPermission>
                        <shiro:hasPermission name="office/deleteBtn">
                        + '<a href="office/delete?id=' + row.id + '" data-msg="确定删除吗？"  data-model="ajaxToDo" data-callback="refreshTable" class="btn btn-outline btn-circle btn-sm green"><i class="fa fa-times"></i>删除</a>'
                        </shiro:hasPermission>
                        <shiro:hasPermission name="role/editRight">
                        + '<a href="role/editRight?id=' + row.id + '" class="btn btn-outline btn-circle btn-sm green" data-model="dialog"><i class="fa fa-user"></i>分配权限</a>'
                        </shiro:hasPermission>;
                }
            }],
            "drawCallback": function (settings) {
                drawICheck('defaultCheck', 'chx_default');
            },
            "initComplete": function () {
                initSearchForm(null, "搜索机构名");
            }
        });

        // 通过ajax创建树状图
        function drawTree() {
            tree.jstree({
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
        }

        drawTree();

        tree.on('select_node.jstree', function (e, data) {
            var i, j;
            for (i = 0, j = data.selected.length; i < j; i++) {
                var node = data.instance.get_node(data.selected[i]);
                // if (data.instance.is_leaf(node)) {
                //    r.push(node.id);
                // }
                r = node.id;
            }
            // console.log(r);
            defTable.draw(false);
        });
    });

    function refreshTable(toFirst) {
        //defaultTable.ajax.reload();
        if (toFirst) {//表格重绘，并跳转到第一页
            defTable.draw();
        } else {//表格重绘，保持在当前页
            defTable.draw(false);
        }
    }
</script>