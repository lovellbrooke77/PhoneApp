
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="PhoneApp.login" %>

<!DOCTYPE html>
<link rel="stylesheet" href="Css/login.css"/>
<script src="login.js"></script>
<head runat="server">
    <title></title>
</head>

<body> 
<form id="form1" runat="server">
  <div class="imgcontainer">
       <h2 id="logintitle">Login Form</h2>
    <!--<img src="img" alt="Avatar" class="avatar"> !-->
  </div>

  <div class="container">
    <label for="uname"><b>Username</b></label>
    <input type="text" placeholder="Enter Username" name="uname"/>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw"/>
        
    <button type="submit">Login</button>
    
  </div>

  <div class="container">
    <input type="button" value="cancel" onclick="cancel()" class="cancelbtn">


    <span class="psw">Forgot <a href="#">password?</a></span>
  </div>
</form>
</body>
</html>
