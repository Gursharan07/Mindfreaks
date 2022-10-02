<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sign.aspx.cs" Inherits="sign" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta charset="UTF-8">
<link rel= "stylesheet" href= "style.css">
</head>
    <style>
        body
{
	margin:0;
	Padding:0;
	display:flex;
	justify-content:center;
	align-items:center;
	min-height:100vh;
	background:#000;
	font-family:consoles;
}
.container
{
position:relative;
width:450px;
min-height:300px;
background:rgba(255,255,255,0.05);
box-shadow:0 5px 15px rgba (0,0,0,1);
}
.container:before
{
	content:'';
	position:absolute;
	top:0;
	left:0;
	width:50%;
	height:100%;
	background:rgba(255,255,255,0.1);
	pointer-events:none;
	}
	.container:after
	{
		content:'';
		position:absolute;
		top:-5px;
		left:-5px;
		right:-5px;
		bottom:-5px;
		background:linear-gradient(45deg,#ff0047,#6eff00);
		pointer-events:none;
		animation:animate 10s linear infinite;
		}
		@keyframes animate
		{
             0%{
					filter:blur(60px) hue-rotate(0deg);
				}	
             0%{
					filter:blur(60px) hue-rotate(0deg);
				}					
			 100%{
					filter:blur(60px) hue-rotate(360deg);
				}
		}
	.form
	{
	position:absolute;
	width:100%;
	height:100%; 
	padding:40px;
	box-sizing:border-box;
	z-index:1;
	}
	
	.form h2
	{
		margin:0;
		padding:0'
		color:#fff;
		font-size:24px
	}
	
   .form .inputBox
	{
		width:100%;
		margin-top:20px;
	}
	
   .form .inputBox input
	{
		width:100%;
		background:transparent;
		border:none;
		border-bottom:2px solid #fff;
		outline:none;
		font-size:18px;
		color:#fff;
		padding:5px 0;
		font-family:consoles;
		}
	::Placeholder
		{
			color:#eee;
		}
		
	.form .inputBox input[type="submit"]
		{
			background:#fff;
			color:#000;
			border:none;
			font-weight:900;
			max-width:100px;
			cursor: pointer;
		}
		
		.form P
		{
			color:#eee;
		}
		
		.form P a
		{
			color:#fff;
		}
	
	
	
}
      
    .a >  .active{
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
        .auto-style1 {
            width: 107px;
            height: 100px;
            left:1%;
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
<body>
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
    <a class="active" href="sign.aspx" target="_blank">Login</a>
    <a href="developer.aspx" target="_blank">Developer</a>
  
  </div>
</div>
    <div>
    <div class="wrapper">
  
  
</div>

    </div>
<div class="container">
<div class="form">
<h2> login form</h2>
    <form id="form1" runat="server">
<div class="inputBox">
    <asp:TextBox ID="TextBox1" runat="server" placeholder="User name"></asp:TextBox>
&nbsp;</div>
<div class="inputBox">
    <asp:TextBox ID="TextBox2" runat="server" Type="Password" placeholder="Password"></asp:TextBox>
&nbsp;</div>
        <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
<div class= "inputBox">
    &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" />
   
</div>
<P> Forget password? <a href="">
click here </a> </P>
    </form>
    </div> </div> 
     <div class="bang">
        <h5> ©2020 Mindfreaks. &nbsp; &nbsp;&nbsp;&nbsp;All Rights Resevered  </h5><p class="para">
           
                Made by Gursharan Singh and Team
            
                                                                                   </p>
        </div>
</body> 
</html>
