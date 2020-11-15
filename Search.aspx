<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="PhoneApp.Home" %>

<link rel="stylesheet" href="Css/Index.css"/>
<script src="loginReg.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title></title>
</head>

<body>

<form id="form1" runat="server">   
<div>    
             <h2 id ="Search"> Search </h2>
<div id ="Name">
        <h2 id ="N"> Name </h2>
        <hr />
            
    <div id="FirstName">
        <h3 id="First"> First Name </h3>
        
        <asp:TextBox runat="server" id="fname"/>
       </div>
      <br /><br />
  
        <h3 id ="Last"> Last Name </h3>
        <asp:TextBox runat="server" type="text" id ="lname"  name="lname" />
        <asp:Button ID="Enter1"  Text="Enter" OnClick="btnUser_Click" runat="server" />

        <asp:Button  id="clear1" runat="server" Text="Clear" OnClientClick="Cancel()"/>

         <asp:Label runat="server" id="lblmessage1" /> 
</div>
        <br /><br />
    <hr />


<div>
          <h2 id ="PhoneNumber"> Phone Number</h2>
            <h2 id ="FaxNumber"> Fax Number </h2>
    <hr />


<div id="phoneform"> 
        <!-- pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required!-->
            <asp:TextBox runat="server" type="text" id ="PhoneNum"  name="phonenumber"/>
                
    <br><br>
                 
        <!-- pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required!-->
    <asp:TextBox runat="server" type="text" id ="ExtNumber"  name="ExtensionNumber" />
           
    <br><br>

    <asp:Button ID="Enter2" runat="server" OnClick="PhoExtbtn_Click" Text="Enter"/>
       
        <asp:Button runat="server" type="button" id="clear2" CssClass="clear2" OnClientClick="cancel();" Text="Clear" /> 
                      
    <asp:Label runat="server" id="lblmessage2" > </asp:Label>
    
    <!-- pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required!-->
    <asp:TextBox runat="server" type="text" id ="FaxNum"   name="FaxNumber"/>
              <br><br />
      
        <asp:Button ID="Enter3" runat="server" OnClick="Faxbtn_Click" Text="Enter" />

        <asp:Button runat="server" type="button" ID="clear3" CssClass="clear3" OnClientClick="cancel();" Text="Clear"/> 
                     
    <asp:Label runat="server" id="lblmessage3" > </asp:Label>
        <hr />
</div>
   
    
</div>

<div >
    <h2>Department Name</h2>
    <hr />
<div id ="department">
   <asp:DropDownList ID="DD_Department" runat="server" >
<asp:ListItem runat="server" ID ="HumanResource" >Human Resources</asp:ListItem>
<asp:ListItem runat="server" ID="Finance" >Finance</asp:ListItem>
<asp:ListItem runat="server" ID="Sales">Sales</asp:ListItem>
</asp:DropDownList>

            <asp:Button ID="Button3" runat="server" OnClick="Departmentbtn_Click" Text="Enter"/>
    <asp:Label runat="server" id="lblmessage4" > </asp:Label>
        <br><br>
        
</div>
</div>
</div>
</form>
</body>

</html>
