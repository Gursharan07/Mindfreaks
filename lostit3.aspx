<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lostit3.aspx.cs" Inherits="lostit3" %>





<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<html dir="ltr" lang="en-US">
<head>
<meta charset="UTF-8" />
<title>A Simple jQuery Fade In/Fade Out</title>

<style>
@import url('https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i');
*
{
	margin: 0;
	padding: 0;
}

body
{
	font-family: 'Lato', sans-serif;
	font-size: 14px;
	word-wrap:break-word;
}

p
{
	margin: 0 0 10px;
}

ul
{
	list-style: none;
}

.container {
	width: 100%;
	margin: auto;
	font-weight: 900;
	text-transform: uppercase;
	text-align: center;
	padding: 0 0 200px;
}

/*.take-input {
  margin: 50px 0 0;
}

.take-input input {
  width: 400px;
  height: 35px;
  padding: 0 10px;
  border-radius: 5px;
  margin: 0 15px 0 0;
  font-size: 15px;
}*/

a, a:link, a:visited {
  text-decoration: none;
  padding: 9px 15px;
  border: 1px solid #ececec;
  border-radius: 5px;
  color: gray;
}

.animate {
	font-size: 50px;
	margin: 100px 0 0;
}

.animate span {
	display: inline-block;
}

a.repeat {
  display: inline-block;
  font-size: 12px;
  text-transform: none;
  text-decoration: none;
  color: orange;
  padding: 5px 12px;
  border: 1px solid rgba(0, 0, 0, 0.15);
  font-weight: normal;
  margin: 0 0 0 50px;
  border-radius: 3px;
  position: relative;
  bottom: 15px;
}

a.repeat:hover {
  background: rgba(0, 0, 0, 0.7);
  color: white;
}

.animate span:nth-of-type(2) {
	animation-delay: .05s;
}
.animate span:nth-of-type(3) {
	animation-delay: .1s;
}
.animate span:nth-of-type(4) {
	animation-delay: .15s;
}
.animate span:nth-of-type(5) {
	animation-delay: .2s;
}
.animate span:nth-of-type(6) {
	animation-delay: .25s;
}
.animate span:nth-of-type(7) {
	animation-delay: .3s;
}
.animate span:nth-of-type(8) {
	animation-delay: .35s;
}
.animate span:nth-of-type(9) {
	animation-delay: .4s;
}
.animate span:nth-of-type(10) {
	animation-delay: .45s;
}
.animate span:nth-of-type(11) {
	animation-delay: .5s;
}
.animate span:nth-of-type(12) {
	animation-delay: .55s;
}
.animate span:nth-of-type(13) {
	animation-delay: .6s;
}
.animate span:nth-of-type(14) {
	animation-delay: .65s;
}
.animate span:nth-of-type(15) {
	animation-delay: .7s;
}
.animate span:nth-of-type(16) {
	animation-delay: .75s;
}
.animate span:nth-of-type(17) {
	animation-delay: .8s;
}
.animate span:nth-of-type(18) {
	animation-delay: .85s;
}
.animate span:nth-of-type(19) {
	animation-delay: .9s;
}
.animate span:nth-of-type(20) {
	animation-delay: .95s;
}
.one span {
	color: #D4B037;
	opacity: 0;
	transform: translate(-300px, 0) scale(0);
	animation: sideSlide .5s forwards;
}

@keyframes sideSlide {
	60% {
		transform: translate(20px, 0) scale(1);
		color: #32CD32;
	}

	80% {
		transform: translate(20px, 0) scale(1);
		color: #32CD32;
	}

	99% {
		transform: translate(0) scale(1.2);
		color: #32CD32;
	}

	100% {
		transform: translate(0) scale(1);
		opacity: 1;
		color:#D4B037;
	}
}

#picOne, #picTwo {
position:absolute;
display: none;
position:absolute;
	  top:50%;
	  left:50%;
	  transform:translate(-50%,-50%);
}

#pics {
width:100px;
height:200px;

}
#tex {

position:absolute;
	  top:70%;
	  left:50%;
	  transform:translate(-50%,-50%);
}

</style>

<script src="http://code.jquery.com/jquery-1.4.4.min.js" type="text/javascript"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $('#picOne').fadeIn(2500).delay(7500).fadeOut(1500);
        $('#picTwo').delay(5000).fadeIn(1500);
    });
    setTimeout(function () { window.location.href = 'itlock0.aspx' }, 7000);

    $(function () {
        $('.repeat').click(function () {
            var classes = $(this).parent().attr('class');
            $(this).parent().attr('class', 'animate');
            var indicator = $(this);
            setTimeout(function () {
                $(indicator).parent().addClass(classes);
            }, 20);
        });
    });

</script>

</head>
<body bgcolor="black">


    <form id="form1" runat="server">


<div class="animate one" id="tex">
			<span>B</span><span>e</span><span>t</span><span>t</span><span>e</span><span>r</span>&nbsp;<span>L</span><span>u</span><span>c</span><span>k</span>&nbsp;<span>N</span><span>e</span><span>x</span><span>t</span><span>&nbsp;<span>T</span><span>i</span><span>m</span><span>e</span>
     
		</div>
<img src="4.gif" width="400" height="400" id="picOne"/> </span>
        <asp:Label ID="Label1" runat="server" Font-Size="XX-Large" ForeColor="#FFFF66" Text="Your Score:"></asp:Label>
        <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="#FFFF66"></asp:Label>
    </form>


</body>
</html>
