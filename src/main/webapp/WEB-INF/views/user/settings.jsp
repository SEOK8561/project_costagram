<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" />
    <title>demasia</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            min-width: 630px;
            background-color: #fafafa;
            min-height: 900px;
        }

        a {
            color: black;
            text-decoration: none;
        }

        header {
            width: 100%;
            position: fixed;
            top: 0px;
            background-color: white;
            display: grid;
            padding: 10px;
            grid-template-columns: 1fr 1fr 1fr;
            justify-content: center;
            text-align: center;
            align-items: center;
            border: 1px solid gainsboro;
        }

        header img {
            height: 40px;

        }

        .search {
            position: relative;
            display: inline-block;
            width: 150px;
            margin: 0 auto;
            height: 30px;
        }

        .material-icons {
            position: absolute;
            left: 37%;
            top: 15%;
            font-size: 15px;
            color: gainsboro;
        }

        header input {
            width: 100%;
            padding-left: 20px;
            text-align: center;
        }

        hr {

            height: 40px;
            width: 0;
            background-color: black;
            border-color: black;
            display: inline-block;
        }

        nav a {
            padding: 0px 10px;
        }

        main {
            
            height: 100%;
            margin: 106px 15% 40px;
            background-color: white;
            border: 1px solid gainsboro;
            display: grid;
            grid-template-columns: 1fr 3fr;
        }

        main>div {
            border: 1px solid gainsboro;


        }

        .main1>div {

            text-align: center;
            font-size: 17px;
            
            border-left:white solid 2px;
        }

        .main1> div >a {
            width: 100%;
            padding: 20px 20px 20px 18px ;
            display: inline-block;
            
            
            
        }

        .main1>div:hover{

            
            border-left-color: gainsboro ;
        }

        footer {
            display: grid;
            grid-template-columns: repeat(12, 1fr);
            font-size: 12px;
            text-align: center;
            height: 100px;
            margin: 0 15%;
        }
        input:focus {
    outline: none;
                }
                input[type=text]:focus {
                    text-align: start;

                }
                
        .copyright {
            color: gainsboro;
        }

        .menu4 {
            border-left-color: black !important;
            
        }

        .main2{
            padding: 20px 50px;;
        }
        .main2 span{
            font-weight: 900;
        }
        .main2 p{
            color:rgb(168, 168, 168);
        }
    </style>
</head>

<body>
    <header>
        <div>
            <img src="/image/media/icon-1562139_960_720.png" alt="x">
            <hr />
            <img src="/image/media/insta.png" alt="X">
        </div>
        <div class="search">
            <input type="text" placeholder="검색" />
            <i class="material-icons">search</i>
        </div>
        <nav>
            <a href="/explore"><img src="/image/media/circle.jpg" alt=""></a>
            <a href="#"><img src="/image/media/heart.jpg" alt=""></a>
            <a href="/user/${user.id}"><img src="/image/media/man.jpg" alt=""></a>
        </nav>
    </header>
    <main>

       <div class="main1">

            <div class="menu1"><a href="/user/edit">프로필 편집</a></div>
            <div class="menu2"><a href="/user/change">비밀번호 변경</a></div>
            <div class="menu3"><a href="/user/manage_access">허가된앱</a></div>

            <div class="menu4"><a href="/user/settings">이메일 및 SMS</a></div>
            <div class="menu5"><a href="/user/contact_history">연락처 관리</a></div>
            <div class="menu6"><a href="/user/privacy_and_security">공개 범위 및 보안</a></div>
        </div>
        <div class="main2">
            <h2>받아보기:</h2>
            <br />
            <form action="">
                <input type="checkbox" value checked /><span> 뉴스 이메일</span>
                <p>새로운 제품에 대한 소식을 가장 먼저 받아보세요.</p>
                <br />
                <input type="checkbox" value checked /><span> 알림 이메일</span>
                <p>유용한 최신 정보를 빠짐없이 받아보세요.</p>
                <br />
                <input type="checkbox" value checked /><span> 제품 이메일</span>
                <p>Instagram 도구 사용에 대한 팁을 확인해보세요.</p>
                <br />
                <input type="checkbox" value checked /><span> 설문 조사 이메일</span>
                <p>의견을 보내 조사 연구에 참여하세요.

                    </p>
                <br />
                <input type="checkbox" value checked /><span> SMS 메시지</span>
                <p>SMS로 알림을 받아보세요.</p>
                <br />

            </form>
        </div>
    </main>
    <footer>
        <div><a href="#">INSTARGRAM 정보</a></div>
        <div><a href="#">지원</a></div>
        <div><a href="#">홍보 센터</a></div>
        <div><a href="#">API</a></div>
        <div><a href="#">채용 정보</a></div>

        <div><a href="#">개인정보처리방침</a></div>
        <div><a href="#">약관</a></div>
        <div><a href="#">디렉터리</a></div>
        <div><a href="#">프로필</a></div>
        <div><a href="#">해시태그</a></div>

        <div><a href="#">언어</a></div>
        <div>
            <p class="copyright">©️2019 INSTARGRAM</p>
        </div>
        <div></div>

    </footer>

</body>

</html>