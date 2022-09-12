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
<script src="../resources/js/test.js"></script>


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>

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
			<input type="submit" value="부서생성">
			<input type="submit" value="부서삭제">
			<input type="submit" value="부서이름수정">
		</div>
	</div>
	<table>
		<colgroup>
			<col width="25">
			<col width="50">
			<col width="150">
			<col width="150">
			<col width="150">
		</colgroup>
		<thead>
			<tr>
				<th><input type="checkbox"></th>
				<th>#</th>
				<th>부서명</th>
				<th>부서등급</th>
				<th>부서장</th>
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
						<tr class="deptlistDeptOne">
							<td><input type="checkbox"></td>
							<td>${list.deptid}</td>
							<td>${list.dname}</td>
							<td>${list.pid}</td>
							<td>
								<p class="ifnull"><c:if test="${list.captain eq null}"> 부서장 없음</c:if></p>
								${list.captain}
							</td>
						</tr>
					</c:forEach>
				</c:otherwise>
			</c:choose>	
		</tbody>
		<tfoot>
			<tr>
				<td style="text-align:left; padding:0 10px;" colspan="5">계</td>
			</tr>
		</tfoot>
	</table>
</div>


<!-- modalContainer -->
<div class="modalContainer">

<div class="deptInfo">
	<table>
		<colgroup>
			<col width="150"/>
			<col width="150"/>
		</colgroup>
		<thead>
			<tr>
				<th>부서 정보</th>
				<th>입력</th>
			</tr>
		</thead>
		<tbody>
			<%-- <tr>
				<td>부서번호 : ${listDeptOne.deptid}</td>
				<td><input tpye="text" name="deptidUdpt" id="deptidUdpt" placeholder="1"/></td>
			</tr>
			<tr>
				<td>부서명 : ${listDeptOne.dname}</td>
				<td><input tpye="text" name="dnameUdpt" id="dnameUdpt" placeholder="1"/></td>
			</tr>
			<tr>
				<td>부서등급 ${listDeptOne.pid}</td>
				<td><input tpye="text" name="pidUdpt" id="pidUdpt" placeholder="1"/></td>
			</tr>
			<tr>
				<td>부서장 ${listDeptOne.captain}</td>
				<td><input tpye="text" name="captainUdpt" id="captainUdpt" placeholder="1"/></td>
			</tr> --%>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="4">
					<button id="udptBtn" name="udptBtn">수정</button>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

</div>


</body>
</html>