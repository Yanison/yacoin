<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

	<header class="head-box">
		<div class="logo-box"></div>
	</header>
	<div class="search-bar">				
		<div class="searchBar">
			<div class="searchBar1">
				<form method="post" action="/codeGroup/main">								
					<select id="shOption" name="shOption" class="formcontents formTypeSelect delNY">
						<option value="">N</option>
						<option value="1"><c:if test="${empty vo.shOption} }">selected</c:if>검색구분</option>
						<option value="2"><c:if test="${vo.shOption eq 1} }">selected</c:if>코드그룹 코드</option>
						<option value="3"><c:if test="${vo.shOption eq 2} }">selected</c:if>코드그룹 이름(한글)</option>
						<option value="3"><c:if test="${vo.shOption eq 3} }">selected</c:if>코드그룹 이름(영문)</option>
					</select>
					<input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>" placeholder="" class="formcontents formTypeSelect modDate">
					<input type="submit">				
					<input class="formcontents formTypeDate dateStart" type="date" data-placeholder="날짜 선택">
					<input class="formcontents formTypeDate dateEnd" type="date" data-placeholder="날짜 선택">
				</form>	
			</div>
			<div class="searchBar2">
				<form method="post" action="infra/codegroup/xdmin/main">								
					<select class="formcontents formTypeSelect delNY">
						<option value="">검색구분</option>
						<option value="">Y</option>
						<option value="">Y</option>
						<option value="">Y</option>
					</select>
					<input class="formcontents formTypeSearch " type="search">
				</form>	
			</div>
		</div>
		<nav aria-label="Page navigation example">
		  <ul class="pagination">
		    <li class="page-item"><a class="page-link" href="#">Previous</a></li>
		    <li class="page-item"><a class="page-link" href="#">1</a></li>
		    <li class="page-item"><a class="page-link" href="#">2</a></li>
		    <li class="page-item"><a class="page-link" href="#">3</a></li>
		    <li class="page-item"><a class="page-link" href="#">Next</a></li>
		  </ul>
		</nav>
		<div class="UMbox">
			<button type="button" class="btn btn-info">등록</button>
			<button type="button" class="btn btn-info">수정</button>	
		</div>						
	</div>
	<div>
		<c:forEach items="${volist}" var="list" varStatus="status">
			<c:out value="${volist.ccgseq}"/> / <c:out value="${volist.ccgname}"/>
		</c:forEach>
	</div>
