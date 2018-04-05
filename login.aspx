<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Login</h2>
    <p>
        &nbsp;</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 117px; height: 25px">Email</td>
            <td style="height: 25px; width: 207px">
                <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 117px; height: 25px">Password</td>
            <td style="height: 25px; width: 207px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
            </td>
            <td style="height: 25px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td style="width: 207px">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Login" Width="79px" Height="28px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            <td>
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="frmreg.aspx">Not Registered Yet?</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 117px">&nbsp;</td>
            <td style="width: 207px">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

