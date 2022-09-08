<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>	
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<%@ page session="false" %>

<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>




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

.jsclass{
width:400;
height:400;
position:absolute;
top:20;
right:20;
background:#eee;
padding:10px;
}
</style>

<div class="wrapper">
	<div class="insertExample">
	<button id="js" onclick="test()" value=2>js</button>
	<button id="jquery">jquery</button>
		<p>CodeGroupForm</p>
		<!-- cginsert -->
		<form id="cginsert" name="cginsert" method="post" action="/codeGroup/codeGroupInstCg" style="margin-bottom:20px; padding-bottom:10px; border-bottom:1px solid #333;">
			<p>CG INSERT</p>
			<div class="insertCgBox" style="margin-bottom:20px; padding-bottom:10px;">
				<input type="text" id="cgnameEng" name="cgnameEng" placeholder="cgnameEng" >
			</div>
			
			<input id="cginsert2" type="submit" value="cginsert">
			<script>
					$(document).ready(function(){
						$('#cginsert2').click(function(){
							var cgnameEng = $('#cgnameEng').val();
							if(cgnameEng == ""){
								alert('cgnameEng is empty')
								return false;
							}
						})						
					});
				</script>
				
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
			
			<input id="ccginsert2" type="submit" value="ccginsert">
			
			<script>
					$(document).ready(function(){
						$('#ccginsert2').click(function(){
							var ccgname = $('ccgname').val();
							var cgname = $('cg_cg').val();
							alert(cg_cg)
							if(cg_cg == undefined){
								alert('cgname is empty')
								return false;
							}
							alert(ccgname)
							if(ccgname == ""){
								alert('ccgname is empty')
								return false;
							}
						})						
					});
				</script>
		</form>	
		<a href="/codeGroup/codeGroupList" class="insertlink">Back</a>
	</div>
</div>


<div class="jsclass"> 
	<input id="name" name="name" type="text" placeholder="이름">
	<select id="telecom" name="telecom">
		<option>통신사</option>
		<option value="skt">skt</option>
		<option value="kt">kt</option>
		<option value="lg">lg</option>
	</select>
	<label>남자<input type="radio" name="gender" value="men"></label>
	<label>여자<input type="radio" name="gender" value="women"></label>
	<label>기타<input type="radio" name="gender" value="etc"></label>
	
	<form method="get" action="/codeGroup/codeGroupForm">
		<div >
		<input name="ccgseq" type="text" placeholder="ccgseq">
		<input type="submit">
		<input type="text" placeholder="<c:out value="${item.ccgseq}"/> / <c:out value="${item.ccgname}"/>">
		</div>
		
		
	</form>
	
</div>

<script>
function test(){
	alert("test");
	alert(document.getElementById('name').value);
	alert(document.getElementById('telecom').options[document.getElementById('telecom').selectedIndex].value);
	alert(document.querySelector("input[name='gender']:checked").value);
	return false;
}
</script>
