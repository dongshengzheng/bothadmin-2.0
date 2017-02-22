<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%@ taglib prefix="go" uri="http://www.ctoangels.com/jsp/jstl/common" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<go:navigater path="user"></go:navigater>

<div class="row">
    <div class="col-md-4">
        <div class="portlet light bordered">
            <div class="portlet-title">
                <div class="caption">
                    <i class="icon-social-dribbble font-blue-sharp"></i>
                    <span class="caption-subject font-blue-sharp bold uppercase">Default Tree</span>
                </div>
            </div>
            <div class="portlet-body">

                <div id="tree_1" class="tree-demo jstree jstree-1 jstree-default" role="tree" aria-multiselectable="true" tabindex="0" aria-activedescendant="j1_8" aria-busy="false">
                    <ul class="jstree-container-ul jstree-children" role="group">
                        <li role="treeitem" aria-selected="false" aria-level="1" aria-labelledby="j1_1_anchor" aria-expanded="true" id="j1_1" class="jstree-node  jstree-open">
                            <i class="jstree-icon jstree-ocl" role="presentation"></i>
                            <a class="jstree-anchor" href="#" tabindex="-1" id="j1_1_anchor">
                                <i class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom" role="presentation"></i>
                                Root node 1
                            </a>
                            <ul role="group" class="jstree-children">
                                <li role="treeitem" data-jstree="{ &quot;selected&quot; : true }" aria-selected="true" aria-level="2" aria-labelledby="j1_2_anchor" id="j1_2" class="jstree-node  jstree-leaf">
                                    <i class="jstree-icon jstree-ocl" role="presentation"></i>
                                    <a class="jstree-anchor  jstree-clicked" href="javascript:;" tabindex="-1" id="j1_2_anchor">
                                        <i class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom" role="presentation"></i>
                                        Initially selected
                                    </a>
                                </li>
                                <li role="treeitem" data-jstree="{ &quot;icon&quot; : &quot;fa fa-briefcase icon-state-success &quot; }" aria-selected="false" aria-level="2" aria-labelledby="j1_3_anchor" id="j1_3" class="jstree-node  jstree-leaf"><i class="jstree-icon jstree-ocl" role="presentation"></i>
                                    <a class="jstree-anchor" href="#" tabindex="-1" id="j1_3_anchor">
                                        <i class="jstree-icon jstree-themeicon fa fa-briefcase icon-state-success  jstree-themeicon-custom" role="presentation"></i>
                                        custom icon URL
                                    </a>
                                </li>
                                <li role="treeitem" data-jstree="{ &quot;opened&quot; : true }" aria-selected="false" aria-level="2" aria-labelledby="j1_4_anchor" aria-expanded="true" id="j1_4" class="jstree-node  jstree-open">
                                    <i class="jstree-icon jstree-ocl" role="presentation"></i>
                                    <a class="jstree-anchor" href="#" tabindex="-1" id="j1_4_anchor">
                                        <i class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom" role="presentation"></i>
                                        initially open
                                    </a>
                                    <ul role="group" class="jstree-children">
                                        <li role="treeitem" data-jstree="{ &quot;disabled&quot; : true }" aria-selected="false" aria-level="3" aria-labelledby="j1_5_anchor" aria-disabled="true" id="j1_5" class="jstree-node  jstree-leaf">
                                            <i class="jstree-icon jstree-ocl" role="presentation"></i>
                                            <a class="jstree-anchor  jstree-disabled" href="#" tabindex="-1" id="j1_5_anchor">
                                                <i class="jstree-icon jstree-themeicon fa fa-folder icon-state-warning icon-lg jstree-themeicon-custom" role="presentation"></i>
                                                Disabled Node
                                            </a>
                                        </li>
                                        <li role="treeitem" data-jstree="{ &quot;type&quot; : &quot;file&quot; }" aria-selected="false" aria-level="3" aria-labelledby="j1_6_anchor" id="j1_6" class="jstree-node  jstree-leaf jstree-last">
                                            <i class="jstree-icon jstree-ocl" role="presentation"></i>
                                            <a class="jstree-anchor" href="#" tabindex="-1" id="j1_6_anchor">
                                                <i class="jstree-icon jstree-themeicon fa fa-file icon-state-warning icon-lg jstree-themeicon-custom" role="presentation"></i>
                                                Another node
                                            </a>
                                        </li>
                                    </ul>
                                </li>
                                <li role="treeitem" data-jstree="{ &quot;icon&quot; : &quot;fa fa-warning icon-state-danger&quot; }" aria-selected="false" aria-level="2" aria-labelledby="j1_7_anchor" id="j1_7" class="jstree-node  jstree-leaf jstree-last">
                                    <i class="jstree-icon jstree-ocl" role="presentation"></i>
                                    <a class="jstree-anchor" href="#" tabindex="-1" id="j1_7_anchor">
                                        <i class="jstree-icon jstree-themeicon fa fa-warning icon-state-danger jstree-themeicon-custom" role="presentation"></i>
                                        Custom icon class (bootstrap)
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li role="treeitem" data-jstree="{ &quot;type&quot; : &quot;file&quot; }" aria-selected="false" aria-level="1" aria-labelledby="j1_8_anchor" id="j1_8" class="jstree-node  jstree-leaf jstree-last">
                            <i class="jstree-icon jstree-ocl" role="presentation"></i>
                            <a class="jstree-anchor" href="http://www.jstree.com" tabindex="-1" id="j1_8_anchor">
                                <i class="jstree-icon jstree-themeicon fa fa-file icon-state-warning icon-lg jstree-themeicon-custom" role="presentation"></i>
                                Clickanle link node
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-8">
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

                                    <button data-url="user/batchDelete" data-msg="确定批量删除吗？" data-model="ajaxToDo"
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
    });

    function refreshTable(toFirst) {
        if (toFirst) {//表格重绘，并跳转到第一页
            defTable.draw();
        } else {//表格重绘，保持在当前页
            defTable.draw(false);
        }
    }
</script>