<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="PhoneDirectory.Default" %>
<link rel="stylesheet" href="CSS/Registration.css"  />
<link rel="stylesheet" href="Css/LoginReg.css" />
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <script src="Foundation.js"></script>
<head runat="server">
    <title></title>
</head>
<body onload="ChangeColor1()">
    <form id="form1" runat="server" >
 <div class="pageContainer" id="pageContainer">
      
     <%-- Registration portion of page --%>
     <div class="register"> 
          
          <%-- Title in center top of page --%>
              <h1>Register</h1> 
         
        

             <%-- Username creation that a user will use to login --%>
           <asp:TextBox  id="registeruser" class="registeruser" runat="server" placeholder="username" />
             
            <%-- puts a break inbetween the username and password to give space --%>
             <br /> 
            <%-- Password where user inputs the password they will use to login--%>
             <asp:TextBox ID="Registerpass" class="registerpass" runat="server" placeholder="Password" />
            <br />
          <asp:TextBox ID="txtconfirmpassword" class="txtconfirmpassword" runat="server" placeholder="Password confirm" />
  <%-- Validation to check and make sure that user uses 6 characters 1 character and 1 number min in the username. --%>         
          <asp:RegularExpressionValidator ID="rev1" runat="server" 
                    ControlToValidate="registeruser"
                        ErrorMessage="Password must contain: Minimum 6 characters atleast 1 Alphabet and 1 Number"
                                ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$"/>
         <br />
         <%-- drop down menu that a user can choose from a department to see who is in what department --%>
                 <asp:DropDownList ID="DD_Department" runat="server" >
              
                          <asp:ListItem runat="server" ID ="ListItem1" >Human Resources</asp:ListItem>
                          <asp:ListItem runat="server" ID="ListItem2" >Finance</asp:ListItem>
                          <asp:ListItem runat="server" ID="ListItem3">Sales</asp:ListItem>
                
                 </asp:DropDownList>
       <br /><br />

          <%-- Validation to check and make sure that user uses password requirements 8-10 characters 1 upper, 1 lower, 
              1 #, 1 special character for the password --%>
          <asp:regularexpressionvalidator runat="server" display="Dynamic" id="PasswordValidation" ControlToValidate="Registerpass"
              ErrorMessage="Password must contain: Minimum 8 and Maximum 10 characters atleast 1 UpperCase Alphabet, 1 LowerCase Alphabet, 1 Number and 1 Special Character"
                ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,10}"/>
          <div id="FirstName">
                
        
                      <asp:TextBox runat="server" text="First Name" id="fname"/>
                 <%-- Validation to make sure a user has enetered only characters into the text box fname --%>
                 <asp:RegularExpressionValidator
                     ID="RegularExpressionValidator4" runat="server" ErrorMessage="only characters allowed"
                     ControlToValidate="fname" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>

              </div>
                
                
  
               
                <asp:TextBox runat="server" text="Last Name" id ="lname"  name="lname" />
              <%-- Validation to make sure a user has enetered only characters into the text box lname --%>
               <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator5" runat="server" ErrorMessage="only characters allowed"
                     ControlToValidate="lname" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
        
                    <div>
           <%-- puts a break inbetween the username and password to give space --%>


         

          <%-- Button when clicked will register a user for an account --%>
                 <asp:button runat="server" ID="registerbutton" class="registerbutton" OnClick="Unnamed_Click" text="Register"></asp:button>
              <asp:Label runat="server" id="lblmessage1" > </asp:Label>
         <asp:Label runat="server" id="lblmessage2" > </asp:Label>
         
         <div>

                   <%-- Button to clear the username and password if a user wishes --%>
                  <asp:button runat="server" ID="clearfix" text="Cancel" class="clearfix" PostBackUrl="~/login.aspx" CausesValidation="false" ></asp:button>
              </div>
              
         <%-- END OF REGISTRATION PORTION --%>
      </div>
         </div>

    </div>
</form>
</body>
</html>
