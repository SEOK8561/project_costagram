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
            text-align: center;
            background-color: rgb(250, 250, 250);
        }
        main{
            display: inline-block;
            height: 800px
        }
        .container{
            width: 700px;
            margin: 10px;
            display: grid;
            grid-template-columns: auto auto;
            justify-content: center;
            grid-column-gap: 30px;
            grid-row-gap: 10px;
        }
        .instagram{
            grid-row: 1/4 span;
            margin-top: 30%
        }
        .image{
            margin-top: 20px;
        }
        .bigbox{
            width: 100%;
            border: 1px solid lightgray;
            grid-column: 2/1 span;
            text-align: center;
        }
        .smallbox{
            width: 100%;
            border: 1px solid lightgray;
            
        }
        .table{
            margin: 10px;
            display: inline-block;
        }
        .text{
            font-size: 12px;
            margin: 20px;
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
      .get{
          display: grid;
          grid-template-columns: auto auto auto;
          grid-gap: 10px;
      }
      footer{
        display: block;
        position: relative;
      }
      .under{
        grid-column: 1/2 span;
        
       
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
      

    </style>
</head>
<body>
    <main>
    <div class="container">
        <div class="instagram"><img src="/image/auth/insta.png" alt="x" width="300" height="500" ></div>
        <div class="bigbox">
            <div><img src="/image/auth/font.png" alt="x" class="image"></div>
            <p class="text">친구들의 사진과 동영상을 보려면 가입하세요.</p>
            <div><a href="#"><i class="fab fa-facebook-square"> Facebook으로 로그인</i></a></div>
            <div class="text"><hr class="hr" />  또는  <hr class="hr" /></div>
            <form action="/auth/create" method="post">
	            <table class="table">
	                <tr>
	                    <td><input type="text" name="email" placeholder="이메일 주소" ></td>
	                </tr>
	                <tr>
	                    <td><input type="text" name="name" placeholder="성명" ></td>
	                </tr>
	                <tr>
	                    <td><input type="text" name="username" placeholder="사용자 이름" ></td>
	                </tr>
	                <tr>
	                    <td><input type="password" name="password" placeholder="비밀번호" ></td> 
	                </tr>
	            </table>
	            <input type="submit" value="가입">
            </form>
            <p class="text">가입하면 Instagram의 약관, 데이터 정책 및 쿠키 정책에 동의하게 됩니다.</p>
        </div>
        <div class="smallbox">
        <div class=text>계정이 있으신가요? <a href="/auth/login" class="under1">로그인</a></div>
        </div>
        <P class="text">앱을 다운로드 하세요</P>
        <div class="get">
            <div class="get1"><a href="#"><img src="/image/auth/apple.png" alt=""></a></div>
            <div class="get1"><a href="#"><img src="/image/auth/google.png" alt=""></a></div>
            <div class="get1"><a href="#"><img src="/image/auth/micro.png" alt=""></a></div>
        </div>
        <div class="under">
                <ui>
                <li><a href="#" class="under1">지원</a></li>
                <li><a href="#" class="under1">홍보 센터</a></li>
                <li><a href="#" class="under1">API</a></li>
                <li><a href="#" class="under1">채용 정보</a></li>
                <li><a href="#" class="under1">개인정보처리방침</a></li>
                <li><a href="#" class="under1">약관</a></li>
                <li><a href="#" class="under1">디렉터리</a></li>
                <li><a href="#" class="under1">프로필</a></li>
                <li><a href="#" class="under1">해시태그</a></li>
                <li><a href="#" class="under1">언어</a></li>
                <li><a href="#" class="under1">INSTGRAM 정보</a></li>
            </ui>
        </div> 
    </div>
               
        
</main>

</body>
</html>