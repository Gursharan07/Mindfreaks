<%@ Page Language="C#" AutoEventWireup="true" CodeFile="wonjava1.aspx.cs" Inherits="wonjava1" %>



<!DOCTYPE html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<html>
<head>
<meta charset="utf-8">
<title> result page</title>
    <style type="text/css">
        .auto-style1 {
            width: 520px;
        }
        * {
    padding: 0;
    margin: 0;
    font-family: sans-serif;
}

body {
    background: black;
}

.container {
    text-align: center;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%,-50%);
    width: 100%;
}

    .container span {
        text-transform: uppercase;
        display: block;
    }

.text1 {
    color: white;
    font-size: 70px;
    font-weight:700 ;
    letter-spacing: 8px;
    margin-bottom: 20px;
    background: black;
    position: relative;
    animation: text 3s 1;
}

.text2 {
    color: #66cc66;
    font-size: 35px;
}



@keyframes text {
    0% {
        color: black;
        margin-bottom: -50px;
    }

    30% {
        letter-spacing: 35px;
        margin-bottom: -50px;
    }

    85% {
        letter-spacing: 6px;
        margin-bottom: -50px;
    }
}


    </style>
</head>
    <script>
        setTimeout(function () { window.location.href = 'javalock1.aspx' }, 7000);
    </script>
<body>
    <form id="form1" runat="server">
<div class="container">
    
<span class="text1">Congratulations</span>
    <span class="text2">YOU WON</span>
    
</div>
        <p>
            &nbsp;
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label1" runat="server" ForeColor="White" Text="your score:" Font-Size="XX-Large"></asp:Label>
            <asp:Label ID="Label2" runat="server" Font-Size="XX-Large" ForeColor="White"></asp:Label>
        </p>
    </form>
</body>
</html>


