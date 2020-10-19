<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PhoneApp.Home" %>

<!DOCTYPE html>
<link rel="stylesheet" href="Css/Index.css"/>
<script src="Home.js"></script>

<html xmlns="http://www.w3.org/1999/xhtml"> 
<head runat="server">
    <title></title>
</head>


<body>
    <form id="form1" runat="server">   

    <div >
             <h2 id ="Search"> Search </h2>
    </div>

    <div id ="Name">
            <h2 id ="N"> Name </h2>
    <hr />
            <!--need to add sql page so data will be sent to form?-->
    <div>
        <h3 id ="First"> First Name </h3>
        <input type="text"  id="fname" name="fname"><br><br>
        
        <h3 id ="Last"> Last Name </h3>
        <asp:Button ID="Enter1" runat="server" Text="Enter" />
        <input type="reset" id="reset3" value=" Reset" />

                 <input type="text" id ="lname"  name="lname"><br><br>
              
    </div>
    <hr />
</div>

    <div>
          <h2 id ="PhoneNumber"> Phone Number</h2>
            <h2 id ="FaxNumber"> Fax Number </h2>
    <hr />


    <div id="phoneform">
        <input type="tel" id="Phone" name="phone" placeholder="123-456-789" ><br><br><!-- pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required!-->
        <input type="tel" id="Ext" name="Ext" placeholder="1234"><br><br><!-- pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required!-->
        <asp:Button ID="Enter2" runat="server" Text="Enter" />
        <input type="reset" id="reset2" value=" Reset" />
        <input type="tel"id="Fax1" name="Fax" placeholder="123-456-789"><br><br /><!-- pattern="[0-9]{3}-[0-9]{2}-[0-9]{3}" required!-->
        <asp:Button ID="Enter3" runat="server" Text="Enter" />
        <input type="reset" id="reset3" value=" Reset" />
    </div>
    <!-- need fax number input XXX-XXX-XXXX-->
    
</div>

<div >
    <h2>Department Name</h2>
    <hr />
    <div id ="department">
        <label for="Department">Choose a department:</label>
        <select name="department" id="department">
            <option value="lighting">Lighting</option>
            <option value="bedroom">Bedroom</option>
            <option value="bathroom">Bathroom</option>
            <option value="kitchen">Kitchen</option>
        </select>
        <br><br>
        <input type="submit" value="Enter">
    </div>
</div>
    </form>
</body>

</html>
