
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contactus.aspx.cs" Inherits="contactus" %>

<!DOCTYPE html>

<html>
<head>
</head>
<style>
body {
  background: linear-gradient(45deg,#ccff00,#09afff);
  background-repeat:no-repeat;
        background-attachment:fixed;
  font-size: 62.5%;
  font-family: 'Lato', sans-serif;
  font-weight: 300;
  color: #B6B6B6;
}
body section {
 // background: linear-gradient(45deg,#e91e63,#ffeb3b);
  margin: 60px auto 120px;
 // border-top: 15px solid #313A3D;
  text-align: center;
  padding: 50px 0 110px;
  width: 80%;
  max-width: 1100px;
}
body section h1 {
  margin-bottom: 40px;
  font-size: 4em;
  text-transform: uppercase;
  font-family: 'Lato', sans-serif;
  font-weight: 100;
}
form {
  width: 58.3333333333%;
  margin: 0 auto;
}
form .field {
  width: 100%;
  position: relative;
  margin-bottom: 15px;
}
form .field label {
  text-transform: uppercase;
  position: absolute;
  top: 0;
  left: 0;
  background: #313A3D;
  width: 100%;
  padding: 18px 0;
  font-size: 1.45em;
  letter-spacing: 0.075em;
  -webkit-transition: all 333ms ease-in-out;
  -moz-transition: all 333ms ease-in-out;
  -o-transition: all 333ms ease-in-out;
  -ms-transition: all 333ms ease-in-out;
  transition: all 333ms ease-in-out;
}
form .field label + span {
  font-family: 'SSStandard';
  opacity: 0;
  color: white;
  display: block;
  position: absolute;
  top: 12px;
  left: 7%;
  font-size: 2.5em;
  text-shadow: 1px 2px 0 #cd6302;
  -webkit-transition: all 333ms ease-in-out;
  -moz-transition: all 333ms ease-in-out;
  -o-transition: all 333ms ease-in-out;
  -ms-transition: all 333ms ease-in-out;
  transition: all 333ms ease-in-out;
}
form .field input[type="text"], form .field textarea {
  border: none;
  background: #E8E9EA;
  width: 80.5%;
  margin: 0;
  padding: 18px 0;
  padding-left: 19.5%;
  color: #313A3D;
  font-size: 1.4em;
  letter-spacing: 0.05em;
  text-transform: uppercase;
}
form .field input[type="text"]#msg, form .field textarea#msg {
  height: 18px;
  width:79%;
  resize: none;
  color:black;
  -webkit-transition: all 333ms ease-in-out;
  -moz-transition: all 333ms ease-in-out;
  -o-transition: all 333ms ease-in-out;
  -ms-transition: all 333ms ease-in-out;
  transition: all 333ms ease-in-out;
}
form .field input[type="text"]:focus, form .field textarea:focus, form .field input[type="text"].focused, form .field textarea.focused {
  outline: none;
}
form .field input[type="text"]:focus#msg, form .field textarea:focus#msg, form .field input[type="text"].focused#msg, form .field textarea.focused#msg {
  padding-bottom: 150px;
}
form .field input[type="text"]:focus + label, form .field textarea:focus + label, form .field input[type="text"].focused + label, form .field textarea.focused + label {
  width: 18%;
  background: #FD9638;
  color: #313A3D;
}
form .field input[type="text"].focused + label, form .field textarea.focused + label {
  color: #FD9638;
  
}
form .field:hover label {
  width:18%;
  background: #313A3D;
  color: white;
}
form input[type="submit"] {
  background: #FD9638;
  color: black;
  -webkit-appearance: none;
  border: none;
  text-transform: uppercase;
  position:absolute;
  top:85%;
  left:45%;
  padding: 13px 50px;
  font-size: 1.4em;
  letter-spacing: 0.1em;
  font-family: 'Lato', sans-serif;
  font-weight: 300;
  -webkit-transition: all 333ms ease-in-out;
  -moz-transition: all 333ms ease-in-out;
  -o-transition: all 333ms ease-in-out;
  -ms-transition: all 333ms ease-in-out;
  transition: all 333ms ease-in-out;
}
form input[type="submit"]:hover {
  background: #313A3D;
  color: #FD9638;
}
form input[type="submit"]:focus {
  outline: none;
  background: #cd6302;
}
.active{
      background:#FFDD83;
	  color:black;
	 
}
.nav {
  height: 100px;
  width: 101%;
  background-color:  rgba(0, 0, 0, 0.5);
  position: relative;
  top:0%;
  position:fixed;
        left: -1px;
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
<body bgcolor:"white">
    
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
    <a href="Home.aspx" target="_blank">Home</a>
    <a  class="active" href="#" target="_blank">Contact us</a>
    <a href="sign.aspx" target="_blank">Login</a>
    <a href="developer.aspx" target="_blank">Developer</a>
  
  </div>
</div>

	
</div>

    </div>
	<section id="hire">
   <font color="Black"><h1>Contact Us</h1></font>
    
        <form id="form1" runat="server">
	      <div class="field name-box">

		  <asp:TextBox ID="name" placeholder="Who Are You?" runat="server"></asp:TextBox>
         <label for="name">Name</label>
		        <span class="ss-icon">check</span>
	      </div>

	      <div class="field email-box">
		 <asp:TextBox ID="email"  placeholder="name@email.com"  runat="server"></asp:TextBox>
&nbsp;<label for="email">Email</label>
		        <span class="ss-icon">check</span>
	      </div>

	      <div class="field msg-box">
		 <asp:TextBox ID="msg" rows="4" placeholder="Your message goes here......" runat="server"></asp:TextBox>
&nbsp;<label for="msg">Message</label>
		        <span class="ss-icon">check</span>
	      </div>
            <asp:Button ID="button" runat="server" Text="Submit" OnClick="button_Click" />
	
        </form>
</section>
   
  
 <script>
     $('textarea').blur(function () {
         $('#hire textarea').each(function () {
             $this = $(this);
             if (this.value != '') {
                 $this.addClass('focused');
                 $('textarea + label + span').css({ 'opacity': 1 });
             }
             else {
                 $this.removeClass('focused');
                 $('textarea + label + span').css({ 'opacity': 0 });
             }
         });
     });

     $('#hire .field:first-child input').blur(function () {
         $('#hire .field:first-child input').each(function () {
             $this = $(this);
             if (this.value != '') {
                 $this.addClass('focused');
                 $('.field:first-child input + label + span').css({ 'opacity': 1 });
             }
             else {
                 $this.removeClass('focused');
                 $('.field:first-child input + label + span').css({ 'opacity': 0 });
             }
         });
     });

     $('#hire .field:nth-child(2) input').blur(function () {
         $('#hire .field:nth-child(2) input').each(function () {
             $this = $(this);
             if (this.value != '') {
                 $this.addClass('focused');
                 $('.field:nth-child(2) input + label + span').css({ 'opacity': 1 });
             }
             else {
                 $this.removeClass('focused');
                 $('.field:nth-child(2) input + label + span').css({ 'opacity': 0 });
             }
         });
     });

 </script>
     <div class="bang">
        <h3> ©2020 Mindfreaks. &nbsp; &nbsp;&nbsp;&nbsp;All Rights Resevered  </h3><p class="para">
           
                Made by Gursharan Singh and Team
            
                                                                                   </p>
        </div>
</body>
</html>
