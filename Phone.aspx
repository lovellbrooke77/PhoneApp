<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Phone.aspx.cs" Inherits="PhoneApp.Phone" %>

<!DOCTYPE html>
<link rel="stylesheet" href="Css/Phone.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

<asp:GridView ID="PhoneSearch" runat="server" HeaderStyle-BackColor="Blue" AutoGenerateColumns="false"
          AllowPaging="true" OnPageIndexChanging="PhoneSearch_PageIndexChanging" AlternatingRowStyle-BackColor="WhiteSmoke">   
           
<%--#0F52BA--%><%--#e5e4e2--%>
<Columns>
   
   <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="Phone Number"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="ExtensionNumber" HeaderText="Extension Number" SortExpression="Extension Number"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="FaxNumber" HeaderText="Fax Number" SortExpression="Fax Number"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="Department"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="Email"
        ItemStyle-Width="150px" />
</Columns>
</asp:GridView>

       <div class="text-center">
    <h2 id="PhoneTitle" >Phone</h2>
</div>

       
    </form>
</body>
</html>
