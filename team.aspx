<%@ Page Language="C#" AutoEventWireup="true" CodeFile="team.aspx.cs" Inherits="team" %>



<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html>
<head>
</head>
<style>
html,body {
    background: linear-gradient(to right top, #d861ce, #be5ad6, #9e55de, #7254e5, #1254eb);
    background-repeat: no-repeat;
    background-attachment:fixed;
  padding:0;
  margin:0;

}

.about__section {
  width:960px;
  margin:auto;
}

.about__section .about__slot {
  width:33%;
  box-sizing: border-box;
  /* background-color:#f5f5f5;*/
  /*border:1px solid #ccc;*/
  height:15vw;
  min-height:300px;
  min-width:220px;
  display:inline-block;
  vertical-align:top;
  text-align:center;
  cursor:pointer;
  position:relative;
  background-size:0% auto;
  -webkit-transition:all 0.3s linear;
  background-position:center center;
  background-repeat:no-repeat;
  overflow:hidden;
        top: 122px;
        left: 13px;
        border-right-style: none;
        border-right-color: inherit;
        border-right-width: medium;
        border-top-style: none;
        border-top-color: inherit;
        border-top-width: medium;
    }

.about__slot .bioText {
  opacity:0;
  color:rgba(242,242,242,0);
  pointer-events:none;
  position:absolute;
  top:350px;
  left:0;
  right:0;
  padding:10%;;
  padding-top:25px;
  padding-bottom:25px;
  width:80%;
  height:0;
  -webkit-transition:all 0.3s linear;
  margin:auto;
}

.about__slot.bio .about__info {
  top:0px;
  bottom:200px;
  background-color:rgba(0,0,0,0.42);
  box-shadow:inset 0px -5px 10px 0 rgba(0,0,0,1);
}

.about__slot.bio .bioText  {
  opacity:1;
  border-radius:0;
 position:absolute;
  top:50px;
  padding-top:200px;
  left:0;
  right:0;
  bottom:0;
  width:80%;
  height:250px;
  color:rgba(255,255,255,1);
  background-color:rgba(42,42,42,0.7);
  z-index:8;
  margin:auto;
  font-family:sans-serif;
  overflow:auto;
}

.about__slot .about__info {
  position:absolute;
  left:0;
  bottom:0;
  top:210px;
  right:0;
  pointer-events:none;
  z-index:9;
  -webkit-transition:all 0.3s linear;
  
}
/*BOOM */
.about__slot .headshot {
  margin:auto;
  margin-top:19px;
  width:172px;
  height:172px;
  /*border:10px double #424242;*/
  background-size:200px 200px;
  background-position:center 15%;
  border-radius:100%;
  box-shadow:0px 2px 10px 2px rgba(0,0,0,0.42);
  -webkit-transition:all 0.1s ease-in-out;
}

.about__slot.bio .headshot {
  -webkit-filter:blur(3px);
  opacity:1;
  width:100%;
  height:300px;
  border-radius:0;
  margin-top:0;
  background-size:375px 375px !important;
  border:0;
  top:0;
  left:0;
  bottom:0;
  right:0;

}

.about__slot .name {
  font-family:"Typo Grotesk",sans-serif;
  font-size:20px;
  font-weight:800;
  color:#424242;
  margin-bottom:0px;
  -webkit-transition:all 0.3s linear;
}

.about__slot .title {
   font-family:"Typo Grotesk",sans-serif;
  font-size:16px;
  font-weight:300;
  margin-top:5px;
  color:#ccc;
  -webkit-transition:all 0.3s linear;
}

.about__slot.bio .name {
  color:#f5f5f5;
}

.about__section .about__slot:hover .headshot {
  opacity:1;
  width:100%;
  height:300px;
  border-radius:0;
  margin-top:0;
  background-size:325px 325px;
  border:0;
  top:0;
  left:0;
  bottom:0;
  right:0;
}

.about__section .about__slot:hover .name {
  color:#f5f5f5 !important;
}

.about__section .about__slot:hover .about__info {
    background-color:rgba(0,0,0,0.42);
}
.active{
      background:#FFDD83;
	  color:black;
	 
}
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
    <a  href="Home.aspx" target="_blank">Home</a>
    <a href="contactus.aspx" target="_blank">Contact us</a>
    <a href="sign.aspx" target="_blank">Login</a>
    <a class="active" href="team.aspx" target="_blank">Developer</a>
  
  </div>
</div>

	
</div>

    </div><!-- Specificity container -->
<a href="javascript:void(0);" title="Gursharan Singh - Team Leader"><div class="about__slot"><div class="headshot" onclick="biograph(this.parentNode);" style="background-image:url('gurshran.png');"></div>
  <div class="about__info">
  <h4 class="name">Gursharan Singh</h4>
  <h5 class="title">Team Leader</h5>
  </div>
  <div class="bioText"> Head of this team, He was the person resposible with the core back end of this site. Always a enthusiast when it comes to "Quizes". Currently working for new trends in ASP.NET,PHP.<br>Gmail-gursharan.bassi.07@gmail.com</div>
  
  </div></a><a href="javascript:void(0);" title="Ankit Kala - Web Designer"><div class="about__slot">
    <div class="headshot" onclick="biograph(this.parentNode);" style="background-image:url('6.jpg');"></div>
  
  <div class="about__info">
  <h4 class="name">Ankit Kala</h4>
  <h5 class="title">Web Designer</h5>
  </div>
    <div class="bioText">Being the student of KCL-IMT, he is apparently the one who has given best of "Designing" ideas as well as there implementations. Passionate & Positive person. He's currently working with Android Studio stuff as well.<br>Gmail-ankitkala90120@gmail.com</div>
  
  
  </div></a><a href="javascript:void(0);" title="Sudhanshu Gupta - Data Base Administrator"><div class="about__slot"><div class="headshot" onclick="biograph(this.parentNode);" style="background-image:url('sudanshu.jpg');"></div>
  <div class="about__info">
  <h4 class="name">Sudhanshu Gupta</h4>
  <h5 class="title">Data Base Administrator</h5>
  </div>
  <div class="bioText">Imtian, with passion for handling tricky data. An Excellent person in DBMS. An Internet freak who can teach you if's and but's of the hardware and software together. Currently busy in PHP stuff.<br>Gmail-Sudhanshu.2133@gmail.com</div>
  
  </div></a><a href="javascript:void(0);" title="Sunny kapoor - Web Designer"><div class="about__slot">
    <div class="headshot"  onclick="biograph(this.parentNode);" style="background-image:url('sunny.jpg');"></div>
  
  <div class="about__info">
  <h4 class="name">Sunny kapoor</h4>
  <h5 class="title">Web Designer</h5>
  </div>
      <div class="bioText">He is a web designer with an impressive background of managing difficult projects while providing analysis and account support within product department work to understand customer need.<br>Gmail-sunnykapoor5625@gmail.com</div>
  
  </div></a><a href="javascript:void(0);" title="Sachin - Content Writer"><div class="about__slot">
    <div class="headshot" onclick="biograph(this.parentNode);" style="background-image:url('1222.jpg');"></div>
  
  <div class="about__info">
  <h4 class="name">Sachin Sharma</h4>
  <h5 class="title">Content Writer</h5>
  </div>
    <div class="bioText">He dealt with the Front end content of the site. He has a positively stubborn and hardworking soul . He bears leadership quality. Currently working as a Social Media promoter.<br><br>Gmail-ss9988216@gmail.com</div>
  
  
  </div></a><a href="javascript:void(0);" title="Roshan Shah - Content Writer"><div class="about__slot">
    <div class="headshot"  onclick="biograph(this.parentNode);" style="background-image:url('7.jpg');"></div>
  
  <div class="about__info">
  <h4 class="name">Roshan Shah</h4>
  <h5 class="title">Content Writer</h5>
  </div>
      <div class="bioText">Imtian,He dealt with the Front end content of the site. He has a positively stubborn and hardworking soul.<br><br>Gmail-shahroshan0458@gmail.com</div>
  
  </div></a>
  
  </div>
        
  
 <script>
     function biograph(e) {
         if (e.className == 'about__slot') {
             e.className = 'about__slot bio';
         }
         else {
             e.className = 'about__slot';
         }
     }
</script>
     <div class="bang">
        <h5> ©2020 Mindfreaks. &nbsp; &nbsp;&nbsp;&nbsp;All Rights Resevered  </h5><p class="para">
           
                Made by Gursharan Singh and Team
            
                                                                                   </p>
        </div>
</body>
</html>
