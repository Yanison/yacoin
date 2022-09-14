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
<table>
		<form action="codeGroupModFormTest">
			<tr>
				<th>vo ID</th>
				<td>
					<input type="text" name="deptid" th:value="${test.deptid}">
				</td>
			</tr>
			<tr>
				<th>vo NAME</th>
				<td>
					<input type="text" name="dname" th:value="${test.dname}">
				</td>
			</tr>
			<tr>
				<th>vo PW</th>
				<td>
					<input type="text" name="captain" th:value="${test.captain}">
				</td>
			</tr>
		</form>
	</table>
</body>
</html>