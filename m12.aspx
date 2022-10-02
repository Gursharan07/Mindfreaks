<%@ Page Language="C#" AutoEventWireup="true" CodeFile="m12.aspx.cs" Inherits="m12" %>

<!DOCTYPE html>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
    <style>
        body {
            margin: 0px;
            padding: 0px;
            background: linear-gradient(45deg,#24006b,#f42f8c);
            background-size:100% 100%;
            background-repeat:no-repeat;
            background-attachment:fixed;
            overflow-x: scroll; 
            overflow-y: scroll;
        }
        .top {
            background-color: black;
            height: 79px;
            margin:0px;
            padding:0px 0px;
            width: 100%;
            color:#A4DE02;
            
            	
        }
        .vl {

            background-color:#A4DE02;
              

}
        .v {
            background-color:#A4DE02;
            height:15%;
            width:1px;
            position:absolute;
            top:-19px;
            left:30%;
              
        }
        
     /*   .data{
            height:40px;
            width:100%;
            position:absolute;
            top:-19px;
            left:10%;
              
        }*/
         .l {
            background-color:#A4DE02;
            height:15%;
            width:1px;
            position:absolute;
            top:-19px;
            left:60%;
              
        }
        .yo {
            position: absolute;
            top: 50px;
            left:70px;
            background:transparent;
        }
         .champ {
            position: absolute;
            top: 38px;
            left:168px;
             background:transparent;
        }
        .guru{
            position: absolute;
            top: -6px;
            left:40px;

        }

       /*.Rb {
            position:absolute;
            top:-15px;
            left:-1%;

        }*/
        
       .sunny {
	    font-size:x-large;
        position:absolute;
        top:15%;
        left:30%;
        right:26%;
        bottom:0%;
       height:482px;
      // 
       box-sizing:border-box;
       border-radius:35px;
       width:457px;
       text-align:center;
       line-height: 200%;
        }
        .a {
           
             display: inline-block;
             color:white;
              width:400px;
  vertical-align: middle;
  -webkit-transform: translateZ(0);
  transform: translateZ(0);
  box-shadow: 0 0 1px rgba(0, 0, 0, 2);
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  -moz-osx-font-smoothing: grayscale;
  position: relative;
  overflow: hidden;
  background: transparent;
  -webkit-transition-property: color;
  transition-property: color;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
        }
            .a:before{
                 content: "";
  position: absolute;
  z-index: -1;
  top: 0;
  left: 0;
  right: 0;
  bottom: 0;
  background:black;
  border-radius: 100%;
  -webkit-transform: scale(0);
  transform: scale(0);
  -webkit-transition-property: transform;
  transition-property: transform;
  -webkit-transition-duration: 0.3s;
  transition-duration: 0.3s;
  -webkit-transition-timing-function: ease-out;
  transition-timing-function: ease-out;
            }
            .a:hover, .a:focus, .a:active {
                border-radius:30px;
  color: #6292ae;
}
.a:hover:before, .a:focus:before, .a:active:before {
  -webkit-transform: scale(2);
  transform: scale(2);
}
             .ques {
                 color:#6292ae;
                 position:relative;
                 top:-47px;
              height:auto;
           background-color:#2e3032;
           border-radius:35px 35px 0px 0px;
        }
        .pointer {
            
        }
        canvas {
             background:#2e3032;
  display:block;
  position:absolute;
  right:2%;
  left:75%;
  top:20%;
  bottom:80%;
  position:fixed;
  border-radius:42px;
}
        #button1 {
        position:relative;
        bottom:1%;
        top:99%;
        
        }
        .btn-5 {
             border-style: solid;
            border-color: inherit;
            border-width: 0;
            position:relative;
        bottom:188px;
        top:-39%;
            box-shadow: inset 0 0 20px rgba(255, 255, 255, 0);
            outline-color: rgba(255, 255, 255, .5);
            outline-offset: 0px;
            text-shadow: none;
            transition: all 1250ms cubic-bezier(0.19, 1, 0.22, 1);
            outline-width: 1px;
            outline-style: solid;
            left: 10px;
        } 

