
// 슬라이드배너  //반드시 코딩하여야 한다.
start();
var imgs = 2;
var now = 0;
function start(){
	$(".slide>img").eq(0).siblings().css({"margin-left":"-2000px"});
	setInterval(function(){slide();},2000);
}
function slide(){
	now = now==imgs?0:now+=1;
	$(".slide>img").eq(now-1).css({"margin-left":"-2000px"});	
	$(".slide>img").eq(now).css({"margin-left":"0px"});
}


// 모달창
$(".popup1").click(function (){
	$("#modal1").addClass("active");
});
$(".close button").click(function (){
	$("#modal1").removeClass("active");
	
});

$(".popup2").click(function (){
	$("#modal2").addClass("active");
});
$(".close button").click(function (){
	$("#modal2").removeClass("active");
	
});
