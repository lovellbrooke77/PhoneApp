
<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/login.aspx.cs"  EnableEventValidation="true" Inherits="PhoneDirectory.login" %>
<link rel="stylesheet" href="CSS/login.css">
<html>
<script src="Foundation.js"></script>

<head runat="server">
    <title></title>
</head>
    
<body onload="ChangeColor()"> 
<form  runat="server" id="form1">
    <link href="CSS/LoginReg.css" rel="stylesheet" />
<div class="pageContainer" id="pageContainer">
      
    <%-- Login side of page where a user will login to the page --%>
    <div class="login">
        <div class="loginContainer">
              
            <%-- Title in center top of page --%>
            <h1>Login</h1>
     
            
             <%-- Verification to make sure that username and password matches the database --%>
                <asp:Label runat="server" ID="lblmessage"> </asp:Label>
            
            <%-- username textbox where user inputs username credentials --%>
            <asp:TextBox  id="txtusername" class="logincredentials" runat="server" placeholder="username" />
             
            <%-- puts a break inbetween the username and password to give space --%>
             <br />  
                
            <%-- Password textbox where user inputs the password credentials --%>
             <asp:TextBox id="txtPassword" class="logincredentials" runat="server" placeholder="Password" /><br /> 

          <%-- login button that is pressed after credentials are entered --%>
               <asp:Button class="loginbutton" ID="btnLogin" OnClick="btnLogin_Click" 
                  runat="server" Text="Login"  />
            
                  <div id="clear">
                      <%-- Button to clear the username and password if a user wishes --%>
                  <button type="button" class="clearfix" onclick="cancel()"> 
                      Cancel </button>
                 
                  </div> 
            
            </div>
        <%-- END OF LOGIN AND LOGIN CONTAINER    --%>
      </div>

    <%-- Registration side of page where a user can click register for the page and 
        will be sent to the registration page--%>
        <div class="reigster" id="register">
            <div class="registerContainer">
              <i class="fas fa-user-plus fa-5x"></i>
                <%-- hello is displayed to the user --%>
              <h2 id="hello">Hello!</h2> 
                <%-- Will prompt the user if they have never signed in to click the registraiton page --%>
              <p >If you have never signed in click here.</p>

                <%-- If a user clicks the register button they will be redirected to the registration page --%>
              <asp:Button class="registerbutton" 
                  PostBackUrl="~/Register.aspx" runat="server"
                  placeholder ="Register" text ="Register" />
              </div>
         </div>

    </div>
    
      
  

</form>
</body>
</html>
