<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>



<form method="post" action="/codeGroup/main">								
	<select id="shOption" name="shOption" class="formcontents formTypeSelect delNY">
		<option value="">N</option>
		<option value="1"><c:if test="${empty vo.shOption} }">selected</c:if>검색구분</option>
		<option value="2"><c:if test="${vo.shOption eq 1} }">selected</c:if>코드그룹 코드</option>
		<option value="3"><c:if test="${vo.shOption eq 2} }">selected</c:if>코드그룹 이름(한글)</option>
		<option value="3"><c:if test="${vo.shOption eq 3} }">selected</c:if>코드그룹 이름(영문)</option>
	</select>
	<input type="text" id="shValue" name="shValue" value="<c:out value="${vo.shValue}"/>" placeholder="<c:out value="${vo.shValue}"/>" class="formcontents formTypeSelect modDate">
	<input type="submit">				
	<input class="formcontents formTypeDate dateStart" type="date" data-placeholder="날짜 선택">
	<input class="formcontents formTypeDate dateEnd" type="date" data-placeholder="날짜 선택">
</form>	