$(document).ready(function(){
	$('#root_home').on('click',function(){
		location.href="./root_main"
	});
	
	
	$('.codemeue1').click(function(){
		$('.toggle1').show();
		$('.toggle2').hide();
		$('.toggle3').hide();
	})
	
	$('.codemeue2').click(function(){
		$('.toggle1').hide();
		$('.toggle2').show();
		$('.toggle3').hide();
	})
	
	$('.codemeue3').click(function(){
		$('.toggle1').hide();
		$('.toggle2').hide();
		$('.toggle3').show();
	})
	
});