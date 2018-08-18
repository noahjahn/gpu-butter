$(document).ready(function(){

	$("#gameSelection1").click(function(){
		gameClicked($(this),1)
	});
	$("#gameSelection2").click(function(){
		gameClicked($(this),2)
	});
	$("#gameSelection3").click(function(){
		gameClicked($(this),3)
	});
	$("#gameSelection4").click(function(){
		gameClicked($(this),4)
	});
	$("#gameSelection5").click(function(){
		gameClicked($(this),5)
	});
	$("#gameSelection6").click(function(){
		gameClicked($(this),6)
	});
	$("#gameSelection7").click(function(){
		gameClicked($(this),7)
	});
	$("#gameSelection8").click(function(){
		gameClicked($(this),8)
	});
	$("#gameSelection9").click(function(){
		gameClicked($(this),9)
	});


	function gameClicked(button,index){
		if(button.attr('value') == '0'){
			button.css({"border": "solid #4dd0e1 6px",
			 "width": "105%",
			 "border-radius":"20px",
			 "opacity": "1.0",
			});
			button.attr('value','1');
			resetGameButton(index,'1');
			
		}else{
			button.css({"border": "none",
			 "width": "100%",
			 "border-radius":"20px",
			 "opacity": "1.0",
			});
			resetGameButton(index,'0');
			button.attr('value','0');
		}
	}

	function test() {
		alert('reset');
	}

	function resetGameButton(index,value){
		$('#game'+index).attr('value',value);	
	};

	$("#submit").click(function(){
		orderScreenAnimation(true,2);
	});


  var pagePostion = 0;
  var lastPostion = $("#page0").offset().top +500;
  var flag = true;
  var curPos = 0;
  var numOfPages = 2;

  $(window).scroll(function(event){
    if(flag){
      curPos = $(this).scrollTop();
      console.log(curPos);
      if(curPos > lastPostion + 500 && (pagePostion < numOfPages)){
          pagePostion++;
          orderScreenAnimation(false,pagePostion);
          flag = false
      }else if( curPos < lastPostion && (pagePostion > 0)){
          pagePostion--;
          orderScreenAnimation(true,pagePostion);
          flag = false
      }
    }
  })

  function orderScreenAnimation(dir,pagePostion){
    var position = $("#page"+pagePostion).offset().top;

    
    lastPostion = position;
    curPos = 0;
    

    console.log('position:'+lastPostion);
    console.log('curpos:'+curPos);
    $("HTML").animate({ scrollTop: position }, 1000,function(){ 
      flag = true;
      if(dir == false){
        curPos = 0;
      }
    });
  }



});

	/*SELECT * FROM(
SELECT Series as type,MAX(sumFPS)FROM(
SELECT Series,SUM(Fps) as sumFPS FROM Fps
WHERE Series IN (SELECT type FROM Gpu
                WHERE Price >= 1000)
GROUP BY Series) temp)temp NATURAL JOIN Gpu
WHERE price >= 1000 AND price <= 1200*/