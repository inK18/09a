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
<form action="${pageContext.request.contextPath }/Lesson/add.action" method="post">
	课程名称：<input type="text" name="kname" onblur="blur1()"><font id="a" color="red"></font><br>
	课程节数：<input type="text" name="sum" onblur="blur2()"><font id="b" color="red"></font><br>
	课程教授：<input type="text" name="jname"><br>
	上课地址：
	<select name="aid" id="aid" onchange="getAddressByPid(this.value)">
		<option value="0">请选择</option>
		<c:forEach var="a" items="${alist }">
			<option value="${a.id }">${a.name }</option>
		</c:forEach>
	</select>
	<select name="bid" id="bid" onchange="getAddressByPid2(this.value)">
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
	/* $.post("${pageContext.request.contextPath}/Lesson/findAid.action",function(data){
		var aidArr=eval("("+data+")");
		for(var i=0;i<aidArr.length;i++){
			$("#aid").append("<option>"+aidArr[i].name+"</option>");
		}
	}) */
	
	/* function getAddressByPid(pid){
		alert("aaa");
		$.post("../Lesson/findAddressPid.action",{pid:pid},function(data){
			var selObj=$("#bid");
			selObj.find("option").remove();
			selObj.append("<option value="0">请选择</option>");
			data.forEach(function(address){
				selObj.append("<option value="+address.id+">"+address.name+"</option>")
			})
		})
	} */
	
		
		/* $("#aid").change(function(){
			alert("bbb");
			var sname=$(this).val();
			$("#bid").text("");
			$("#bid").append("<option value="0">请选择</option>");
			
			$.post("${pageContext.request.contextPath }/Lesson/findAddressByPid.action",{pid:pid},function(data){
				var bidArr=eval("("+data+")");
				for(var i=0;i<bidArr.length;i++){
					$("#bid").append("<option value="+bidArr[i].id+">"+bidArr[i].name+"</option>");
				}
			})
		}) */

		function getAddressByPid(pid){
			$.post("../Lesson/findAddressByPid.action",{pid:pid},function(data){
				
				/* var selObj=$("#aid");*/
				$("#bid").find("option").remove();
				$("#bid").append("<option value="+0+">请选择</option>");  
				data.forEach(function(address){
					$("#bid").append("<option value="+address.id+">"+address.name+"</option>")
				})
			})
		
		}
	
	function getAddressByPid2(pid){
		$.post("../Lesson/findAddressByPid.action",{pid:pid},function(data){
			
			/* var selObj=$("#aid");*/
			$("#cid").find("option").remove();
			$("#cid").append("<option value="+0+">请选择</option>");  
			data.forEach(function(address){
				$("#cid").append("<option value="+address.id+">"+address.name+"</option>")
			})
		})
	
	}
	
	function blur1(){
		var kname=document.getElementsByName("kname")[0].value;
		$.post("../Lesson/findKname.action",{kname:kname},function(data){
			
			if(data!=0){
				/* $("#a").find("font").remove(); */
				$("#a").text("");
				$("#a").append("课程名不能重复");
			}else{
				/* $("#a").find("font").remove(); */
				$("#a").text("");
			}
		})
	}
	
	function blur2(){
		var sum=document.getElementsByName("sum")[0].value;
		if(sum<0){
			/* $("#b").find("font").remove(); */
			$("#b").text("");
			$("#b").append("课程节数不得小于0");
		}else{
			$("#b").text("");
		}
	}
</script>
</html>