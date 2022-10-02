<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Developer.aspx.cs" Inherits="Developer" %>

<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="viewport" content="width=device-width, initial-scale=1">
<html>
<head>
<title>Swipe slider</title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
    <link rel="stylesheet" type="text/css" href="swiper.min.css">
   <style>
       body{
      background: linear-gradient(to right top, #d861ce, #be5ad6, #9e55de, #7254e5, #1254eb);
      font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
      font-size: 14px;
      display: flex;
      justify-content: center;
      color:#000;
      margin: 0;
      padding: 0;
      background-repeat: no-repeat;
    background-attachment:fixed;
    }
    .swiper-container {
      width: 100%;   
      padding-top: 50px;
      padding-bottom: 50px;
    }
    .swiper-slide {
      background-position: center;
      background-size: cover;
      width: 300px;
      height: 470px;
      background: #fff;   
    }
.swiper-slide .imgBx{
    width: 100%;
    height: 380px;
    overflow: hidden;
}

.swiper-slide .details{
    box-sizing: border-box;
    font-size: 20px;
    padding: 20px;
}
.swiper-slide .details h3{
    margin: 0;
    padding: 0;
    font-size: 20px;
    text-align: center;
    line-height: 20px;
}
.swiper-slide .details h3 span{
    font-size: 15px;
    font-family: sans-serif;
    color: #f44336;
}

.flip-box {
  background-color: transparent;
  width: 300px;
  height: 400px;
  border: 1px solid #f1f1f1;
  perspective: 1000px;
  position:relative;
           top: 112px;
           left: 3px;
       }

.flip-box-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
           top: 1px;
           left: 1px;
       }

.flip-box:hover .flip-box-inner {
  transform: rotateY(180deg);
}

.flip-box-front, .flip-box-back {
  position: absolute;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
}

.flip-box-front {
  background-color: #bbb;
  color: black;
}

.flip-box-back {
  background-color: #555;
  color: white;
  transform: rotateY(180deg);
}

/*Navigation bar*/
.nav {
  height: 100px;
  width: 100%;
  margin-right:50px;
  background-color:  rgba(0, 0, 0, 0.5);
  position: relative;
  top:0%;
  left:4%;
  position:fixed;
        left: 1px;
    }

.nav > .nav-header {
  display: inline;
}

.nav > .nav-header > .nav-title {
  display: inline-block;
  font-size: 22px;
  color: #fff;
  padding: 10px 10px 10px 10px;
}

.nav > .nav-btn {
  display: none;
}

.nav > .nav-links {
    margin-top:10px;
    margin-right:15px;
  display: inline;
  float: right;
  font-size: 22px;
}

.nav > .nav-links > a {
  display: inline-block;
  padding: 13px 10px 13px 10px;
  text-decoration: none;
  color: #efefef;
}

.nav > .nav-links > a:hover {
  background-color: #FFDD83;
}

.nav > #nav-check {
  display: none;
}

@media (max-width:600px) {
  .nav > .nav-btn {
    display: inline-block;
    position: absolute;
    right: 0px;
    top: 0px;
  }
  .nav > .nav-btn > label {
    display: inline-block;
    width: 50px;
    height: 50px;
    padding: 13px;
  }
  .nav > .nav-btn > label:hover,.nav  #nav-check:checked ~ .nav-btn > label {
    background-color: rgba(0, 0, 0, 0.3);
  }
  .nav > .nav-btn > label > span {
    display: block;
    width: 25px;
    height: 10px;
    border-top: 2px solid #eee;
  }
  .nav > .nav-links {
    position: absolute;
    display: block;
    width: 100%;
    background-color: #333;
    height: 0px;
    transition: all 0.3s ease-in;
    overflow-y: hidden;
    top: 50px;
    left: 0px;
  }
  .nav > .nav-links > a {
    display: block;
    width: 100%;
  }
  .nav > #nav-check:not(:checked) ~ .nav-links {
    height: 0px;
  }
  .nav > #nav-check:checked ~ .nav-links {
    height: calc(100vh - 50px);
    overflow-y: auto;
  }
}
 .auto-style1 {
            width: 107px;
            height: 100px;
        }
        .auto-style1 {
            position: absolute;
        }
     .bang {
            background-color:black;
            width:100%;
            position:absolute;
            bottom:-60%;
            font-family:Calibri;
            text-align:center;
            
            color:white;
           

        }
        .para {
            position:absolute;
            right:1%;
            bottom:5%;
        }

          @media screen and (max-width:700px) {
            .auto-style1 {
                display: none;
            }
            .bang {
                display: none;
            }
            .para {
                display: none;
            }
           
        }
   </style>
    </head>
    <body bgcolor:"white">
	<div class="about__section"> 
        
       
    
    <div>
    <div class="wrapper">
  
   <div class="nav">
  <input type="checkbox" id="nav-check">
  <div class="nav-header">
    <div class="nav-title">
      <img class="auto-style1" src="logo.png" />
    </div>
  </div>
  <div class="nav-btn">
    <label for="nav-check">
      <span></span>
      <span></span>
      <span></span>
    </label>
  </div>
  
  <div class="nav-links">
    <a  href="#" target="_blank">Home</a>
    <a href="contactus.aspx" target="_blank">Contact us</a>
    <a href="sign.aspx" target="_blank">Login</a>
    <a class="active" href="developer.aspx" target="_blank">Developer</a>
  
  </div>
