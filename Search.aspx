<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Search.aspx.cs" Inherits="PhoneDirectory.Home" %>

<link rel="stylesheet" href="CSS/Search.css">
<script src="Foundation.js"></script>
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title></title>
</head>

<body id="body">

<form id="form1" runat="server">   
     <div id="pageContainer">

                    <%-- Title in center top of page --%>
                 <h2 id ="Search"> Search </h2>
    
         <%-- Tabele to distint from left and right hand side of page
             this table will have the name, phone, department, fax information
             that a person can lookup--%>
    <asp:Table runat="server" Width="100%">
   
      <asp:TableRow>
          
          <%-- Table to distint from left and right hand side of page
             this table will have the name and phone information that
              a person can search for--%>
          <asp:TableCell Width="50%" VerticalAlign="Top" >

              <%-- Div contains the name information a person will be able to search 
                  for a first and last name and also can clear both the first and last name if needed--%>
          <div id ="Namediv">
                      <h2 id ="N"> Name </h2>
                     <hr />
            
             
              <div id="FLNames">
                  
                   <h3 id="First"> First Name </h3>
        
                    <div id="firstName">
                 <asp:Textbox runat="server" ID="TextBox_fname"/>
               
                 
                 
                 <%-- Validation to make sure a user has enetered only characters into the text box fname --%>
                 <asp:RegularExpressionValidator
                     ID="RegularExpressionValidator4" runat="server" ErrorMessage="only characters allowed"
                     ControlToValidate="TextBox_fname" ValidationExpression="^[A-Za-z]*$"></asp:RegularExpressionValidator>

             </div>
                
                <br /><br />
  
                 <h3 id ="Last"> Last Name </h3>
                
                <asp:TextBox runat="server"  id ="lname"  />
             
              
              <%-- Validation to make sure a user has enetered only characters into the text box lname --%>
               <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator5" runat="server" ErrorMessage="only characters allowed"
                     ControlToValidate="lname" ValidationExpression="^[A-Za-z]*$" ></asp:RegularExpressionValidator>
                

                         <asp:Button ID="Enter1"  Text="Enter" OnClick="btnUser_Click" runat="server" />

                        <%-- user can clear both fname and lname instead of manually deleting from the textboxes --%>
                             <asp:Button  id="clear1" runat="server" Text="Clear" OnClientClick="cancel()"/>

                        <%-- verification to make sure that the name was found in the database --%>
                        <asp:Label runat="server" id="lblmessage1" /> 

                 </div>
                       
    </div>
              
        
                        <%-- Div contains the phone information a person will be able to search 
                  for a phone number and also can clear the phone number if needed--%>
       <div id="phonediv">
                    <h2 id ="PhoneNumber"> Phone Number</h2>
                    <hr class="horizontal1"  />
                        <asp:Table runat="server" Width="100%">
                            <asp:TableRow>
                                <asp:TableCell>
                                    
                       <div class="phoneNum"> 
                         <asp:Label runat="server" ID="PhoneTitle" Text="Phone Number"> </asp:Label> 

                            <br /><br />

                          <asp:TextBox runat="server" type="text" id ="PhoneNum" name="phonenumber" /> 


                           <%-- Validation to make sure the user has put 10 digits in --%>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server"  
                            ControlToValidate="PhoneNum" ErrorMessage="10 digits are required with dashes."  
                                    ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:RegularExpressionValidator> 
                       
                           </div>

                                </asp:TableCell>
                                <asp:TableCell>

                                    <%-- Div contains the extension number information a person will be able to search 
                  for a extension number and can clear the extension number if needed--%>
                      <div class="ExtNumber">

                           <asp:Label runat="server" ID="ExtTitle" Text="Extension Number"> </asp:Label>

                                <br /><br />

                          <asp:TextBox runat="server" type="text" id ="ExtNumber"  name="ExtensionNumber" />

                           

                                        <%-- Validation to make sure the user has put 10 digits in --%>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server"  
                            ControlToValidate="ExtNumber" ErrorMessage="3 digits are required"  
                                    ValidationExpression="[0-9]{3}"></asp:RegularExpressionValidator> 


                        </div>
                                </asp:TableCell>
                            </asp:TableRow>
                        </asp:Table>
                       
                        
                         
                           <asp:Button ID="Enter2" runat="server" OnClick="PhoExtbtn_Click" Text="Enter"/>
       
                         <asp:Button runat="server" type="button" id="clear2" CssClass="clear2" OnClientClick="cancel()" Text="Clear" /> 
                      
                             <%-- verification to make sure the phone number & extension number is in the database --%>
                         <asp:Label runat="server" id="lblmessage2" > </asp:Label>
            </div>  

   </asp:TableCell>
                   
                    
                    
    <%-- Table to distint from left and right hand side of page
             this table will have the department name & Fax number information that
              a person can search for--%>
                    
     <asp:TableCell Width="50%"  VerticalAlign="Top">
            

         <div id ="departmentdiv">
                <h2 id="DN">Department Name</h2>
             <hr />
             <%-- drop down menu that a user can choose from a department to see who is in what department --%>
                 <asp:DropDownList ID="DD_Department" runat="server" >
              
                          <asp:ListItem runat="server" ID ="ListItem1" >Human Resources</asp:ListItem>
                          <asp:ListItem runat="server" ID="ListItem2" >Finance</asp:ListItem>
                          <asp:ListItem runat="server" ID="ListItem3">Sales</asp:ListItem>
                
                 </asp:DropDownList>
                    <br /><br />

                 <asp:Button ID="Enter3" runat="server" OnClick="Departmentbtn_Click" Text="Enter"/>

             <%-- verification to make sure the department is in the database --%>
                  <asp:Label runat="server" id="lblmessage4" > </asp:Label>
    </div>
    <div id="faxdiv">
                 <h2 id="FaxNumber"> Fax Number </h2>
                        <hr />
                 
                    <asp:TextBox runat="server" type="text" id="FaxNum"   name="FaxNumber"/>
                    
        
        <%-- Validation to make sure the user has put 10 digits in --%>
                           <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server"  
                            ControlToValidate="FaxNum" ErrorMessage="10 digits are required with dashes."  
                                    ValidationExpression="^(?:(?:\+?1\s*(?:[.-]\s*)?)?(?:\(\s*([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9])\s*\)|([2-9]1[02-9]|[2-9][02-8]1|[2-9][02-8][02-9]))\s*(?:[.-]\s*)?)?([2-9]1[02-9]|[2-9][02-9]1|[2-9][02-9]{2})\s*(?:[.-]\s*)?([0-9]{4})(?:\s*(?:#|x\.?|ext\.?|extension)\s*(\d+))?$"></asp:RegularExpressionValidator> 
      
                       <asp:Button ID="Enter4" runat="server" OnClick="Faxbtn_Click" Text="Enter" />

                       <asp:Button runat="server" type="button" ID="clear3" CssClass="clear4" OnClientClick="cancel()" Text="Clear"/> 
                     
                         <%-- verification to make sure the fax number is in the database --%>
                        <asp:Label runat="server" id="lblmessage3" > </asp:Label>
      </div>
                              
                    </asp:TableCell>
                </asp:TableRow>



            </asp:Table>
         </div>
</form>
</body>

</html>
