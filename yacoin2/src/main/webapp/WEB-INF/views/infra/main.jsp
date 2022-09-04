<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>CoinHwang</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
<link type="text/css" rel="stylesheet" href="../resources/css/root.css">


<!-- JavaScript Bundle with Popper -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>

<link type="text/css" rel="stylesheet" href="../resources/js/root.js">

<script type="text/javascript">
$(document).ready(function(){
	
	$('#nvai-code-empTable').click(function(){
		console.log('empTable');
		$('.empTable').show();
		$('.isTable').hide();
		$('.codeManage').hide();
		$('.memberInfo').hide();
	})
	
	$('#nvai-code-Table').click(function(){
		console.log('Table');
		$('.empTable').hide();
		$('.isTable').show();
		$('.codeManage').hide();
		$('.memberInfo').hide();
	})
	
	$('#nvai-code-codemanage').click(function(){
		console.log('codemanage');
		$('.empTable').hide();
		$('.isTable').hide();
		$('.codeManage').show();
		$('.memberInfo').hide();
	})
	
	$('#nvai-user-info').click(function(){
		console.log('nvai-user-info');
		$('.empTable').hide();
		$('.isTable').hide();
		$('.codeManage').hide();
		$('.memberInfo').show();
	})
	
});
</script>
</head>
<body>



<div class="body-wrapper">
	
	
	<div class="left-wrapper">
		<%@ include file="mainleft.jsp" %>		
	</div>
	
				
	<div class="right-wrapper">  
	
		<!-- 코드그룹관리 s-->
		<section class="right empTable">
			<%@ include file="codeGroupListEmp.jsp" %>
		</section>
		
		<section class="right isTable" style="display:block;">
			<%@ include file="codeGroupList.jsp" %>
		</section>
		
		<section class="right codeManage" style="display:block;">
			<%-- <%@ include file="codeGroupManage.jsp" %> --%>
		</section>
		<!-- 코드그룹관리 e-->
		
		<!-- 멤버관리 s-->
		<section class="right memberInfo" style="display:block;">
			<%-- <%@ include file="memberInfo.jsp" %> --%>
		</section>
		
		<!-- 멤버관리 e-->
	</div>

</div>


</body>
</html>
