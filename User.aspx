<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="PhoneApp.User" %>

<!DOCTYPE html>
<link rel="stylesheet" href="Css/User.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body>
    <form id="form1" runat="server">
        <asp:GridView ID="Gridview1" runat="server" AutoGenerateColumns="False" AllowPaging="True"
AllowSorting="true" Width="650px" PageSize="20"
CssClass="Gridview">
             
<Columns>
     
    <asp:BoundField DataField="id" HeaderText="id" SortExpression="id"
        ItemStyle-Width="50px" ItemStyle-HorizontalAlign="Center" />
    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="Department" HeaderText="Department" SortExpression="Department"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="Phone Number" HeaderText="Phone Number" SortExpression="Phone Number"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="Extension Number" HeaderText="Extension Number" SortExpression="Extension Number"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="Fax Number" HeaderText="Fax Number" SortExpression="Fax Number"
        ItemStyle-Width="150px" />
</Columns>
</asp:GridView>
        



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
         <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
            DataFile="~/App_Data/Phonebook.accdb" 
             SelectCommand="SELECT FirstName, LastName, Department FROM [user]">
        </asp:AccessDataSource>
        <asp:GridView ID="GridView2" runat="server" DataSourceID="AccessDataSource1">
        </asp:GridView>
    </form>
</body>
</html>
