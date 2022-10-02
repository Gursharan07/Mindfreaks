<%@ Page Language="C#" AutoEventWireup="true" CodeFile="loading.aspx.cs" Inherits="loading" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <meta charset="utf-8">
<link rel="stylesheet"href="style3.css">
<script>
    setTimeout(function () { window.location.href = 'Home.aspx' }, 6000);
</script>
</head>
<body>
<div class="loading">
<span> Loading..</span>
</div>
</body>
</html>
