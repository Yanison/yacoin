$(document).ready(function(){	
	$('#empTable').click(function(){
		
		$('.empTable').show();
		$('.isTable').hide();
		$('.codeManage').hide();
		$('.memberInfo').hide();
	})
	
	$('#nvai-code-Table').click(function(){
		
		$('.empTable').hide();
		$('.isTable').show();
		$('.codeManage').hide();
		$('.memberInfo').hide();
	})
	
	$('#nvai-code-codemanage').click(function(){
		console.log('codemanage');
		$('.empTable').hide();
		$('.isTable').hide();
		$('.codeManage').show();
		$('.memberInfo').hide();
	})
	
	$('#nvai-user-info').click(function(){
		console.log('nvai-user-info');
		$('.empTable').hide();
		$('.isTable').hide();
		$('.codeManage').hide();
		$('.memberInfo').show();
	})
	
});