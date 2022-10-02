<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style>
    body{
     margin:0;
	 padding:0;
	 font-family:verdana;
}
nav{
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
}
        
   .C{
          background-color:black;
          background-size:300px 350px;
  
  color: black;
  margin: 30px;
  padding: 10px;
  width:350px;
  height:320px;
   border-radius:200px;
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
	  color:white;
	  border-radius:42px;
}
       .C:hover{
            -ms-transform: scale(1.0); /* IE 9 */
  -webkit-transform: scale(1.5); /* Safari 3-8 */
  transform: scale(1.2); 
      
}
      .button {
  display: inline-block;
  border-radius: 7px;
  background-color:	#000000;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 28px;
  padding: 20px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 10px;
  position:relative;
  bottom:30px;
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

      i{
          color:white;
          
      }

      

    

        </style>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body bgcolor="white">
    <form id="form1" runat="server">
    <div>
    <div class="wrapper">
  
  <nav>
  <ul>
    <li><a class="active" href="#">HOME</a></li>
	 <li><a>Courses</a></li>
	  <li><a>E-Papers</a></li>
	   <li><a href="sign.aspx">Sign in</a></li> 
	    <li><a>Devloper</a></li>
		</ul>
      
	</nav>

	
</div>

    </div>
      
    </form>
    <p>
        &nbsp;</p>
    <p>
 &nbsp;</p>
    <p>
        &nbsp;</p>
    <a style=" font-family: 'Arial Black'; font-size: x-small; font-weight: bold; font-style: normal;  background-color: #000000; background-attachment: fixed;"> 
    <div class="C">
        
        <i class="fa fa-smile-o" aria-hidden="true" style="font-size:200px;"> </i>
         <button class="button" style="vertical-align:middle">
            <div><a href="java_level1q.aspx">Easy </a></div>
        </button></a>
    </div>
    <div class="C" style="font-family: 'Arial Black'; font-size: large; font-weight: normal; font-style: normal; color: #FFFFFF">
        <i class="fa fa-gavel" aria-hidden="true" style="font-size:200px;"></i>

         <br />
         <br />
         
         
       <button class="button" style="vertical-align:middle;position:relative;bottom:30px;">
            <div>
                
               <a href="java_level2q.aspx">medium</a>
            </div>
        </button>
        </div>
    <font size="12">

    <div class="C">       <i class="fa fa-trophy" aria-hidden="true" style="font-size:200px;"></i>
       
        <button class="button" style="vertical-align:middle;position:relative;bottom:20px;">


            <div>
                <a href="java_level3q.aspx">hard</a>
            </div>
        </button>
        </div>
       
</body>
</html>
