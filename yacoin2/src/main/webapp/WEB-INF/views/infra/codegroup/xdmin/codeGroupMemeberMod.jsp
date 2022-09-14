<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@ page session="false"%>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>

<html>
<head>
	<title>CodeGroupList</title>
	
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
	<div>
		<table class="emp">
			<colgroup>
				<col width="150"/>
				<col width="150"/>
			</colgroup>
			<thead>
				<tr>
					<form action="codeGroupMod" method="get">
					<th>사원 정보</th>
					<th>
					<input tpye="text" name="deptid" id="deptid" placeholder="찾는부서번호입력"/>
					<input type="submit" value="찾기">
					</th>
					</form>
				</tr>
			</thead>
			<form method="get" action="codeUpdtMod">
			<tbody>
				<tr>
					<td>사원번호 : ${listDeptOne.deptid}</td>
					<td><input tpye="text" name="deptid" id="deptid" placeholder="${listDeptOne.deptid}"/ value="${listDeptOne.deptid}" readonly></td>
				</tr>
				<tr>
					<td>사원이름 : ${listDeptOne.dname}</td>
					<td><input tpye="text" name="dnameUdpt" id="dnameUdpt" placeholder="1"/></td>
				</tr>
				<tr>
					<td>연봉 ${listDeptOne.pid}</td>
					<td><input tpye="text" name="pidUdpt" id="pidUdpt" placeholder="1"/></td>
				</tr>
				<tr>
					<td>부서 ${listDeptOne.captain}</td>
					<td><input tpye="text" name="captainUdpt" id="captainUdpt" placeholder="1"/></td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						<input type=submit value="수정">
						<a href="http://localhost:8080/codeGroup/codeGroupList">ddddd</a>
					</td>
				</tr>
			</tfoot>
			</form>
		</table>
	</div>
</body>
</html>