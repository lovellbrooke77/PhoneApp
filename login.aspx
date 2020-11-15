
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/login.aspx.cs"  EnableEventValidation="false" Inherits="PhoneApp.login" %>
<link rel="stylesheet" href="Css/login.css"/>
<html>
<script src="loginReg.js"></script>

<head runat="server">
    <title></title>
</head>

<body> 
<form  runat="server" id="form1">
  <div class="container">
      <div class="login">
         <div class="container">
              <h1>Login</h1>
     
            <asp:TextBox  id="txtusername" class="username" runat="server" placeholder="username" />
             <br />  

             <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
            ControlToValidate="txtusername" ErrorMessage="Enter username." ForeColor="Red"></asp:RequiredFieldValidator> --%>
             
             <asp:TextBox id="txtPassword" class="password" runat="server" placeholder="Password" /><br /> 

             <%--  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"   
            ControlToValidate="txtPassword" ErrorMessage="Enter password." ForeColor="Red"></asp:RequiredFieldValidator>  --%>

              <a href="#">Forgot password?</a>

               <asp:Button class="loginbutton" ID="btnLogin" OnClick="btnLogin_Click" 
                  runat="server" Text="Login"  />
             <asp:Label runat="server" id="lblmessage" > </asp:Label>
 <!-- cancel button is not working here but is on registration !-->
               <div>
                  <button type="button" class="clearfix" onclick="cancel()"> 
                      Cancel </button>
              </div>
              <span class="copyright">&copy;2020</span>  
         </div>
      </div>
      <div class="register">
          <div class="container">
              <i class="fas fa-user-plus fa-5x"></i>
              <h2>Hello!</h2>
              <p>If you have never signed in click here.</p>
              <asp:Button class="registerbutton" 
                  PostBackUrl="~/Register.aspx" runat="server"
                  placeholder ="Register" text ="Register" />
              
              
          </div>
      </div>  
    </div>


</form>
</body>
</html>