.btn-5:hover {
  border: 1px solid;
  box-shadow: inset 0 0 20px rgba(255, 255, 255, .5), 0 0 20px rgba(255, 255, 255, .2);
  outline-color: rgba(255, 255, 255, 0);
  outline-offset: 15px;
  text-shadow: 1px 1px 2px #427388; 
}
     @media screen and (max-width:700px) {
            canvas {
                display: none;
            }
            .sunny {
                position:relative;
                top:50px;
                transform:translate(-10%,-50%);
            }
            .ques {
                 position:relative;
                top:50px;
                  transform:translate(-10%,-50%);
            }
            .a {
                 position:relative;
                 top:50px;
                  transform:translate(-10%,-50%);
            }
        
    </style>
          

<body>
    
    <form id="form1" runat="server">
    <div class="top">
        <br />
        <b>
        <h2 style="margin:10px;position:relative;bottom:12px; left: 30px; "> <font>Level 2 : Intermediate&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; 
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;           &nbsp;&nbsp;&nbsp;           &nbsp;&nbsp;&nbsp;Score:                         
                              
                                <asp:Label ID="Label1" runat="server"></asp:Label>   /20                                                       </font>&nbsp;</h2><div class="v"> 
           <h2 class="guru"> &nbsp; Mindfreaks </h2>
        <input class="yo" id="minutes" type="text" style="
             border-style: none; border-color: inherit; border-width: medium; font-size: 16px;  
            font-weight: bold; color: black; width: 50px;">
                <asp:TextBox ID="seconds" class="champ" runat="server"  style=" 
                        border: none; font-size: 25px; 
                        font-weight: bold; color:#A4DE02;" Width="169px" OnTextChanged="seconds_TextChanged" ></asp:TextBox>

            
         
             </div><div class="l"></div> 
        
        </b>
         <div class="vl"></div>
    </div>
        

        
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
      
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

       
   <div class="sunny">
       <br />
       <asp:DataList class="data" ID="DataList1" runat="server" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Height="2000px" style="margin-left: 0px; margin-right: 0px">
                   <ItemTemplate>
                      &nbsp; &nbsp;&nbsp;<font color="#A4DE02"> 
                  <div class="ques">    
                      <asp:Label ID="Label2" runat="server" Text='<%# Eval("Id") %>'></asp:Label>.
                      <asp:Label ID="QuestionLabel" runat="server" Text='<%# Eval("question") %>' /></div></font> 
              <div class="a">    
                 
                    <asp:RadioButton class="Rb" ID="R1" runat="server" GroupName="same" Text='<%# Eval("a") %>' OnCheckedChanged="R1_CheckedChanged" />
        
                    <br /></div>

                 <div class="a">     
                     <asp:RadioButton class="Rb" ID="R2" runat="server"  GroupName="same"  Text='<%# Eval("b") %>' OnCheckedChanged="R2_CheckedChanged" />
                   
                    <br /></div>
                 <div class="a">     
                     <asp:RadioButton class="Rb" ID="R3" runat="server"  GroupName="same"  Text='<%# Eval("c") %>' OnCheckedChanged="R3_CheckedChanged" />
                   
                    <br /></div>
                    <div class="a">  
                        <asp:RadioButton class="Rb" ID="R4" runat="server"  GroupName="same"  Text='<%# Eval("d") %>' OnCheckedChanged="R4_CheckedChanged" />
                        <br />
                  </div>
                        <br />
                       <br />
                        <asp:Label ID="lblans" runat="server" Text='<%# Eval("a") %>' Visible="False"></asp:Label>
                       <br />
                       <asp:Label ID="lblans0" runat="server" Text='<%# Eval("b") %>' Visible="False"></asp:Label>
                       <br />
                       <asp:Label ID="lblans1" runat="server"  Text='<%# Eval("c") %>' Visible="False"></asp:Label>
                       <br />
                       <asp:Label ID="lblans2" runat="server" Text='<%# Eval("d") %>' Visible="False"></asp:Label>
                       <br />
                        <br />
                  
                </ItemTemplate>
            </asp:DataList>
       <asp:Button class="btn btn-5" ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click1" Height="40px" Width="130px" />
        </div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mindConnectionString %>" SelectCommand="SELECT [question], [a], [b], [c], [d], [Id] FROM [java_level2q]">
        </asp:SqlDataSource>
            &nbsp;<br />
                        <asp:Label ID="lblans" runat="server" Visible="False"></asp:Label>
        <br />
&nbsp;<p>
    
        <asp:TextBox ID="TextBox1" runat="server" Height="106px" TextMode="MultiLine" Width="239px" Visible="False"></asp:TextBox>
    
        </p>
    
        <br />
        <br />
       
        <canvas id="mycanvas" height="230" width="230"></canvas>
        <br />
        <br />
        <br />
        <br />
        <br />
    
        <asp:Label ID="error" runat="server" Visible="False"></asp:Label>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <asp:Timer ID="Timer1" runat="server" Interval="240000" OnTick="Timer1_Tick1">
        </asp:Timer>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        </asp:UpdatePanel>
    
    </form>
    
    <p>
        &nbsp;</p>
       </div>
    </body>
    <script>
        /*===============================
        
        Countdown. 
        Based on Kerem Suer dribble shot:
        http://dribbble.com/shots/560534
        
        change value of the variable --countTo-- to set the timer.
        Would love to see someone adding a UI to this one.
        
        =================================*/



        (function drawCanvas() {
            var canvas = document.getElementById('mycanvas');
            var ctx = canvas.getContext('2d');
            var cWidth = canvas.width;
            var cHeight = canvas.height;

            var countTo = 240;

            var min = Math.floor(countTo / 60);
            var sec = countTo - (min * 60);
            var counter = 0;
            var angle = 270;
            var inc = 360 / countTo;


            function drawScreen() {



                //======= reset canvas

                ctx.fillStyle = "#2e3032";
                ctx.fillRect(0, 0, cWidth, cHeight);

                //========== base arc

                ctx.beginPath();
                ctx.strokeStyle = "#252424";
                ctx.lineWidth = 14;
                ctx.arc(cWidth / 2, cHeight / 2, 100, (Math.PI / 180) * 0, (Math.PI / 180) * 360, false);
                ctx.stroke();
                ctx.closePath();

                //========== dynamic arc

                ctx.beginPath();
                ctx.strokeStyle = "#df8209";
                ctx.lineWidth = 14;
                ctx.arc(cWidth / 2, cHeight / 2, 100, (Math.PI / 180) * 270, (Math.PI / 180) * angle, false);
                ctx.stroke();
                ctx.closePath();

                //======== inner shadow arc

                grad = ctx.createRadialGradient(cWidth / 2, cHeight / 2, 80, cWidth / 2, cHeight / 2, 115);
                grad.addColorStop(0.0, 'rgba(0,0,0,.4)');
                grad.addColorStop(0.5, 'rgba(0,0,0,0)');
                grad.addColorStop(1.0, 'rgba(0,0,0,0.4)');

                ctx.beginPath();
                ctx.strokeStyle = grad;
                ctx.lineWidth = 14;
                ctx.arc(cWidth / 2, cHeight / 2, 100, (Math.PI / 180) * 0, (Math.PI / 180) * 360, false);
                ctx.stroke();
                ctx.closePath();

                //======== bevel arc

                grad = ctx.createLinearGradient(cWidth / 2, 0, cWidth / 2, cHeight);
                grad.addColorStop(0.0, '#6c6f72');
                grad.addColorStop(0.5, '#252424');

                ctx.beginPath();
                ctx.strokeStyle = grad;
                ctx.lineWidth = 1;
                ctx.arc(cWidth / 2, cHeight / 2, 93, (Math.PI / 180) * 0, (Math.PI / 180) * 360, true);
                ctx.stroke();
                ctx.closePath();

                //====== emboss arc

                grad = ctx.createLinearGradient(cWidth / 2, 0, cWidth / 2, cHeight);
                grad.addColorStop(0.0, 'transparent');
                grad.addColorStop(0.98, '#6c6f72');

                ctx.beginPath();
                ctx.strokeStyle = grad;
                ctx.lineWidth = 1;
                ctx.arc(cWidth / 2, cHeight / 2, 107, (Math.PI / 180) * 0, (Math.PI / 180) * 360, true);
                ctx.stroke();
                ctx.closePath();

                //====== Labels

                var textColor = '#646464';
                var textSize = "12";
                var fontFace = "helvetica, arial, sans-serif";

                ctx.fillStyle = textColor;
                ctx.font = textSize + "px " + fontFace;
                ctx.fillText('MIN', cWidth / 2 - 46, cHeight / 2 - 40);
                ctx.fillText('SEC', cWidth / 2 + 25, cHeight / 2 - 15);

                //====== Values



                ctx.fillStyle = '#6292ae';

                if (min > 9) {
                    ctx.font = '84px ' + fontFace;
                    ctx.fillText('9', cWidth / 2 - 55, cHeight / 2 + 35);

                    ctx.font = '24px ' + fontFace;
                    ctx.fillText('+', cWidth / 2 - 72, cHeight / 2 - 5);
                }
                else {
                    ctx.font = '84px ' + fontFace;
                    ctx.fillText(min, cWidth / 2 - 60, cHeight / 2 + 35);
                }

                ctx.font = '50px ' + fontFace;
                if (sec < 10) {
                    ctx.fillText('0' + sec, cWidth / 2 + 10, cHeight / 2 + 35);
                }
                else {
                    ctx.fillText(sec, cWidth / 2 + 10, cHeight / 2 + 35);
                }


                if (sec <= 0 && counter < countTo) {
                    angle += inc;
                    counter++;
                    min--;
                    sec = 59;
                } else
                    if (counter >= countTo) {
                        sec = 0;
                        min = 0;
                    } else {
                        angle += inc;
                        counter++;
                        sec--;
                    }
            }

            setInterval(drawScreen, 1000);
           

        })()
</script>
</html>
