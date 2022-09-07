<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<style>
table{
border-collapse:collapse;
padding:5px;
}

th {
text-align:left;
border: 1px solid #999
}

td {
text-align:left;
border: 1px solid #eee
}


body{
position:relative;
}
.wrapper{
position:absolute;
top:50%;
left:50%;
transform:translate(-50%,-50%);
}
.formDiv{
display:flex;
justify-content:space-between;
align-items:center;
}

.insertlink{
text-decoration:none;
width:35px;
height:25px;
text-align:center;
line-height:26px;
border:1px solid #333;
background:#eee;
border-radius:5px;
margin-left:10px;
}

.tablewrapper{
width:780px;
height:206px;
overflow:scroll;
border: 1px solid #eee
}
</style>
<div class="wrapper">
<div class="formDiv">
<form method="get" action="/codeGroup/codeGroupList">								
	<select id="shValueSeq" name="shValueSeq" class="formcontents formTypeSelect delNY">
		<option value="">cgname</option>
		<c:forEach items="${cgname}" var="cgname" varStatus="status">
			<option value="<c:out value="${cgname.cgseq}"/>"> <c:out value="${cgname.cgnameEng}"/></option>
		</c:forEach>
	</select>
	<input type="text" id="shValueName" name="shValueName" placeholder="" class="formcontents formTypeSelect modDate">
	<input type="submit" value="찾기">
</form>
<div>
	<a class="insertlink" href="/codeGroup/codeGroupMod">수정</a>
	<a class="insertlink" href="/codeGroup/codeGroupForm">신규</a>
</div>

</div>

<div class="tablewrapper">
	<table>
		<colgroup>
			<col width="200">
			<col width="200">
			<col width="200">
			<col width="200">
			<thead>
				<tr>
					<th>cgseq</th>
					<th>cgnameEng</th>
					<th>cgname</th>
					<th>ccgname</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td colspan="4" style="text-align:center;"> 데이타가 없어요</td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach items="${list}" var="list" varStatus="status">
							<tr>
								<td><c:out value="${list.cgseq}"/></td>
								<td><c:out value="${list.cgname}"/></td>
								<td><c:out value="${list.cgnameEng}"/></td>
								<td><c:out value="${list.ccgname}"/> </td>
							</tr>
						</c:forEach>
					</c:otherwise>
				</c:choose>			
			</tbody>
		</colgroup>
	</table>
	
</div>
</div>


