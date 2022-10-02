<%@ Page Language="C#" AutoEventWireup="true" CodeFile="finallevel.aspx.cs" Inherits="finallevel" %>

<!Doctype html>
<html>
<head>
    <title> quiz levels using hover</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
    <style>
        
    body{
        margin:10px;
        padding:0;
        display:flex;
        justify-content: center;
        align-items: center;
        min-height: 110vh;
        font-family: sans-serif;
        background: linear-gradient(45deg,#24006b,#f42f8c);
        background-attachment:fixed;
}
.container
{
    width: 1200px;
    display: grid;
    grid-auto-columns: repeat(auto-fit, minmax(350px 1fr));
    grid-gap: 15px;
    margin: 0 auto;
    
}
.container .card
{
    position: relative;
    width: 300px;
    height: 400px;
    margin: 0 auto;
    background: #fff;
    box-shadow:0 20px 60px rgba(0,0,0,0.5);
    
}
.container .card .face
{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items:center;
}
.container .card .face.face1
{
    box-sizing: border-box;
    padding: 20px;
    
}

.container .card .face.face1 h2
{
    margin: 0;
    padding: 0;
}
.container .card .face.face2
{
    background: #111;
    transition: 0.5s;  
}
.container:nth-child(1) .card .face.face2
{
    background: linear-gradient(45deg,#3503ad,#f7308c);
}
.container:nth-child(2) .card .face.face2
{
    background: linear-gradient(45deg,#ccff00,#09afff);
}
.container:nth-child(3) .card .face.face2
{
    background: linear-gradient(45deg,#e91e63,#ffeb3b);
}
.container .card:hover .face.face2
{
    height: 60px;
}
.container .card .face.face2:before
{
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 50%;
    height: 100%;
    background: rgba(255,255,255,.1);
}
.container .card .face.face2 h2
{
    margin: 0;
    padding: 0;
    font-size: 10em;
    color: #fff;
    transition: 0.5s;
    text-shadow: 0 2px 5px rgba(0,0,0,.2);
}
.container .card:hover .face.face2 h2
{
    font-size: 2em;
}
        .i {
            z-index: -1;
            position:absolute;
            left:70%;
        }
        .champ {
            position: relative;
            top: -90%;
            bottom:110%;
            left:40%;
        }

    </style>
    <body>
     
<div class="container">

    <div class="card">
    <div class="face face1">
        <div class="content">
            <h2> BEGINNER</h2>
            <p> If a job or action is easy, you 
                it is not complicated and causes<br />

             <a href="mcq.aspx">  Let's play</a>
            </p>
            
        </div>
        </div>
        <div class="face face2">
            <h2> 01</h2>
            <p> </p>
        </div>
    </div>
        </div>
        <div class="container">
    <div class="card">
    <div class="face face1">
        <div class="content">
            <h2> INTERMEDIATE</h2>
          
 <p> intermediate activities or 
                the beginning or end of it:</p>
        </div>
        </div>
        <div class="face face2">
            <h2> 02</h2>
        </div>
            </div>
    </div>
        <div class="container">
    <div class="card">
    <div class="face face1">
        <div class="content">
            <h2> PRO</h2>
      <i class="fa fa-lock" style="font-size:300px; 
            position:absolute;
            left:20%; bottom:40px;right:70%;">  </i>      <p> Professional means relating to,
                 especially work that requires .</p>
        </div>
        </div>
        <div class="face face2">
            <h2> 03</h2>
        </div>
            </div>
            </div>
    
</body>
</html>