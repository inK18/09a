<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>展示页面</h1>
	<form action="">
		<table border="1">
			<tr>
				<td>员工编号</td>
				<td>员工姓名</td>
				<td>员工性别</td>
				<td>入职日期</td>
				<td>所在部门</td>
				<td>操作</td>
			</tr>
			<c:forEach var="e" items="${elist }">
				<tr>
					<td>${e.eid }</td>
					<td>${e.ename }</td>
					<td>${e.sex }</td>
					<td>${e.bir }</td>
					<td>${e.dname }</td>
					<td>
						<a href="${pageContext.request.contextPath }/Emp/delete.action?eid=${e.eid}">删除</a>
						<a href="${pageContext.request.contextPath }/Emp/toUpdate.action?eid=${e.eid}">修改</a>
					</td>
				</tr>
			</c:forEach>
		</table>
	</form>
</body>
</html>