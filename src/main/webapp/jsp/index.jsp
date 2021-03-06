<%@ page language="java" contentType="text/html; charset=utf-8"
		 pageEncoding="utf-8"%>
<%@include file="../common/head.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>Insert title here</title>
	<script type="text/javascript">
        function openTab(text, url, iconCls) {

            if ($("#tabs").tabs("exists", text)) {
                $("#tabs").tabs("select", text);
            } else {
                var content = "<iframe frameborder=0 scrolling='auto' style='width:100%;height:100%' src='"
                    + url + "'></iframe>";
                $("#tabs").tabs("add", {
                    title : text,
                    iconCls : iconCls,
                    closable : true,
                    content : content
                });
            }
        }

        /* 打开修改dialog */
        function openUpdateDialog(id){
            $("#dialog").dialog("open").dialog("setTitle","修改密码");
        }

        /* 关闭dialog */
        function closeDialog(){
            $("#dialog").dialog("close");
        }

        /* 添加和修改的保存 */
        function doSave(){
            $("#form").form('submit',{
                url:"${ctx}/user/updatePassword.action",
                /* 在提交之前触发，返回false可以终止提交。 */

                onSubmit:function(){
                    $.extend($.fn.validatebox.defaults.rules, {
                        equals: {
                            validator: function(value,param){
                                return value == $(param[0]).val();
                            },
                            message: '两次输入的密码不一致'
                        },
                        orderPassword: {
                            validator: function(value, param){
                                return value== '${user.password}';
                            },
                            message: '原密码错误'
                        }
                    });

                    //做表单字段验证，当所有字段都有效的时候返回true。该方法使用validatebox(验证框)插件。
                    return $(this).form("validate");
                },
                success:function (data){
                    //json字符串转化成json格式
                    var data = eval('('+data+')');
                    if (data.status == Util.SUCCESS) {
                        $.messager.alert("系统提示",data.msg);
                        $("#dialog").dialog("close");
                        //reload 重载行。等同于'load'方法，但是它将保持在当前页。
                        $("#datagrid").datagrid("reload");

                    }
                }
            });
        }

        function logout(){
            $.messager.confirm('确认','确认对出？',function(r){
                if (r){
                    location.href="${ctx}/login/logout.action";
                }
            });
        }
	</script>
</head>
<body class="easyui-layout">
<div region="north" style="height: 78px; background-color:#F0E3BF">
	<table style="padding: 5px" width="100%">
		<tr>
			<td width="50%"><img alt="log"
								 src="${ctx}/resources/images/logo.png" style="width: 200px;height: 50px;"></td>
			<td valign="bottom" align="right" width="50%"><font size="3">&nbsp;&nbsp;<strong>欢迎：</strong>${user.name}</font>【${user.roleName }】
			</td>
		</tr>
	</table>
</div>
<div region="center" style="background-image: url('');">
	<div class="easyui-tabs" fit="true" border="false" id="tabs">
		<div title="首页" data-options="iconCls:'icon-home'">
			<div align="center" style="padding-top: 100px;background-color: ">
				<font color="#4693EC" size="10">欢迎使用</font>
			</div>
		</div>
	</div>
