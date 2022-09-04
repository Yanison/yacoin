<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
<title>CoinHwang</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
	
<link type="text/css" rel="stylesheet" href="../resources/css/root.css">


<!-- JavaScript Bundle with Popper -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
<link type="text/css" rel="stylesheet" href="../resources/js/root.js">


</head>
<body>



<div class="body-wrapper">
	
	
<div class="left-wrapper">
			
	<section class="left">
	<div class="left-navi-header">
	<div id="root_home" class="logo">코인황</div>
	
		<ul class="nav nav-tabs" data-pade="root_main">
		  <li class="nav-item">
		    <a id="nav-link-1" class="nav-link active" aria-current="page" href="./root_main">User</a>
		  </li>
		  <li class="nav-item">
		    <a id="nav-link-2" class="nav-link active" aria-current="page" href="./root_codegroup" style="border:none">코드그룹관리</a>
		  </li>
		  <li class="nav-item">
		    <a id="nav-link-3" class="nav-link active" aria-current="page" href="./root_code_manage" style="border:none">코드관리</a>
		  </li>
		</ul>
	
	</div>
	
	<div class="left-navi">
	
	
							
	<div class="accordion" id="accordionPanelsStayOpenExample">
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingOne">
	      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
	        코드그룹관리
	      </button>
	    </h2>
	    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse show" aria-labelledby="panelsStayOpen-headingOne">
	      <div class="accordion-body">
	        	<div id="nvai-code-empTable"class="accordion-body-menue">코드그룹 빈 테이블</div>
	        	<div id="nvai-code-Table" class="accordion-body-menue">코드그룹테이블</div>
	        	<div id="nvai-code-codemanage" class="accordion-body-menue">코드관리</div>
	        	
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingTwo">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false" aria-controls="panelsStayOpen-collapseTwo">
	        회원관리
	      </button>
	    </h2>
	    <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingTwo">
	      <div class="accordion-body">
	      		<div id="nvai-user-info" class="accordion-body-menue">회원 정보</div>
	      		<div id="nvai-user-2" class="accordion-body-menue">회원 문의</div>
	      		<div id="nvai-user-3" class="accordion-body-menue">회원 관리 메뉴</div>			      
	      </div>
	    </div>
	  </div>
	  <div class="accordion-item">
	    <h2 class="accordion-header" id="panelsStayOpen-headingThree">
	      <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseThree" aria-expanded="false" aria-controls="panelsStayOpen-collapseThree">
	        환경설정
	      </button>
	    </h2>
	    <div id="panelsStayOpen-collapseThree" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingThree">
	      <div class="accordion-body">
	      		<div class="accordion-body-menue">UI 관리</div>
	      		<div class="accordion-body-menue">환경설정 메뉴</div>
	      		<div class="accordion-body-menue">환경설정 메뉴</div>						      		
	      </div>
	    </div>
	  </div>
	</div>
	
	</div>
	</section>			
</div>

			
<div class="right-wrapper">  
				
<section class="right toggle1">
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
						name
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
							<td colspan="8">There is no data *데이터가 없으면 없다고 표시해주는 배려.</td>
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
</section>
</div>

		

	
</div>


</body>
</html>
