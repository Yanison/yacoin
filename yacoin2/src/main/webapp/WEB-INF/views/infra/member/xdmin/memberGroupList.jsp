<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<html>
<head>
	<title>MemberGroupList</title>
	
 <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 <link rel="stylesheet" href="/resources/demos/style.css">
 <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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

shOption
shValueNY
shValueSeq
shValueName

<form method="GET" action="/memberGroup/memberGroupList">
<%-- 	<select id="shOption" name="shOption" class="formcontents formTypeSelect delNY">
		<option><c:if test="${empty vo.shOption} ">selected</c:if>shOption</option>
		<option value="1" <c:if test="${vo.shOption eq 1} ">selected</c:if> >seq</option>
		<option value="2" <c:if test="${vo.shOption eq 1} ">selected</c:if> >dob</option>
		<option value="3" <c:if test="${vo.shOption eq 2} ">selected</c:if> >name</option>
		<option value="4" <c:if test="${vo.shOption eq 3} ">selected</c:if> >ActiveNY</option>
	</select> --%>
<%-- 	<p>Date: <input name="shValueDob" type="text" id="datepicker" placeholder="shValueDob"></p>
	
	<select id="shValueNY" name="activeNy" class="formcontents formTypeSelect delNY">
		<option>activeNy</option>
		<option value="0" <c:if test="${vo.activeNy eq 0} ">selected</c:if>>N</option>
		<option value="1" <c:if test="${vo.activeNy eq 1} ">selected</c:if>>Y</option>
	</select>							
	<input type="text" id="shValueSeq" name="shValueSeq" placeholder="shValueSeq" class="formcontents formTypeSelect modDate"> --%>
	<input type="text" id="shValueName" name="shValueName" placeholder="입력" value="<c:out value="${vo.shValueName}"></c:out>" class="formcontents formTypeSelect modDate">
	<input type="submit">
</form>	
<div>
	<table>
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
				<th>salary</th>		
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
							<%-- <td><fmt:formatDate value="${list.workdate}" dateStyle="default"/></td> --%>
							<td><c:out value="${list.salary}"/></td>				
						</tr>		
					</c:forEach>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
	
</div>


</body>
</html>