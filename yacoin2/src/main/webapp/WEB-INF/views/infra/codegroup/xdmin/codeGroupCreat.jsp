<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page session="false"%>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
	<title>부서생성</title>
	
<link type="text/css" rel="stylesheet" href="../resources/css/cgl.css">


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>
<script src="../resources/js/test.js"></script>
<!-- BootStrap -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
	crossorigin="anonymous"></script>

</head>
<body>

부서생성


<div class="creat">
	<div class="functions">
		<div class="crud">
			<a href="http://localhost:8080/codeGroup/codeGroupList">codeGroupList</a>
		</div>
	</div>
	<form action="">
		<table class="creatTable">
			<colgroup>
				<col width="40"/>
				<col width="60"/>
			</colgroup>
			<tr>
				<th>부서이름</th>
				<td>
					<input type="text" name="dname" placeholder="dname" value=""/>
				</td>
			</tr>
			<tr>
				<th>부서등급</th>
				<td><input type="text" name="pid" placeholder="pid"/></td>
			</tr>
			<tr>
				<th>부서장</th>
				<td><input type="text" name="captain" placeholder="captain"/></td>
			</tr>
		</table>
		<div class="tfoot">
			<input type="submit" value="부서생성">
		</div>
	</form>
</div>



</body>
</html>