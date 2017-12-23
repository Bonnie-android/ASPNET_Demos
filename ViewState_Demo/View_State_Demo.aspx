<%@ Page Language="C#" AutoEventWireup="true" CodeFile="View_State_Demo.aspx.cs" Inherits="View_State_Demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- asp.net controls generate a hidden view state by default -->
            ASP.NET Control: &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnCount" runat="server" Text="ClickToCount" OnClick="btnCount_Click" />
            <br />
            <br /> <br />
            Add a value to text box below<br />
            <!-- standard HTML controls do not maintain view state but can be made to by using runatnserver attribute -->
            Standard HTML Control(viewstate added) : &nbsp;<input id="Text1" type="text" runat ="server"/>&nbsp; Maintains state through post back requests
            <br />
            <br />
             <br />
            Add a value to text box below<br />
            <!-- standard HTML control does not maintain viewstate -->
            Standard HTML Control(no viewstate): &nbsp;<input id="Text2" type="text"/>&nbsp; Does not maintain state through post back requests
            <br />

            
        </div>
    </form>
</body>
</html>
