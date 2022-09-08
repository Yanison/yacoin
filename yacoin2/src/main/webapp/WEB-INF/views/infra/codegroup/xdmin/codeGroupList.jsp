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
table{
border-collapse:collapse;
padding:5px;
font-size:11px;
}

th {
text-align:left;
border: 1px solid #999
}

td {
text-align:left;
border-bottom: 1px solid #eee;
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
.formWrap{
margin-bottom:20px;
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

<script>
$(document).ready(function(){
	$('#testbtn').click(function(){
			alert('123')
		 	var chkArray = new Array();
			var ccgseq = $("input[name='ccgseqFordel']")
		    $("input[name='ccgseqFordel']:checked").each(function() { 
		      var tmpVal = $(this).val(); 
		      var tdVal = $('td[name=ccgseq]').val(tmpVal);
		      console.log(typeof(tdVal));
		      chkArray.push(tmpVal);
		    });

		    if( chkArray.length < 1 ){
		      alert("값을 선택해주시기 바랍니다.");
		      return;
		    }
		    console.log(chkArray);	// (2) ["A", "B"]
		    
		    var checkedLength = $("input:checkbox[name=ccgseqFordel]:checked").length
		    console.log('체크된 갯수 : '+checkedLength);
			
		    var a = $('#checkedLegnth').val(checkedLength);
			$('#checkedLegnth').text(a);
			
			console.log($('#checkedLegnth').val());	
	})
})
</script>



<div class="wrapper">
<div class="formWrap">
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
			<span>체크된 갯수 <i id="checkedLegnth">num</i></span>
		</form>
		
		<div>
			<a id="delete" class="insertlink" href="/codeGroup/codeGroupListDlt">삭제</a>
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
								<td><input type="checkbox" id="ccgname" name="ccgname" value="<c:out value="${list.ccgname}"/>"><c:out value="${list.cgseq}"/></td>
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

<div class="formWrap">
<button id="testbtn">test</button>
	<div class="formDivDel"> 
		<form method="get" action="/codeGroup/codeGroupList">								
			<select id="shValueSeq" name="shValueSeq" class="formcontents formTypeSelect delNY">
				<option value="">cgname</option>
				<c:forEach items="${cgname}" var="cgname" varStatus="status">
					<option value="<c:out value="${cgname.cgseq}"/>"> <c:out value="${cgname.cgnameEng}"/></option>
				</c:forEach>
			</select>
			<input type="text" id="shValueName" name="shValueName" placeholder="" class="formcontents formTypeSelect modDate">
		</form>
	
	</div>
	
	<div class="tablewrapper">
		<table>
			<colgroup>
				<col width="100">
				<col width="100">
				<col width="200">
				<col width="200">
				<col width="200">
				<thead>
					<tr>
						<th>cgseq</th>
						<th>ccgseq</th>
						<th>cgnameEng</th>
						<th>cgname</th>
						<th>ccgname</th>
					</tr>
				</thead>
				<tbody>
					<c:choose>
						<c:when test="${fn:length(list) eq 0}">
							<tr>
								<td colspan="5" style="text-align:center;"> 데이타가 없어요</td>
							</tr>
						</c:when>
						<c:otherwise>
							<c:forEach items="${list}" var="list" varStatus="status">
								<tr>
									<td name="ccgseq"><input type="checkbox" id="ccgseq" name="ccgseqFordel" value="<c:out value="${list.ccgseq}"/>"><c:out value="${list.cgseq}"/></td>
									<td><c:out value="${list.ccgseq}"/></td>
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
		<!-- 인서트는 텍스트 인풋에 문자열을 넣으면 인풋 태그의 발류에 할당이 되고 인풋 태그의 name으로 컨트롤러에게 감지가 되어서 서버단으로 데이터가 넘어간다. 
			체크로 했을때, 체크된 객체에 발류값을 할당하고 네임으로 감지가 되도록,하면 되지 않을까? 그럼 td에 name과 발류값을 주면 될 것 같다. 
			
			혹은 jstl에서 체크된 체크박스들을 배열로 가져오고 반복문으로 배열에 담긴 값들을 하나씩 컨트롤러로 보내면 되지 않을까? 
			 -->
	</div>
	
</div>

</div>


