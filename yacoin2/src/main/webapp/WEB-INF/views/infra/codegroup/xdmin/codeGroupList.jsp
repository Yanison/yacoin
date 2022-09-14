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

부서별 직원 정보
부서 클릭시 부서 내부의 직원정보 열람


<div class="tablewrapper">
	<div class="functions">
		<div class="select">
			<select>
				<option>부서명</option>
				<option>2</option>
				<option>3</option>
				<option>4</option>
			</select>
		</div>
		
		<div class="crud">
			<a href="http://localhost:8080/codeGroup/codeGroupModFormTest">ModFormTest</a>
			<a href="http://localhost:8080/codeGroup/codeGroupMod">부서수정</a>
			<a href="http://localhost:8080/codeGroup/codeGroupCreat">부서생성</a>
			<input type="submit" value="부서삭제">
			<input type="submit" value="부서이름수정">
		</div>
	</div>
	<table>
		<colgroup>
			<col width="25">
			<col width="50">
			<col width="150">
			<col width="50">
			<col width="50">
			<col width="150">
			<col width="50">
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>#</th>
				<th>부서명</th>
				<th>부서등급</th>
				<th>인원수</th>
				<th>(사원번호)부서장</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:choose>
				<c:when test="${fn:length(list) eq 0 }">
					<tr>
						<td colspan="4">nothing serched data</td>
					</tr>
				</c:when>
				<c:otherwise>
					<c:forEach items="${list}" var="list" varStatus="status">
						
						<tr id="deptid_${list.deptid}" class="deptOne" name="deptTr" value="${list.deptid}" onclick="deptInfo()">
							<td><input type="checkbox"></td>
							<td><span class="deptOneId">${list.deptid}</span></td>
							<td>${list.dname}</td>
							<td>${list.pid}</td>
							<td>${list.eodcnt}</td>
							<td>
								<p class="ifnull"><c:if test="${list.captain eq null}"> 부서장 없음</c:if></p>
								${list.captain}
								${list.ename}
							</td>
							<td>
								<form method = "get" action="codeGroupMod">
									<input type="text" name="deptid" value="${list.deptid}" readonly/ style="display:none;">
									<input type="submit" value="정보보기"/>
								</form>
							</td>
						</tr>
						
					</c:forEach>
				</c:otherwise>
			</c:choose>	
		</tbody>
		<tfoot>
			<tr>
				<td style="text-align:left; padding:0 10px;" colspan="7">계</td>
			</tr>
		</tfoot>
	</table>
</div>



</body>
</html>