</div>
<div region="west" style="width: 200px" title="导航菜单" split="true">
	<div class="easyui-accordion" data-options="fit:true,border:false">
		<div title="营销管理" data-options="selected:true,iconCls:'icon-yxgl'"
			 style="padding: 10px">
			<a href="javascript:openTab('营销机会管理','${ctx}/index/saleChance.action','icon-yxjhgl')"
			class="easyui-linkbutton"
			data-options="plain:true,iconCls:'icon-yxjhgl'"
			style="width: 150px">营销机会管理</a>

			<a
				href="javascript:openTab('客户开发计划','${ctx}/index/cusdevplanManage.action','icon-khkfjh')"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-khkfjh'"
				style="width: 150px">客户开发计划</a>
		</div>
		<div title="客户管理" data-options="iconCls:'icon-khgl'"
			 style="padding: 10px;">
			<a
					href="javascript:openTab('客户信息管理','${ctx}/index/customer.action','icon-khxxgl')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-khxxgl'"
					style="width: 150px;">客户信息管理</a> <a
				href="javascript:openTab('客户流失管理','${ctx}/index/customerLoss.action','icon-khlsgl')"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-khlsgl'"
				style="width: 150px;">客户流失管理</a>
		</div>
		<div title="服务管理" data-options="iconCls:'icon-fwgl'"
			 style="padding: 10px">
			<a
					href="javascript:openTab('服务创建','${ctx}/index/customerServiceSet.action','icon-fwcj')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-fwcj'" style="width: 150px;">服务创建</a>
			<a
					href="javascript:openTab('服务分配','${ctx}/index/customerServceAllot.action','icon-fwfp')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-fwfp'" style="width: 150px;">服务分配</a>
			<a
					href="javascript:openTab('服务处理','${ctx}/index/customerServceDispose.action','icon-fwcl')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-fwcl'" style="width: 150px;">服务处理</a>
			<a
					href="javascript:openTab('服务反馈','${ctx}/index/customerServceBack.action','icon-fwfk')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-fwfk'" style="width: 150px;">服务反馈</a>
			<a
					href="javascript:openTab('服务档案','${ctx}/index/customerServceSave.action','icon-fwgd')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-fwgd'" style="width: 150px;">服务档案</a>
		</div>
		<div title="统计报表" data-options="iconCls:'icon-tjbb'"
			 style="padding: 10px">
			<a href="javascript:openTab('客户贡献分析','${ctx}/index/customerContribute.action','icon-khgxfx')"
			   class="easyui-linkbutton"
			   data-options="plain:true,iconCls:'icon-khgxfx'"
			   style="width: 150px;">客户贡献分析</a> <a
				href="javascript:openTab('客户构成分析','${ctx}/index/customerConstitute.action','icon-khgcfx')"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-khgcfx'"
				style="width: 150px;">客户构成分析</a> <a
				href="javascript:openTab('客户服务分析','${ctx}/index/customerServiceBz.action','icon-khfwfx')"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-khfwfx'"
				style="width: 150px;">客户服务分析</a> <a
				href="javascript:openTab('客户流失分析','khlsfx.jsp','icon-khlsfx')"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-khlsfx'"
				style="width: 150px;">客户流失分析</a>
		</div>
		<div title="基础数据管理" data-options="iconCls:'icon-jcsjgl'"
			 style="padding: 10px">
			<a
					href="javascript:openTab('数据字典管理','${ctx}/index/dataDic.action','icon-sjzdgl')"
					class="easyui-linkbutton"
					data-options="plain:true,iconCls:'icon-sjzdgl'"
					style="width: 150px;">数据字典管理</a> <a
				href="javascript:openTab('产品信息查询','${ctx}/index/product.action','icon-cpxxgl')"
				class="easyui-linkbutton"
				data-options="plain:true,iconCls:'icon-cpxxgl'"
				style="width: 150px;">产品信息查询</a>
			<a href="javascript:openTab('用户信息管理','${ctx}/index/user.action','icon-user')"
			   class="easyui-linkbutton"
			   data-options="plain:true,iconCls:'icon-user'" style="width: 150px;">用户信息管理</a>
		</div>
		<div title="系统管理" data-options="iconCls:'icon-item'"
			 style="padding: 10px">
			<a href="javascript:openUpdateDialog(${user.id})"
			   class="easyui-linkbutton"
			   data-options="plain:true,iconCls:'icon-modifyPassword'"
			   style="width: 150px;">修改密码</a> <a href="javascript:logout()"
												 class="easyui-linkbutton"
												 data-options="plain:true,iconCls:'icon-exit'" style="width: 150px;">安全退出</a>
		</div>
	</div>
</div>
<div region="south" style="height: 25px; padding: 5px" align="center">
	Java1707CRM管理系统
</div>


<!-- 添加和修改的dialog 开始 -->
<div id="dialog" class="easyui-dialog" style="width: 300px;height: 280,padding: 10px 20px" buttons="#dialog-button" closed="true">
	<form action="" id="form" method="post">
		<input type="hidden" id="id" name="id" value="${user.id}"/>
		<div style="margin-left: 20px;margin-right: 20px;margin-top: 20px">
			<div style="margin-bottom:20px">
				<div>用户名:</div>
				<input class="easyui-validatebox" type="text" id="name" name="name" value="${user.name}" style="width:100%;height:32px">
			</div>
			<div style="margin-bottom:20px">
				<div>原密码:</div>
				<input class="easyui-validatebox" type="text" id="ordpassword" validType="orderPassword"  style="width:100%;height:32px">
			</div>
			<div style="margin-bottom:20px">
				<div>新密码:</div>
				<input class="easyui-validatebox" type="text" id="password" name="password" data-options="required:true" required="true" style="width:100%;height:32px">
			</div>
			<div style="margin-bottom:20px">
				<div>确认密码:</div>
				<input class="easyui-validatebox" type="text" id="two" style="width:100%;height:32px"  required="required" validType="equals['#password']" >
			</div>
		</div>
	</form>
</div>
<!-- 添加和修改的dialog 结束 -->
<!-- dialog-button 开始 -->
<div id="dialog-button">
	<a href="javascript:doSave()" class="easyui-linkbutton" iconCls="icon-ok">保存</a>
	<a href="javascript:closeDialog()" class="easyui-linkbutton" iconCls="icon-cancel">取消</a>
</div>
<!-- dialog-button 结束 -->

</body>
</html>