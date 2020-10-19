<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Fax.aspx.cs" Inherits="PhoneApp.Fax" %>

<!DOCTYPE html>
 <link rel="stylesheet" href="Css/Fax.css">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="text-center">
                   <h2 id="Fax">Fax</h2>
            </div>
            <div >
                    <table id ="DepTab">
                         <tr>
                             <th id="department">Department</th>
                             <th id="faxnumber">Fax Number</th>
                      
                         </tr>
                    </table>
                
        </div>
            </div>
             <%--<asp:AccessDataSource ID="AccessDataSource2" runat="server" 
            DataFile="~/App_Data/Phonebook.accdb"
                 SelectCommand="SELECT Department Name, FaxNumber FROM department">
        </asp:AccessDataSource>
        <asp:GridView ID="GridView3" runat="server" DataSourceID="AccessDataSource2">
        </asp:GridView>--%>
    </form>
</body>
</html>
