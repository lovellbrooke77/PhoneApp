<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="~/Pages/Search.aspx.cs"  Inherits="PhoneApp.Home" %>

<script src="../Foundation.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title></title>
</head>

<body  style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; background-color: #00578a;">

<form id="form1" runat="server">   
        <div id="pageContainer">
            <div style="padding-left: 60px; color:white; padding-top:10px;">

                <%-- Title in center top of page --%>
                    <h2 id ="Search"> Search </h2>
                        
                            <asp:Button runat="server" ID="report" Text="Report Click" PostBackUrl="~/Pages/Report.aspx"/>
                   
                    <b>Choose one of the following search criteria.</b>

            </div>
            <br /><br />
            <%-- Table to distint from left and right hand side of page
             this table will have the name, phone, department, fax information
             that a person can lookup--%>
            <asp:Table runat="server" Width="100%">
                <asp:TableRow>
                    <%-- Table to distint from left and right hand side of page
             this table will have the name and phone information that
              a person can search for--%>
                    <asp:TableCell Width="50%" VerticalAlign="Middle" HorizontalAlign="Center">
                            
                        <asp:Table runat="server" Width="80%" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" BackColor="White">
                                        
                                <asp:TableRow>
                                                <asp:TableCell Width="50%" VerticalAlign="Middle" HorizontalAlign="Center" ColumnSpan="2">
                                                        <h2 id ="N"> Name </h2>   
                                                        <hr class="horizontal1"  />

                                                </asp:TableCell>
                                                <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                               
                                                
                                                </asp:TableCell>
                                        </asp:TableRow>
                                        <asp:TableRow>
                                                    <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center">
                                                            First Name

                                                    </asp:TableCell>
                                                    <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                            Last Name 
                                                
                                                    </asp:TableCell>
                                            </asp:TableRow>
                                        <asp:TableRow>
                                                        <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center">
                                                             <asp:TextBox runat="server" id="fname" /><br />
                                                             <%-- Validation to make sure a user has enetered only characters into the text box fname --%>
                                                                 <asp:RegularExpressionValidator
                                                                          ID="RegularExpressionValidator4" runat="server" ErrorMessage="only characters allowed"
                                                                              ControlToValidate="fname" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>


                                                        </asp:TableCell>
                                                        <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                            <asp:TextBox runat="server" id ="lname" /><br />

                                                             <%-- Validation to make sure a user has enetered only characters into the text box lname --%>
                                                            <asp:RegularExpressionValidator
                                                                          ID="RegularExpressionValidator5" runat="server" ErrorMessage="only characters allowed"
                                                                           ControlToValidate="lname" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
                                                        </asp:TableCell>
                                                </asp:TableRow>
                                        
                            
                                            <asp:TableRow>
                                            <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" ColumnSpan="2">
                                                    <br />
                                                   <asp:Button id="Enter1"  Text="Search Name" OnClick="btnUser_Click" runat="server" />
                                                    &nbsp;
                                                  
                                                <%-- user can clear both fname and lname instead of manually deleting from the textboxes --%>
                                                    <asp:Button  id="clear1" runat="server" Text="Clear Search" OnClientClick="cancel()"/>
                                                 
                                                <%-- verification to make sure that the name was found in the database --%>
                                                   <br /> <asp:Label runat="server" id="lblmessage1" ForeColor="Red" /> 
                                                <br /><br />
                                            </asp:TableCell>
                                            <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center">
                                                 
                                                
                                            </asp:TableCell>
                                    </asp:TableRow>
                            </asp:Table>
                            <br /><br /><br />
                            <asp:Table runat="server" Width="80%" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" BackColor="White">
                                    <asp:TableRow>
                                            <asp:TableCell Width="50%" VerticalAlign="Middle" HorizontalAlign="Center" ColumnSpan="2">
                                                    <h2 id ="PhoneNumber"> Phone Number</h2>
                                                    <hr class="horizontal1"  />

                                            </asp:TableCell>
                                            <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                               
                                                
                                            </asp:TableCell>
                                    </asp:TableRow>
                                    <asp:TableRow>
                                                <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center">
                                                        Phone Number

                                                </asp:TableCell>
                                                <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                         Extension Number
                                                
                                                </asp:TableCell>
                                        </asp:TableRow>
                                    <asp:TableRow>
                                                    <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center">
                                                            <asp:TextBox runat="server" type="text" id ="PhoneNum"  name="phonenumber"/><br />

                                                         <%-- Validation to make sure the user has put 10 digits in --%>
                                                         <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  
                                                                ControlToValidate="PhoneNum" ErrorMessage="10 digits are required with dashes."  
                                                                  ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:RegularExpressionValidator> 

                                                    </asp:TableCell>
                                                    <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                            <asp:TextBox runat="server" type="text" id ="ExtNumber"  name="ExtensionNumber" /><br />

                                                          <%-- Validation to make sure the user has put 10 digits in --%>
                                                             <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"  
                                                                       ControlToValidate="ExtNumber" ErrorMessage="3 digits are required"  
                                                                          ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator> 
                                                    </asp:TableCell>
                                            </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" ColumnSpan="2">
                                                <br />
                                                <asp:Button ID="Enter2" runat="server" OnClick="PhoExtbtn_Click" Text="Search Phone and Extension"/>
                                                &nbsp;
                                                 <asp:Button runat="server" type="button" id="clear2" CssClass="clear2" OnClientClick="cancel()" Text="Clear Search" /> 
                                                <br />
                                             <%-- verification to make sure the phone number & extension number is in the database --%>
                                                 <asp:Label runat="server" id="lblmessage2" ForeColor="Red" > </asp:Label>

                                            <br /><br />
                                        </asp:TableCell>
                                        <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center">
                                                 
                                                
                                        </asp:TableCell>
                                </asp:TableRow>
                        </asp:Table>             
                        
                    </asp:TableCell>  <%-- Table to distint from left and right hand side of page
             this table will have the department name & Fax number information that
              a person can search for--%>
                    <asp:TableCell Width="50%"  VerticalAlign="Top">

                            <asp:Table runat="server" Width="80%" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" BackColor="White">
                                        <asp:TableRow>
                                                <asp:TableCell Width="50%" VerticalAlign="Middle" HorizontalAlign="Center">
                                                        <h2 >Department</h2>
                                                        <hr />

                                                </asp:TableCell>
                                              
                                        </asp:TableRow>
                                        <asp:TableRow>
                                                    <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                            Name

                                                    </asp:TableCell>
                                                   
                                            </asp:TableRow>
                                        <asp:TableRow>
                                                        <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                            <%-- drop down menu that a user can choose from a department to see who is in what department --%>
                                                             <asp:DropDownList ID="DD_Department" runat="server" >              
                                                                      <asp:ListItem runat="server" ID ="ListItem1" >Human Resources</asp:ListItem>
                                                                      <asp:ListItem runat="server" ID="ListItem2" >Finance</asp:ListItem>
                                                                      <asp:ListItem runat="server" ID="ListItem3">Sales</asp:ListItem>
                
                                                             </asp:DropDownList>

                                                        </asp:TableCell>
                                                        
                                                </asp:TableRow>
                                        <asp:TableRow>
                                            <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                    <br />
                                                   
                                                     <asp:Button ID="Button1" runat="server" OnClick="Departmentbtn_Click" Text="Search Department"/>
                                                       <%-- verification to make sure the department is in the database --%>
                                                        <br />
                                                         <asp:Label runat="server" id="lblmessage4" ForeColor="Red" > </asp:Label>
                                                    <br /><br /><br />
                                            </asp:TableCell>
                                           
                                    </asp:TableRow>
                            </asp:Table>
                            <br /><br /><br />
                             <asp:Table runat="server" Width="80%" BorderStyle="Solid" BorderColor="Black" BorderWidth="1" BackColor="White">
                                    <asp:TableRow>
                                            <asp:TableCell Width="50%" VerticalAlign="Middle" HorizontalAlign="Center" >
                                                   <h2 id ="FaxNumber"> Fax Number </h2>
                                                    <hr />
                                            </asp:TableCell>
                                        
                                    </asp:TableRow>
                                <asp:TableRow>
                                                <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center"  >
                                                        Number

                                                </asp:TableCell>
                                          
                                        </asp:TableRow>
                                    <asp:TableRow>
                                                    <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                            <asp:TextBox runat="server" type="text" id="FaxNum"   name="FaxNumber"/><br />

                                                         <%-- Validation to make sure the user has put 10 digits in --%>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"  
                            ControlToValidate="FaxNum" ErrorMessage="10 digits are required with dashes."  
                                    ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:RegularExpressionValidator> 
                                                   
                                                        </asp:TableCell>
                                                   
                                            </asp:TableRow>
                                    <asp:TableRow>
                                        <asp:TableCell Width="50%" VerticalAlign="Top" HorizontalAlign="Center" >
                                                <br />
                                               <asp:Button ID="FaxNum1" runat="server" OnClick="Faxbtn_Click" Text="Search Fax" />
                                            &nbsp;
                                               <asp:Button runat="server" type="button" ID="clear3" CssClass="clear3" OnClientClick="cancel()" Text="Clear Search"/> 
                                                <br />
                                              <%-- verification to make sure the fax number is in the database --%>
                                                <asp:Label runat="server" id="lblmessage3" ForeColor="Red" > </asp:Label>
                                            <br /><br />
                                        </asp:TableCell>
                                        
                                </asp:TableRow>
                        </asp:Table>            
                               
                            </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
</form>
</body>

</html>
