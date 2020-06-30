<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jq.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>

</head>
<body>
<form action="${pageContext.request.contextPath }/Lesson/update.action" method="post">
	<input type="hidden" name="id" value="${lesson.id }">
	课程名称：<input type="text" name="kname" value="${lesson.kname }"><br>
	课程节数：<input type="text" name="sum" value="${lesson.sum }"><br>
	课程教授：<input type="text" name="jname" value="${lesson.jname }"><br>
	上课地址：
	<select name="aid" id="aid" onchange="getAddressByPid(this.value,0)">
		<option value="0">请选择</option>
		<c:forEach var="a" items="${alist }">
			<option value="${a.id }" <c:if test="${lesson.aid==a.id }">selected</c:if>>${a.name }</option>
		</c:forEach>
	</select>
	<select name="bid" id="bid" onchange="getAddressByPid(this.value,1)">
		<option value="0">请选择</option>
	</select>
	<select name="cid" id="cid">
		<option value="0">请选择</option>
	</select>
	<br>
	<input type="submit" value="提交"> <input type="reset" value="重置">
</form>
</body>
<script type="text/javascript">

	$(function(){
		var aid=${lesson.aid};
		var bid=${lesson.bid};
		var cid=${lesson.cid};
		
		getAddressByPid(aid,0,bid);
		
		getAddressByPid(bid,1,cid);
	})
	
	function getAddressByPid(pid,flag,selectId){
		$.post("../Lesson/findAddressByPid.action",{pid:pid},function(data){
			
			var selObj=$("#bid");
			var optionText="请选择";
			if(flag==1){
				selObj=$("#cid");
				optionText="请选择";
			}
			
			selObj.find("option").remove();
			selObj.append("<option value="+0+">"+optionText+"</option>");  
			data.forEach(function(address){
				if(address.id==selectId){
					selObj.append("<option value="+address.id+" selected >"+address.name+"</option>")
				}else{
					selObj.append("<option value="+address.id+">"+address.name+"</option>")
				}
			})
		})
	
	}
	
	/* function getAddressByPid(pid){
		$.post("../Lesson/findAddressByPid.action",{pid:pid},function(data){
			
			$("#bid").find("option").remove();
			$("#bid").append("<option value="+0+">请选择</option>");  
			data.forEach(function(address){
				$("#bid").append("<option value="+address.id+">"+address.name+"</option>")
				if(address.id=="${lesson.bid}"){
					$("#bid").append("<option value="+address.id+" selected='selected'>"+address.name+"</option>")
				}
			})
		})
	
	}
	
	function getAddressByPid2(pid){
	$.post("../Lesson/findAddressByPid.action",{pid:pid},function(data){
		
		$("#cid").find("option").remove();
		$("#cid").append("<option value="+0+">请选择</option>");  
		data.forEach(function(address){
			$("#cid").append("<option value="+address.id+">"+address.name+"</option>")
			if(address.id=="${lesson.cid}"){
				$("#cid").append("<option value="+address.id+" selected='selected'>"+address.name+"</option>")
			}
		})
	})
	
	} */
</script>
</html>