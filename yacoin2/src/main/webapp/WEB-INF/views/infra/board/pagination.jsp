<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %> 
<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.6.1.js" integrity="sha256-3zlB5s2uwoUzrXK3BT7AX3FyvojsraNFxCc2vC/7pNI=" crossorigin="anonymous"></script>


<script>
	var form = $('form#paging');
	console.log(form);
	var goUrlList = "./ezenGroup/ezenBoard"
	goList = function(thisPage){
		$('input:hidden[name=thisPage]').val(thisPage);
		/* form.attr("action",goUrlList).submit(); */
		$('#submit').click();
	}
</script>

    <form id="paging" action="ezenBoard">
    	<input type="hidden" name="mainkey">
    	<input type="hidden" name="thisPage" value="<c:out value="${vo.thisPage}" default="1"/>">
    	<input type="hidden" name="rowNumToShow" value="<c:out value="${vo.rowNumToShow}"/>">
    	<input type="hidden" name="checkboxSeqArray">
    	<input type="hidden" name="checkboxSeqArray">
    	<input type="submit" id="submit" style="display:none;">
    </form>


<div class="container-fluid px-0 mt-2">

    <div class="row">
        <div class="col">
            <!-- <ul class="pagination pagination-sm justify-content-center mb-0"> -->
            <!-- 페이징되는 부분 -->
            <ul class="pagination justify-content-center mb-0">
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-left"></i></a></li> -->
				<!-- 시작페이지가 보여지는페이지수 보다 클 경우 -->
				<c:if test="${vo.startPage gt vo.pageNumToShow}"> <!-- gt 는 > -->
				                <li class="page-item">
					                <a class="page-link" href="javascript:goList(${vo.startPage - 1})">
					                	<
					                </a>
				                </li>
				</c:if>
				
				<c:forEach begin="${vo.startPage}" end="${vo.endPage}" varStatus="i">
					<c:choose>
						<c:when test="${i.index eq vo.thisPage}">
				                <li class="page-item active"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:when>
						<c:otherwise>             
				                <li class="page-item"><a class="page-link" href="javascript:goList(${i.index})">${i.index}</a></li>
						</c:otherwise>
					</c:choose>
				</c:forEach>  
				              
				<c:if test="${vo.endPage ne vo.totalPages}">  <!-- ne는 !=  -->            
				                <li class="page-item">
					                <a class="page-link" href="javascript:goList(${vo.endPage + 1})">
						                >
					                </a>
				                </li>
				</c:if>
                <!-- <li class="page-item"><a class="page-link" href="#"><i class="fa-solid fa-angles-right"></i></a></li> -->
            </ul>
        </div>
    </div>
</div>
전체데이터수 = ((현재페이지-) * 현재페이지에서 보여질 갯수 + index) = 
<c:out value="${vo.totalRows - ((vo.thisPage - 1) * vo.rowNumToShow + status.index) }"/>





