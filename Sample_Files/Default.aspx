<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <strong><span style="font-size: x-large"><span style="color: #0000CC">Login</span> </span> </strong>
        <br />
        <span style="font-size: large">Username</span><asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID,COURSE_ID,SEC_ID,SEMESTER,YEAR" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" SortExpression="ID" />
                <asp:BoundField DataField="COURSE_ID" HeaderText="COURSE_ID" ReadOnly="True" SortExpression="COURSE_ID" />
                <asp:BoundField DataField="SEC_ID" HeaderText="SEC_ID" ReadOnly="True" SortExpression="SEC_ID" />
                <asp:BoundField DataField="SEMESTER" HeaderText="SEMESTER" ReadOnly="True" SortExpression="SEMESTER" />
                <asp:BoundField DataField="YEAR" HeaderText="YEAR" ReadOnly="True" SortExpression="YEAR" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TEACHES&quot;"></asp:SqlDataSource>
        <br />
        <asp:TextBox ID="TextBox1" class="form-control" runat="server" Height="40px" Width="175px"></asp:TextBox>
        <br />
        <span style="font-size: large">Role<br />
        <asp:TextBox ID="TextBox2" class="form-control" runat="server" Height="40px" Width="175px"  ></asp:TextBox>
        </span>
        <br />
        <span style="font-size: large">Password</span><br />
        <asp:TextBox ID="TextBox3" class="form-control" runat="server" Height="40px" Width="175px" ></asp:TextBox>
        <br />
        <asp:Button ID="Button1" class="btn btn-primary" runat="server" Height="37px" OnClick="Button1_Click" Text="Login" Width="98px" />
        <br />
        <br />
        <asp:TextBox ID="TextBox4" class="form-control" runat="server" Height="40px" Width="175px" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
    </div>

    <div class="row">
    </div>
</asp:Content>
