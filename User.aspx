<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="PhoneApp.User" %>--%>

<!DOCTYPE html>
<link rel="stylesheet" href="Css/User.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
    
<div class="text-center">
    <h2 id="UsrTitle">User</h2>
</div>
<div id="userbuttons">
    <input type="button" id="add" value="Add">
    <input type="button" id="edit" value="Edit">
    <input type="button" id="delete" value="Delete">
    <input type="search" id="search" value="Search" />
</div>
<div>
    <table id="PhoneT">
     <tr>
         <th id="FirstN">First Name</th>
         <th id="LastN">Last Name</th>
         <th id="department">Department</th>
         <th id="email"> Email</th>
         <th id="Phonenumber">Phone #</th>
         <th id="extensionnumber">Extension #</th>
         <th id="faxnumber"> Fax #</th>
        </tr>
    </table>
   
</div> 

    </form>
</body>
</html>
