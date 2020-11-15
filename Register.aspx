<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhoneApp.Default" %>
<link rel="stylesheet" href="Css/Registration.css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <script src="loginReg.js"></script>
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
  <div class="container">
      <div class="register"> <!-- Changed !-->
         <div class="container">
              <h1>Register</h1>
              <input type="text" class="username" placeholder="Username">
              <input type="password" class="Password" placeholder="Password"><br>
             <!-- get this function working below
                 <input type="Id" placeholder="Id" />
             !-->
                 <button class="registerbutton">Register</button>
              <div>
                  <button type="button" class="clearfix" onclick="cancel()"> Cancel <i class="fas fa-arrow-circle-right"></i></button>
              </div>
             <!--copywright fix if you want it in
                <span class="copyright">&copy;2020</span>  
         !-->
         </div>
      </div>
      <div class="Login">
          <div class="container">
              <i class="fas fa-user-plus fa-5x"></i>
              <h2>Hello!</h2>
              <p>If you have registered click below.</p>
              <div id ="btnlogin">
             <asp:Button class="loginbutton"
                 PostBackUrl="~/login.aspx" runat="server" 
                 placeholder ="Login" text="Login" />
          </div>
          </div>
      </div>  
    </div>
</form>
</body>
</html>
