 $( function() {
   $( "#datepicker" ).datepicker({
	   changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	   	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	   	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	   dateFormat:"yymmdd",
		yearRange:'1900:2100'
   });
 } );
 
/*  $( function() {
	    $( "#datepicker" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	yearRange: "1700:2023"
	    });
	  } );
	  $( function() {
	    $( "#endDate" ).datepicker({
	    	changeMonth: true, // 월을 바꿀수 있는 셀렉트 박스를 표시한다.
	    	changeYear: true, // 년을 바꿀 수 있는 셀렉트 박스를 표시한다.
	    	dayNamesMin: ['월', '화', '수', '목', '금', '토', '일'],
	    	minDate: '-100y'
	    });
	  } ); */