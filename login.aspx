
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/login.aspx.cs"  EnableEventValidation="false" Inherits="PhoneApp.login" %>
<link rel="stylesheet" href="Css/login.css"/>
<link rel="stylesheet" href="LoginReg.css" />
<html>
<script src="loginReg.js"></script>
<script src ="Foundation.js"></script>

<head runat="server">
    <title></title>
</head>

<body onload="ChangeColor()"  > 
<form  runat="server" id="form1">


  <div class="pageContainer">
      <div class="login">
        <div class="loginContainer">
              <h1>Login</h1>
     
            <asp:TextBox  id="txtusername" class="logincredentials" runat="server" placeholder="username" />
             <br />  

             <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"   
            ControlToValidate="txtusername" ErrorMessage="Enter username." ForeColor="Red"></asp:RequiredFieldValidator> --%>
             
             <asp:TextBox id="txtPassword" class="logincredentials" runat="server" placeholder="Password" /><br /> 

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
              
        </div>
      </div>
      <div class="register">
            <div class="registerContainer">
              <i class="fas fa-user-plus fa-5x"></i>
              <h2 id="hello">Hello!</h2> 
       
              <p id="spacesaver">If you have never signed in click here.</p>
              <asp:Button class="registerbutton" 
                  PostBackUrl="~/Register.aspx" runat="server"
                  placeholder ="Register" text ="Register" />
              </div>
        </div>
     </div>  


</form>
</body>
</html>
