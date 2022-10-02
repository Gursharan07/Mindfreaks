<%--  --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
<html xmlns="http://www.w3.org/1999/xhtml">
   
<head id="Head1" runat="server">
    <title></title>
    <style>
    body{
     margin:0;
	 padding:0;
	 font-family:Arial;
        background: linear-gradient(45deg,#24006b,#f42f8c);
        background-repeat:no-repeat;
        background-attachment:fixed;
}
/*nav{
    position:fixed;
	top:0;
	left:0;
	width:100%;
	height:100px;
	padding:10px 90px;
	box-sizing:border-box;
	background:rgba(0,0,0,0.5);
}
nav .logo{
     padding:0px;
	 height:80px;
	 float:left;
	 font-size:24px;
	 font-weight:bold;
	 text-transform:uppercase;
	 color:	#FFDD83;
}
nav ul {
     list-style:none;
	 float:right;
	 margin:0;
	 padding:0;
	 display:flex;
}
nav ul li a{
      line-height:80px;
	  color:#fff;
	  padding:12px 30px;
	  text-decoration:none;
	  text-transform:uppercase;
	  font-size:15px;
	  font-weight:bold;
}
nav ul li a:hover{
      background:#FFDD83;
	  color:black;
	  border-radius:6px;
}
nav ul li a.active{
      background:#FFDD83;
	  color:black;
	  border-radius:6px;
}*/
.active{
      background:#FFDD83;
	  color:black;
	 
}
.nav {
  height: 100px;
  width: 100%;
  background-color:  rgba(0, 0, 0, 0.5);
  position: relative;
  top:0%;
  position:fixed;
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
        
      .C{
  background-color:black;
  color: white;
  margin: 35px;
  padding: 5px;
  width:290px;
  height:300px;
   border-radius:42px;
    font-size: 90px;
    text-align:center;
    float:left;
    transition: transform .2s;

}
        a {
            color: white;
            text-decoration: none;
        }
       a:hover{
      background:#000000;
	  color: #f42f8c;
	 // border-radius:42px;
}
       .C:hover{
            color:#FFDD83;
            -ms-transform: scale(1.0); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.2); 
      
}
      .button {
  display: inline-block;
  border-radius: 4px;
  background-color:	#080808;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 10px;
}

.button div{
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.button div:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.button:hover div {
  padding-right: 25px;
  border:2px;
border-radius:12px;

}

.button:hover div:after {
  opacity: 1;
  right: 0;
}
      
      .Py{
  background-color: black;
  color: white;
  margin: 30px;
  padding: 10px;
  width:300px;
  height:300px;
   border-radius:32px;
    font-size: 90px;
    text-align:center;
    float:left;
}    

      

    

           .auto-style1 {
            width: 107px;
            height: 100px;
        }
        .auto-style1 {
            position: fixed;
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
    <form id="form1" runat="server">
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
    <a class="active" href="#" target="_blank">Home</a>
    <a href="contactus.aspx" target="_blank">Contact us</a>
    <a href="sign.aspx" target="_blank">Login</a>
    <a href="developer.aspx" target="_blank">Developer</a>
  
  </div>
</div>

	
</div>

    </div>
      
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
   <a href="finallevel.aspx" > <div  class="C">
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
         &nbsp;C<button class="button" style="vertical-align:middle">
            <div>
             <a href="finallevel.aspx">Click Here</a> 
            </div>
        </button></a>
    </div>
   <a href="javalock2.aspx"> <div class="C"> &nbsp;<br />JAVA
         <button class="button" style="vertical-align:middle">
            <div>
                 <a href="javalock2.aspx"> Click Here</a>
            </div>
        </button>
        </div></a>
  <a href="itlock2.aspx">  <div class="C"> &nbsp;<br />IT
         <button class="button" style="vertical-align:middle">
            <div>
                 <a href="itlock2.aspx"> Click Here</a>
            </div>
        </button>
        </div></a>
  <a href="pylock2.aspx"> <div class="C"> &nbsp;<br />Python
         <button class="button" style="vertical-align:middle">
            <div>
                <a href="pylock2.aspx"> Click Here</a>
            </div>
        </button>
        </div></a>
   <a href="dblock2.aspx"> <div class="C"> &nbsp;<br />DB
         <button class="button" style="vertical-align:middle">
            <div>
                <a href="dblock2.aspx"> Click Here</a>
            </div>
        </button>
        </div></a>
  <a href="cpplock2.aspx"> <div class="C"> &nbsp;<br />C++
         <button class="button" style="vertical-align:middle">
            <div>
                <a href="cpplock2.aspx"> Click Here</a>
            </div>
        </button>
        </div></a>
        
    

    
    </form>
        

    
        <div class="bang">
        <h5> ©2020 Mindfreaks. &nbsp; &nbsp;&nbsp;&nbsp;All Rights Resevered  </h5><p class="para">
           
                Made by Gursharan Singh and Team
            
                                                                                   </p>
        </div>
        
    

    
    </body>
</html>
