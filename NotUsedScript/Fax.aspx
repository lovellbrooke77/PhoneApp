<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fax.aspx.cs" Inherits="PhoneApp.Fax" %>

<!DOCTYPE html>
 <link rel="stylesheet" href="Css/Fax.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
<asp:GridView ID="FaxSearch" runat="server" HeaderStyle-BackColor="Blue" AutoGenerateColumns="false"
          AllowPaging="true" OnPageIndexChanging="FaxSearch_PageIndexChanging" AlternatingRowStyle-BackColor="WhiteSmoke">   
           
<%--#0F52BA--%><%--#e5e4e2--%>
<Columns>
  
   <asp:BoundField DataField="FaxNumber" HeaderText="Fax Number" SortExpression="Fax Number"
        ItemStyle-Width="150px" /> 
   <asp:BoundField DataField="PhoneNumber" HeaderText="Phone Number" SortExpression="Phone Number"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="ExtensionNumber" HeaderText="Extension Number" SortExpression="Extension Number"
        ItemStyle-Width="150px" />
    <asp:BoundField DataField="DepartmentName" HeaderText="Department" SortExpression="Department"
        ItemStyle-Width="150px" />
   <asp:BoundField DataField="EmailAddress" HeaderText="Email" SortExpression="Email"
        ItemStyle-Width="150px" />
</Columns>
</asp:GridView>
        <div>
            <div class="text-center">
                   <h2 id="Fax">Fax</h2>
            </div>
          
            </div>

    </form>
</body>
</html>
