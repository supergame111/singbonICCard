<!-- 授权分组列表 -->
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script type="text/javascript">
	$(function() {
		$("#authGroupForm .add").click(
				function() {
					$("#authGroupForm input").eq(0).val("");
					var roles = "";
					$("#authTree .indeterminate,#authTree .checked").each(
							function(i, e2) {
								roles += $(this).find("input").val() + ",";
							});
					$("#authGroupForm input").eq(1).val(roles);
					validateCallback($(this).parents("form"), function(e) {
						if (e == 1) {
							refreshAuthGroupList();
						} else {

						}
					}, null);
				});
		$("#authGroupForm .edit").click(
				function() {
					var roles = "";
					$("#authTree .indeterminate,#authTree .checked").each(
							function(i, e2) {
								roles += $(this).find("input").val() + ",";
							});
					$("#authGroupForm input").eq(1).val(roles);
					validateCallback($(this).parents("form"), function(e) {
						if (e == 1) {
							refreshAuthGroupList();
						} else {

						}
					}, null);
				});
		$("#authGroupForm .delete").click(
				function() {
					
				});
	});
	function refreshAuthGroupList() {
		$("#groupList").loadUrl("${base}/groupList.do", {}, function() {
			$("#groupList").find("[layoutH]").layoutH();
		});
	}

	function authGroupClick(tr) {
		var roles = tr.attr("roles");
		$("#authGroupForm input").eq(0).val(tr.attr("groupId"));
		$("#authGroupForm input").eq(1).val(roles);
		$("#authGroupForm input").eq(2).val(tr.find("div:first").html());
		$("#authGroupForm input").eq(3).val(tr.find("div:last").html());
		$("#authTree .indeterminate,#authTree .checked").removeClass(
				"indeterminate").removeClass("checked").addClass("unchecked");
		$("#authTree li:not(:has(li))").each(function() {
			var ckbox = $(".ckbox", this);
			if (roles.indexOf($("input", ckbox).val()) != -1) {
				ckbox.click();
			}
		});
	}
</script>
<style type="text/css">
</style>
<table class="table" width="99%" layoutH="120" rel="jbsxBox">
	<thead>
		<tr>
			<th width="100">分组名称</th>
			<th width="100">备注</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list }" var="g">
			<tr target="authGroup" groupId="${g.id }" roles="${g.roles }">
				<td>${g.groupName }</td>
				<td>${g.remark }</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
<div class="form">
	<form id="authGroupForm" method="post" action="${base }/addEditGroup.do"
		class="pageForm required-validate">
		<div class="pageFormContent">
			<dl>
				<dt>分组名称：</dt>
				<dd>
					<input type="hidden" name="id" /><input type="hidden" name="roles" /><input type="text"
						name="groupName" maxlength="20" class="required" />
				</dd>
			</dl>
			<dl>
				<dt>备注：</dt>
				<dd>
					<input type="text" name="remark" maxlength="50" />
				</dd>
			</dl>
		</div>
		<div class="formBar">
			<div class="panelBar" style="border-style: none;">
				<ul class="toolBar">
					<li><a class="add" href="javascript:;"><span>添加</span></a></li>
					<li><a class="edit" href="javascript:;"><span>修改</span></a></li>
					<li><a class="delete" href="javascript:;"><span>删除</span></a></li>
				</ul>
			</div>
		</div>
	</form>
</div>
