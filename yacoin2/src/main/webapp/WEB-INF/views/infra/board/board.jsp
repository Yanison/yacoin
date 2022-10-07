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
<form method="GET" action="/memberGroup/memberGroupList">
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

<!-- Paging[s] -->

<div class="col-sm-12 col-md-7" style="text-align:right">
<div class="dataTables_paginate paging_simple_numbers" id="dataTable_paginate">
  <ul class="pagination">
  
  <c:if test="${searchVO.prev}">
  <li class="paginate_button page-item previous" id="dataTable_previous">
 		 <a href="javascript:void(0);" onclick="fn_go_page(${searchVO.startDate - 1}); return false;" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
  </li>
  </c:if>
  
  <c:forEach var="num" begin="${searchVO.startDate}" end="${searchVO.endDate}">
  <li class="paginate_button page-item">
 		 <a href="javascript:void(0);" onclick="fn_go_page(${num}); return false;" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">${num}</a>
  </li>
  </c:forEach>
  
  <c:if test="${searchVO.next}">
  <li class="paginate_button page-item next" id="dataTable_next">
 		 <a href="javascript:void(0);" onclick="fn_go_page(${searchVO.endDate + 1}); return false;" aria-controls="dataTable" data-dt-idx="0" tabindex="0" class="page-link">Next</a>
  </li>
  </c:if>
  </ul>
</div>
</div>
<!-- Paging[e] -->


</body>
</html>