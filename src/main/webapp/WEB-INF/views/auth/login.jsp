<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Document</title> 
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
    <style>
        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        body{
            background-color: rgb(250, 250, 250);
        }
        .container{
        	
            width: 700px;
            margin: 0 auto;
            text-align:center;
        	
        }
        .box {
        	
        }

        .image{
            margin-top: 20px;
        }
        .bigbox{
            width: 400px;
            border: 1px solid lightgray;
            text-align: center;
        }
        .smallbox{
            width: 400px;
            border: 1px solid lightgray;
            
        }
        .table{
            margin: 10px;
            display: inline-block;
        }
        .text{
            font-size: 12px;
            margin: 20px;
            text-align:center;
        }
        .hr{
            width: 30%;
            border: 1px solid lightgray;
            display: inline-block;
            font-size: 12px;
        }
        input[type=text]{
            height: 31.3px;
            width: 268.02px;
            background-color: rgb(250, 250, 250);
            border: 1px solid lightgray;
            padding: 19px;
            margin: 2px;
            
        }
        input[type=password]{
            height: 31.3px;
            width: 268.02px;
            background-color: rgb(250, 250, 250);
            border: 1px solid lightgray;
            padding: 19px;
            margin: 2px;
        }
        input[type=button], input[type=submit]{
            height: 31.3px;
            width: 268.02px;
            background-color: #3897F0;
            border-radius: 5px;
            border: 0px;
            color: white;

        }
        i{
            height: 31.3px;
            width: 268.02px;
            background-color: #3897F0;
            border-radius: 5px;
            border: 0px;
            color: white;
            padding: 9px 0px;
        }
      footer{
        display: block;
        position: relative;
      }

      p {
      	width:400px;
      }  
       
      }
      .under li{
          display: inline-block;
          padding: 5px;
          margin-top: 60px;
      }
      .under1{
          font-size: 10px;
          text-decoration: none;
          color: skyblue;
      }
      .box {
      	margin: 50px;
      	width:400px;
      	display:inline-block;
      }
      

    </style>
</head>
<body>
    <div class="container">
    	<div class="box">
        <div class="bigbox">
        	
            <div><img src="/image/auth/font.png" alt="x" class="image"></div>
            <br />
            <div><a href="#"><i class="fab fa-facebook-square"> Facebook으로 로그인</i></a></div>
            <div class="text"><hr class="hr" />  또는  <hr class="hr" /></div>
            <form action="/auth/loginProc" method="post">
	            <table class="table">
	                <tr>
	                    <td><input type="text" name="username" placeholder="사용자 이름" ></td>
	                </tr>
	                <tr>
	                    <td><input type="password" name="password" placeholder="비밀번호" ></td> 
	                </tr>
	            </table>
	            <input type="submit" value="로그인">
            </form>
            <p class="text"><a href="#" class="under1">비밀번호를 잊으셨나요?</a></p>
        </div>
        <div class="smallbox">
        <div class=text>계정이 없으신가요? <a href="/auth/join" class="under1">회원가입</a></div>
        </div>
    	</div>
    </div>


</body>
</html>