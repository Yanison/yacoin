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
				<form>								
					<select class="formcontents formTypeSelect delNY">
						<option value="">N</option>
						<option value="">Y</option>
						<option value="">Y</option>
						<option value="">Y</option>
					</select>
					<select class="formcontents formTypeSelect modDate">
						<option value="">N</option>
						<option value="">Y</option>
						<option value="">Y</option>
						<option value="">Y</option>
					</select>
					<input class="formcontents formTypeDate dateStart" type="date" data-placeholder="날짜 선택">
					<input class="formcontents formTypeDate dateEnd" type="date" data-placeholder="날짜 선택">
				</form>	
			</div>
			<div class="searchBar2">
				<form>								
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
	<div class="cgTableWrapper">
		<table class="cgTable">
			<colgroup>
				<col width="20px">
				<col width="30px">
				<col width="200px">
				<col width="">
				<col width="">
				<col width="">
				<col width="100px">
				<col width="150px"">
				<col width="150px">
			</colgroup>
			<thead>
				<tr>
					<th>
					<div><input type="checkbox" name="codecheck"></div>
					</th>
					<th>#</th>
					<th>
						코드그룹 이름(영)
					</th>
					<th>
						코드그룹 이름(한)
					</th>
					<th>
						코드갯수
					</th>
					<th>
						코드
					</th>
					<th>
						등록일
					</th>
					<th>
						수정일
					</th>
				</tr>
			</thead>
			<tbody class="cgBody">		
				<c:choose>
					<c:when test="${fn:length(list) eq 0}">
						<tr>
							<td colspan="8">There is no data *데이터가 없으면 없다고 표시해주는 배려하지만.</td>
						</tr>
					</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
								<tr>
									<td><input type="checkbox" name="codecheck"></td>
									<td><c:out value="${list.cgseq }"/></td>
									<td><c:out value="${list.cgname }"/></td>
									<td><c:out value="${list.cgnameEng }"/></td>
									<td><c:out value="${list.xcnt }"/></td>
									<td></td>
									<td></td>
									<td></td>
								</tr>		
							</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
