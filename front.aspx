<%@ Page Language="C#" AutoEventWireup="true" CodeFile="front.aspx.cs" Inherits="front" %>

<!Doctype html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html>
<head>
    <title> loading page of mind freakers</title>
    
</head>
    <style>
    body
{
    margin: 0;
    padding: 0;
    background:black;
}
section
{
    height: 100vh;
    background: #000;
}
section:before
{
   content: '';
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background:linear-gradient(to right,#f00,#f00,#0f0,#0ff,#ff0,#0ff );
    mix-blend-mode: color;
    pointer-events: none;
}
video
{
    object-fit: cover;
}
h1
{
    margin: 0;
    padding: 0;
    position: absolute;
    top: 50%;
    transform: translateY(-50%);
    width: 100%;
    text-align: center;
    color: white;
    font-size: 5em;
    font-family:sans-serif;
    letter-spacing: 0.2em;
}
h1 span
{ 
    opacity: 0;
    display: inline-block;
    animation:animate 3s linear forwards;
}
@keyframes animate
{
    0%
    {
        opacity: 0;
        transform: rotateY(45deg);
        filter: blur(10px);
    }
     100%
    {
        opacity: 1;
        transform: rotateY(0deg);
        filter: blur(0px);
    }
}
h1 span:nth-child(1)
{
    animation-delay: 1s;
}
h1 span:nth-child(2)
{
    animation-delay: 2s;
}
h1 span:nth-child(3)
{
    animation-delay: 2.5s;
}
h1 span:nth-child(4)
{
    animation-delay: 3s;
}
h1 span:nth-child(5)
{
    animation-delay: 3.5s;
}
h1 span:nth-child(6)
{
    animation-delay: 4s;
}
h1 span:nth-child(7)
{
    animation-delay: 4.5s;
}
h1 span:nth-child(8)
{
    animation-delay: 5s;
}
h1 span:nth-child(9)
{
    animation-delay: 5.5s;
}
h1 span:nth-child(10)
{
    animation-delay: 6s;
}

    </style>
    <script>
        setTimeout(function () { window.location.href = 'Home.aspx' }, 8000);
</script>
    <body>
        <section>
            <video src="smoke.mp4" autoplay muted></video>
            <h1>
                <span>M </span>
                 <span>I </span>
                 <span>N </span>
                 <span>D </span>
                 <span> F</span>
                 <span>R </span>
                 <span>E </span>
                 <span>A </span>
                 <span> K</span>
                 <span>S</span>
                
            
            </h1>
        </section>
    </body>
</html>