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
	MemberGroupList
</h1>

<%-- <table>
	<thead>
		<th>seq</th>
		<th>name</th>
		<th>pw</th>
		<th>nickname</th>
		<th>email</th>
		<th>tel</th>
		<th>regDate</th>
		<th>userActive</th>
		<th>confirmationCode</th>
		<th>userInfo</th>
		<th>preferredCurrencySeq</th>								
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${fn:length(list) eq 0}">
					<tr>
						<td rowspan="11">There is no Data</td>
					</tr>
			</c:when>
			<c:otherwise>
				<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td><c:out value="${list.seq}"/></td>
								<td><c:out value="${list.name}"/></td>
								<td><c:out value="${list.pw}"/></td>
								<td><c:out value="${list.nickname}"/></td>
								<td><c:out value="${list.email}"/></td>
								<td><c:out value="${list.tel}"/></td>
								<td><c:out value="${list.regDate}"/></td>
								<td><c:out value="${list.userActive}"/></td>
								<td><c:out value="${list.confirmationCode}"/></td>
								<td><c:out value="${list.userInfo}"/></td>
								<td><c:out value="${list.preferredCurrencySeq}"/></td>								
							</tr>
				</c:forEach>
			</c:otherwise>		
		</c:choose>
	</tbody>
</table> --%>


<form method="GET" action="/member/memberGroupList">
	
	<select id="shOption" name="shOption" class="formcontents formTypeSelect delNY">
		<option><c:if test="${empty vo.shOption} ">selected</c:if>shOption</option>
		<option value="1" <c:if test="${vo.shOption eq 1} ">selected</c:if>>seq</option>
		<option value="2" <c:if test="${vo.shOption eq 1} ">selected</c:if>>dob</option>
		<option value="3" <c:if test="${vo.shOption eq 2} ">selected</c:if>>name</option>
		<option value="4" <c:if test="${vo.shOption eq 3} ">selected</c:if>>ActiveNY</option>
	</select>
	
	<p>Date: <input name="shValueDob" type="text" id="datepicker" placeholder="shValueDob"></p>
	
	<select id="shValueNY" name="shValueNY" class="formcontents formTypeSelect delNY">
		<option>shValueNY</option>
		<option value="0" <c:if test="${vo.shValueNY eq 0} ">selected</c:if>>N</option>
		<option value="1" <c:if test="${vo.shValueNY eq 1} ">selected</c:if>>Y</option>
	</select>							
	<input type="text" id="shValueSeq" name="shValueSeq" value="<c:out value="${vo.shValueSeq}"/>" placeholder="shValueSeq" class="formcontents formTypeSelect modDate">
	<input type="text" id="shValueName" name="shValueName" value="<c:out value="${vo.shValueName}"/>" placeholder="shValueName" class="formcontents formTypeSelect modDate">
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
				<th>seq</th>
				<th>name</th>
				<th>dob</th>
				<th>ActiveNY</th>
				
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${list}" var="list" varStatus="status">
				<tr>
					<td><c:out value="${list.seq}"/></td>
					<td><c:out value="${list.name}"/></td>
					<td><fmt:formatDate value="${list.dob}" dateStyle="default"/></td>
					<td><c:out value="${list.userActive}"/></td>				
				</tr>		
			</c:forEach>
		</tbody>
	</table>
	
</div>


</body>
</html>