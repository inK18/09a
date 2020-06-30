<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<%-- <script type="text/javascript" src="${pageContext.request.contextPath }/js/jq.js"></script>
 --%>
</head>
<body>
<a href="${pageContext.request.contextPath }/Lesson/toAdd.action">添加</a>
<form id="para" action="${pageContext.request.contextPath }/Lesson/findAll.action" method="post">
课程名称：<input type="text" name="kname" value="${lesson.kname }" placeholder="请输入课程名称"><br>
课程节数：<input type="text" name="sum1" value="${lesson.sum1 }" placeholder="节数1">-<input type="text" name="sum2" value="${lesson.sum2 }" placeholder="节数2"><br>
<input type="submit" value="搜索">
</form>

<table border="1">
	<tr>
		<td>id</td>
		<td>课程名称</td>
		<td>课程节数</td>
		<td>教授</td>
		<td>教学地址</td>
		<td>操作</td>
	</tr>
	<c:forEach var="l" items="${pageInfo.list }">
		<tr>
			<td>${l.id }</td>
			<td>${l.kname }</td>
			<td>${l.sum }</td>
			<td>${l.jname }</td>
			<td>${l.aname }-${l.bname }-${l.cname }</td>
			<td>
				<a href="${pageContext.request.contextPath }/Lesson/toUpdate.action?id=${l.id }&pageNum=${pageInfo.pageNum}">修改</a>
				<a href="${pageContext.request.contextPath }/Lesson/delete.action?id=${l.id}&pageNum=${pageInfo.pageNum}" onclick="return delete1()">删除</a>
			</td>
		</tr>
	</c:forEach>
</table>

<%-- <a href="${pageContext.request.contextPath }/Lesson/findAll.action?pageNum=${pageInfo.firstPage}">首页</a>
<a href="${pageContext.request.contextPath }/Lesson/findAll.action?pageNum=${pageInfo.prePage}">上一页</a>
<a href="${pageContext.request.contextPath }/Lesson/findAll.action?pageNum=${pageInfo.nextPage}">下一页</a>
<a href="${pageContext.request.contextPath }/Lesson/findAll.action?pageNum=${pageInfo.lastPage}">尾页</a>
 --%>
<button onclick="jump(${pageInfo.firstPage})">首页</button>
<button onclick="jump(${pageInfo.prePage})">上一页</button>
<button onclick="jump(${pageInfo.nextPage})">下一页</button>
<button onclick="jump(${pageInfo.lastPage})">尾页</button>
 
当前页/总页数：${pageInfo.pageNum }/${pageInfo.pages }
</body>
<script type="text/javascript">
	function delete1(){
		var flag=confirm("是否删除");
		return flag;
	}
	
	function jump(pageNum){
		var para=document.getElementById("para").action;
		var sum1=document.getElementsByName("sum1")[0].value;
		var sum2=document.getElementsByName("sum2")[0].value;
		var hrefs=para+"?sum1="+sum1+"&sum2="+sum2+"&";
		
		location.href=hrefs+"pageNum="+pageNum;
	}
</script>
</html>