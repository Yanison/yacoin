<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>



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
