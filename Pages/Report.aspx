<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Pages/Report.aspx.cs" Inherits="PhoneWebApplication.Report" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>

<body  style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">

    <form id="form1" runat="server">
   <div>

            <h2 id="report"> Report </h2><br />

       <asp:Button ID="FaxNum1" runat="server" PostBackUrl="~/Pages/Search.aspx" Text="Back"/>

        <br /><br />
        
        <p> This is a list of all users. </p>
        </div>
<asp:GridView ID="NameSearch" runat="server" HeaderStyle-BackColor="Blue" HeaderStyle-ForeColor="White"  AutoGenerateColumns="false" 
          AllowPaging="false" AlternatingRowStyle-BackColor="WhiteSmoke">   
           
<Columns>
    
    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="Department"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="Email"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="Phone Number"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="ExtensionNumber" HeaderText="Extension Number" SortExpression="Extension Number"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="FaxNumber" HeaderText="Fax Number" SortExpression="Fax Number"
        ItemStyle-Width="150px" />
</Columns>
</asp:GridView>

        

    </form>
</body>
</html>
