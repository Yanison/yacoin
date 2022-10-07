<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<html>
<head>
	<title>ezenBoard</title>
	
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>


<!--  //제이쿼리 ui css -->
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 
<!--  //제이쿼리 style css -->
 <link rel="stylesheet" href="/resources/demos/style.css">
 
 <!-- //제이쿼리 js -->
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 
 <!-- //제이쿼리 ui js -->
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<link type="text/css" rel="stylesheet" href="../resources/css/ezbrd.css">
<script src="../resources/js/ezbrd.js"></script>

<script>
 
 </script>


<style>
td, th{
text-align:left;
}
</style>
</head>
<body>
<h1>
	사원리스트
</h1>
<div class="formwrapper">
	<div class="formController">
		<form>
			<div class="shOption">
				<select name="shOption" value="<c:out value="${vo.shOption}"></c:out>" >
					<option <c:if test="${empty vo.shOption} ">selected</c:if> >shOption</option>
					<option value="1" <c:if test="${vo.shOption eq 1} ">selected</c:if> >empid</option>
					<option value="2" <c:if test="${vo.shOption eq 1} ">selected</c:if> >ename</option>
					<option value="3" <c:if test="${vo.shOption eq 2} ">selected</c:if> >dname</option>
					<option value="4" <c:if test="${vo.shOption eq 3} ">selected</c:if> >ActiveNY</option>
				</select>
				
			</div>
			
			
			<div class="datepicker">
				<select name="shOptionDate" value="<c:out value="${vo.shOptionDate}"></c:out>" >
					<option value="0" <c:if test="${empty vo.shOptionDate} ">selected</c:if>  >날짜</option>
					<option value="1" <c:if test="${vo.shOptionDate eq 1} ">selected</c:if>  >등록일</option>
					<option value="2" <c:if test="${vo.shOptionDate eq 1} ">selected</c:if>  >수정일</option>
					<option value="3" <c:if test="${vo.shOptionDate eq 1} ">selected</c:if>  >생일</option>
				</select>
			</div>
			<div class="input">
				<p>Date: <input type="text" id="datepicker" name="shOptionDate"></p>
				<input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"></c:out>" placeholder="shValue" class="formcontents formTypeSelect modDate">
			</div>
			<div>
				<input type="submit">
			</div>
		</form>
	</div>
</div>

<div class="main">
	
	<div class="table">
		<table class="tbl">
			<colgroup>
				<col width="150px">
				<col width="150px">
				<col width="300px">
				<col width="150px">
			</colgroup>
			<thead>	
				<tr>
					<th>empid</th>
					<th>ename</th>
					<th>dname</th>
					<th>regDate</th>		
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<td colspan="4"> no</td>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td><c:out value="${list.empid}"/></td>
								<td><c:out value="${list.ename}"/></td>
								<td><c:out value="${list.dname}"/></td>
								<td><fmt:formatDate value="${list.workdate}" dateStyle="default"/></td>
							</tr>		
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		
		<div class="tbr">
			<table>
				<tr>
			    <th>vo.thisPage</th>
			    <td>${vo.thisPage}</td>
			  </tr>
			  <tr>
			    <th>vo.startRnumForMysql</th>
			    <td>${vo.startRnumForMysql}</td>
			  </tr>
			  <tr>
			    <th>vo.RowNumToShow</th>
			    <td>${vo.rowNumToShow}</td>
			  </tr>
			  <tr>
			    <th>vo.startPage</th>
			    <td>${vo.startPage}</td>
			  </tr>
			  <tr>
			    <th>vo.pageNumToShow </th>
			    <td>${vo.pageNumToShow}</td>
			  </tr>
			   <tr>
			    <th>vo.startPage</th>
			    <td>${vo.startPage}</td>
			  </tr>
			   <tr>
			    <th>vo.endPage</th>
			    <td>${vo.endPage}</td>
			  </tr>
			  <tr>
			    <th>vo.totalPages</th>
			    <td>${vo.totalPages}</td>
			  </tr>
			  <tr>
			    <th>i.index</th>
			    <td>${i.index}</td>
			  </tr>
			  <tr>
			    <th></th>
			    <td>${i.index}</td>
			  </tr>
			</table>
		</div>
	</div>
	<div>
	 	<%@include file="pagination.jsp" %>
	</div>
</div>


</body>
</html>