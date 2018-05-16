<%@ Page Language="C#" AutoEventWireup="true" CodeFile="studentpanel.aspx.cs" Inherits="studentpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

     <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #000000;
        }
        .auto-style2 {
            color: #000000;
            font-size: large;
        }
        .auto-style3 {
            font-size: large;
        }
        .auto-style4 {
            color: #FF0000;
        }
    </style>
</head>
<body style="color: #3399FF; font-weight: 700">
    <form id="form1" runat="server">

    <asp:ScriptManager runat="server">
            <Scripts>
                <%--To learn more about bundling scripts in ScriptManager see http://go.microsoft.com/fwlink/?LinkID=301884 --%>
                <%--Framework Scripts--%>
                <asp:ScriptReference Name="MsAjaxBundle" />
                <asp:ScriptReference Name="jquery" />
                <asp:ScriptReference Name="bootstrap" />
                <asp:ScriptReference Name="respond" />
                <asp:ScriptReference Name="WebForms.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebForms.js" />
                <asp:ScriptReference Name="WebUIValidation.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebUIValidation.js" />
                <asp:ScriptReference Name="MenuStandards.js" Assembly="System.Web" Path="~/Scripts/WebForms/MenuStandards.js" />
                <asp:ScriptReference Name="GridView.js" Assembly="System.Web" Path="~/Scripts/WebForms/GridView.js" />
                <asp:ScriptReference Name="DetailsView.js" Assembly="System.Web" Path="~/Scripts/WebForms/DetailsView.js" />
                <asp:ScriptReference Name="TreeView.js" Assembly="System.Web" Path="~/Scripts/WebForms/TreeView.js" />
                <asp:ScriptReference Name="WebParts.js" Assembly="System.Web" Path="~/Scripts/WebForms/WebParts.js" />
                <asp:ScriptReference Name="Focus.js" Assembly="System.Web" Path="~/Scripts/WebForms/Focus.js" />
                <asp:ScriptReference Name="WebFormsBundle" />
                <%--Site Scripts--%>
            </Scripts>
        </asp:ScriptManager>
        
        <center>
        <p style="margin-left: 0px; font-size: xx-large;" class="auto-style4">
            &gt;&gt;
            Student Panel &lt;&lt;</p>
        <p style="margin-left:  0px">
            &nbsp;
            <asp:Label ID="Label1" runat="server" Text="Label" style="font-size: x-large; color: #33CC33;"></asp:Label></p>
        <br />
        <p style="margin-left: 0px">
            <span class="auto-style1"><span class="auto-style3">ID</span> </span>
            <br />
            <asp:TextBox ID="TextBox1"  class="form-control" runat="server" OnTextChanged="TextBox1_TextChanged" Height="25px"></asp:TextBox>
        </p>
        <p style="margin-left: 0px">
            <span class="auto-style2">Name</span>
            <br />
            <asp:TextBox ID="TextBox2"  class="form-control" runat="server" OnTextChanged="TextBox2_TextChanged" Height="25px" ></asp:TextBox>
        </p>
        <p style="margin-left: 0px">
            <span class="auto-style2">Department</span><span class="auto-style3"> </span>
            <br />
            <asp:TextBox ID="TextBox3" class="form-control" runat="server" Height="25px"></asp:TextBox>
        </p>
        <p style="margin-left: 0px">
            <span class="auto-style2">Total Credit </span>
            <br />
            <asp:TextBox ID="TextBox4" Height="25px"  class="form-control" runat="server" OnTextChanged="TextBox4_TextChanged"></asp:TextBox></p>
        <p style="margin-left: 0px"></p>
        <br />
        <br />
        <div style="margin-left: 0px">
            <asp:Button ID="Button1" runat="server" class="btn btn-danger"  OnClick="Button1_Click" Text="Logout" />
        </div>
        </center>
    </form>
</body>
</html>
