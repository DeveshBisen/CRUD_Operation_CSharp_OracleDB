<%@ Page Language="C#" AutoEventWireup="true" CodeFile="adminpanel.aspx.cs" Inherits="adminpanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <asp:PlaceHolder runat="server">
    <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>
    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />

    <style type="text/css">
        .auto-style1 {
            font-size: large;
            color: #3366FF;
        }
        .auto-style5 {
            font-size: large;
            color: #FF3300;
        }
        .auto-style7 {
            font-size: x-large;
            color: #009933;
            }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            font-size: large;
            color: #FF3300;
        }
          .auto-style10 {
            color: #ff0000;
        }
        </style>
</head>
<body>
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

        <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" runat="server" href=""> <p class="auto-style5" style="margin-left: 0px">
                        <strong>ADMIN PANEL</strong></p> </a>
                    <a class="navbar-brand" runat="server" href="#insert"> <p class="auto-style5" style="margin-left: 0px">
            <strong style="margin-left: 0px; color: #FFFFFF; font-size: large;"> Insert </strong></p> </a>
                    <a class="navbar-brand" runat="server" href="#search"> <p class="auto-style5" style="margin-left: 0px">
            <strong style="margin-left: 0px; color: #FFFFFF; font-size: large;"> Search </strong></p> </a>
                    <a class="navbar-brand" runat="server" href="#update"> <p class="auto-style5" style="margin-left: 0px">
            <strong style="margin-left: 0px; color: #FFFFFF; font-size: large;"> Update </strong></p> </a>
                    <a class="navbar-brand" runat="server" href="#delete"> <p class="auto-style5" style="margin-left: 0px">
            <strong style="margin-left: 0px; color: #FFFFFF;"> Delete </strong></p> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <asp:Button ID="Button7" runat="server" OnClick="Button1_Click" Text="Logout" class="btn btn-danger"  Font-Bold="True" Height="31px" Width="134px" CssClass="auto-style10" />
                </div>
            </div>
        </div>
        <center>
        
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Label ID="Label1" runat="server" style="font-size: large; color: #009933" Text="Label"></asp:Label> </p>
            
        <div class="jumbotron" id="insert">
         <p class="auto-style7" style="margin-left: 0px">
         <br />
            CREATE or INSERT
         <p>ID</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox1"  class="form-control" runat="server"></asp:TextBox>
        </p>
        <p>Name</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox2" runat="server"   class="form-control" ></asp:TextBox>
        </p>
        <p>Department</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox3" runat="server"  class="form-control" ></asp:TextBox>
        </p>
        <p>Total Credit</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox4" runat="server"  class="form-control" ></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Button ID="Button2" runat="server"  class="btn btn-primary"  OnClick="Button2_Click" style="height: 40px" Text="Insert" />
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Label ID="Label2" runat="server" style="font-size: large"></asp:Label>
        </p>
        </div>
        
        <div class="jumbotron"  id="search">
        <p class="auto-style7" style="margin-left: 0px; ">
        <br />
                    READ or SEARCH</p>
        <p>ID</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox5" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p>Name</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox6" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p>Department</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox7" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p>Total Credit</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox8" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Button ID="Button3" runat="server" class="btn btn-primary"  OnClick="Button3_Click" style="height: 40px" Text="Search" />
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Label ID="Label3" runat="server" style="font-size: large"></asp:Label>
        </p>
        </div>
        
        <div class="jumbotron"  id="update">
        <p class="auto-style7" style="margin-left: 0px; ">
        <br />
                    UPDATE</p>
        <p>ID</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox9" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p>Department</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox11" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p>Total Credit</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox12" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Button ID="Button4" runat="server" class="btn btn-primary" OnClick="Button4_Click" style="height: 40px" Text="Update" />
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Label ID="Label4" runat="server" style="font-size: large"></asp:Label>
        </p>
        </div>
        
        <div class="jumbotron"  id="delete">
        <p class="auto-style7" style="margin-left: 0px; ">
                    DELETE </p>
        <p>ID</p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:TextBox ID="TextBox13" runat="server" class="form-control" ></asp:TextBox>
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Button ID="Button5" runat="server"  class="btn btn-danger" OnClick="Button5_Click" style="height: 40px"  Text="Delete" />
        </p>
        <p class="auto-style1" style="margin-left: 0px">
            <asp:Label ID="Label5" runat="server" style="font-size: large"></asp:Label>
        </p>
        </div>
        <br />
        </center>
    </form>
</body>
</html>