</div>

	
</div>

    </div>
    <!--<div class="swiper-container">
    <div class="swiper-wrapper">
    <div class="swiper-slide">
        <div class="imgBx">
        <img src="11.jpeg" height="450px" width="300px">
        </div>    
        <div class="details">
        <h3>Gursharan Singh<br><span>Team Leader </span><a href="https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><span>gursharan.bassi.07@gmail.com</span></h3> </a>    
    </div>  
    </div>-->
      <!--<div class="swiper-slide">
        <div class="imgBx">
        <img src="6.jpg" height="450px" width="300px">
        </div>    
        <div class="details">
        <h3>Ankit Kala<br><span>Web Designer</span><br /><span>ankitkala90120@gmail.com</span></h3>     
    </div>  
    </div>-->
        <!--<div class="swiper-slide">
        <div class="imgBx">
        <img src="3.jpg" height="450px" width="300px">
        </div>    
        <div class="details">
        <h3>Sudhanshu Gupta<br><span>Database Administrator</span><br /><span>sudhanshu.2133@gmail.com</span></h3>     
    </div>  -->
    </div>
        <div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="11.jpeg" alt="Paris" style="width:300px;height:400px">
        <div class="details">
        <h3>Gursharan Singh<br><span>Web Designer </span><a href="https://accounts.google.com/ServiceLogin/signinchooser?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin"><span></span></h3> </a>    
    </div> 
    </div>
    <div class="flip-box-back">
      <h2>Gursharan Singh</h2>
      <h3>He was the person resposible with the core back end of this site. Always a enthusiast when it comes to "Quizes". Currently working for new trends in ASP.NET,PHP.<br>Gmail-gursharan.bassi.07@gmail.com</h3>
    </div>
  </div>
</div><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="3.jpg" alt="Paris" style="width:300px;height:400px">
        <div class="details">
        <h3>Sudhanshu Gupta<br><span>Database Administrator</span><br /><span></span></h3>     
    </div>
    </div>
      
    <div class="flip-box-back">
      <h2>Sudhanshu Gupta</h2>
      <h3>Imtian, with passion for handling tricky data. An Excellent person in DBMS. An Internet freak who can teach you if's and but's of the hardware and software together. Currently busy in PHP stuff.<br>Gmail-Sudhanshu.2133@gmail.com</h3>
    </div>
  </div>
</div><br /><br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        <div class="flip-box">
  <div class="flip-box-inner">
    <div class="flip-box-front">
      <img src="anshu.jpg" alt="Paris" style="width:300px;height:400px">
        <div class="details">
        <h3>Anshu Kumari<br><span>Web Designer</span><br /><span></span></h3>     
    </div>
    </div>
      
    <div class="flip-box-back">
      <h2>Anshu Kumari</h2>
      <h3>Imtian, with passion for handling tricky data. An Excellent person in DBMS. An Internet freak who can teach you if's and but's of the hardware and software together. Currently busy in PHP stuff.<br>Gmail-anshukumari766465@gmail.com</h3>
    </div>
  </div>
</div>

        <!--<div class="swiper-slide">
        <div class="imgBx">
        <img src="4.jpg" height="450px" width="300px">
        </div>    
        <div class="details">
        <h3>Sunny Kapoor<br><span>Web Designer</span><br /><span>sunnykapoor5625@gmail.com</span></h3>     
    </div> 
       
    </div>
        <div class="swiper-slide">
        <div class="imgBx">
        <img src="7.jpg" height="450px" width="300px">
        </div>    
        <div class="details">
        <h3>Roshan Shah<br><span>Content Writer</span><br /><span>shahroshan0458@gmail.com</span></h3>     
    </div>  
    </div>
        <div class="swiper-slide">
        <div class="imgBx">
        <img src="1222.jpg" height="450px" width="300px">
        </div>    
        <div class="details">
        <h3>Sachin Sharma<br><span>Content Writer</span><br /><span>ss9988216@gmail.com</span></h3>     
    </div>  
    </div>
    </div>-->     
               
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
  </div>    
    <script type="text/javascript" src="swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            effect: 'coverflow',
            grabCursor: true,
            centeredSlides: true,
            slidesPerView: 'auto',
            coverflowEffect: {
            rotate: 60,
            stretch: 0,
            depth: 500,
            modifier: 1,
            slideShadows: true,
            },
            pagination: {
                el: '.swiper-pagination',
            },
        });
  </script>
    </body>
    
    
</html>
