<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<style>
.wrapper{
width:100%;
height:100%;
position:relative;
}

.insertExample{
width:300px;
height:300px;
position:absolute;
top:50%;
left:50%;
transform: translate(-50%, -50%);
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
}

.insertBox{
display:flex;
}
</style>
<div class="wrapper">
	<div class="insertExample">
		<p>codeGroupForm</p>
		<!-- cginsert -->
		<form id="cginsert" name="cginsert" method="post" action="/codeGroup/codeGroupInstCg" style="margin-bottom:20px; padding-bottom:10px; border-bottom:1px solid #333;">
			<p>CG INSERT</p>
			<div class="insertCgBox" style="margin-bottom:20px; padding-bottom:10px;">
				<input type="text" id="cgnameEng" name="cgnameEng" placeholder="cgnameEng" >
			</div>	
			<input type="submit" value="cginsert">		
		</form>
		<!-- ccginsert -->
		<form id="ccginsert" name="ccginsert" method="post" action="/codeGroup/codeGroupInst">
			<p>CCG INSERT</p>
			<div class="insertCcgBox" style="margin-bottom:10px;">
				<select id="cg_cg" name="cg_cg" class="insertCgBox">
					<!-- 옵션들의 값은 select name으로 반환된다.  -->
					<option >cgname</option>
					<c:forEach items="${cgname}" var="cgname" varStatus="status">
						<option value="<c:out value="${cgname.cgseq}"/>"> <c:out value="${cgname.cgnameEng}"/></option>
					</c:forEach>
				</select>
				<input type="text" id="ccgname" name="ccgname" placeholder="ccgname">
			</div>				
			<input type="submit" value="ccginsert">
		</form>	
		<a href="/codeGroup/codeGroupList" class="insertlink">Back</a>
	</div>
	
</div>

