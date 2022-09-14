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

<!-- modalContainer -->

<!-- Button trigger modal -->
<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
  Launch demo modal
</button>

<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
<div class="modalContainer">

<div class="deptInfoDiv">
	<div class="deptInfo">
		<table class="deptInfoTable">
			<colgroup>
				<col width="150"/>
				<col width="150"/>
			</colgroup>
			<thead>
				<tr>
					<form action="codeGroupMod" method="get">
					<th>부서 정보</th>
					<th>
						<select name="deptid">
							
							<c:forEach items="${list}" var="list" varStatus="status">
								<option 
									value="${list.deptid}"
									<c:if test="${ listDeptOne.deptid eq list.deptid }">selected</c:if>
								>
									${list.deptid} / ${list.dname}
								</option>
							</c:forEach>	
						</select>
					<!-- <input tpye="text" name="deptid" id="deptid" placeholder="찾는부서번호입력"/> -->
					<input type="submit" value="찾기">
					</th>
					</form>
				</tr>
			</thead>
			<form method="get" action="codeUpdtMod">
			<tbody>
				<tr>
					<td>부서번호 : ${listDeptOne.deptid}</td>
					<td><input tpye="text" name="deptid" id="deptid" placeholder="${listDeptOne.deptid}"/ value="${listDeptOne.deptid}" readonly></td>
				</tr>
				<tr>
					<td>부서명 : ${listDeptOne.dname}</td>
					<td><input tpye="text" name="dnameUdpt" id="dnameUdpt" value="${listDeptOne.dname}"/></td>
				</tr>
				<tr>
					<td>부서등급 : ${listDeptOne.pid}</td>
					<td><input tpye="text" name="pidUdpt" id="pidUdpt" value="${listDeptOne.pid}"/></td>
				</tr>
				<tr>
					<td>부서장 : ${listDeptOne.captain} / ${listDeptOne.ename}</td>
					<td>
						<select name="captainUdpt">
							<option>null</option>
							<c:forEach items="${listEmp}" var="listEmp" varStatus="status">														
									<option 
										value="${listEmp.empid}" 
										<c:if test="${ listEmp.empid eq listDeptOne.captain }">selected</c:if>
									>
										${listEmp.empid}/${listEmp.ename}
									</option>							
							</c:forEach>
						</select>
					</td>
				</tr>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="3">
						<input type=submit value="수정">
						<a href="http://localhost:8080/codeGroup/codeGroupList">cgl</a>
					</td>
				</tr>
			</tfoot>
			</form>
		</table>
	</div>
	<div class="empInfoDiv">
		<div class="th">
			<table>
				<colgroup>
					<col width="50px">
					<col width="150px">
					<col width="150px">
					<col width="150px">
				</colgroup>
				<thead>
					<tr>
						<th>사원번호</th>
						<th>사원이름</th>
						<th>급여</th>
						<th></th>
					</tr>
				</thead>
			</table>		
		</div>
		<div class="tb">
			<table>
				<colgroup>
					<col width="50px">
					<col width="150px">
					<col width="150px">
					<col width="150px">
				</colgroup>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(listEmp) eq 0 }">
								<td colspan="3"> 사원없음 </td>
						</c:when>
						<c:otherwise>
							<c:forEach items="${listEmp}" var="listEmp" varStatus="status">
								<tr>
									<td>${listEmp.empid}</td>
									<td>${listEmp.ename}</td>
									<td>
									${listEmp.salary}
									</td>
									<td>
										<form action="codeGroupMemeberMod">
											<input type="text" name="empid" value="${listEmp.empid}" style="display:none;">
											<input type="submit" value="사원정보">
										</form>
									</td>
								</tr>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</tbody>
			</table>
		</div>
		<div class="tfoot">
			<div>총인원</div>
		<div>
			<form action="">
				<input type="submit" value="사원삭제">
			</form>
			<a href="">사원추가</a>
		</div>	
		</div>
	</div>
</div>

</div>


</body>
</html>