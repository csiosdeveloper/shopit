<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="frmreg.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h2>Registration</h2>
    <table style="width: 100%">
        <tr>
            <td style="width: 169px; height: 28px">Email</td>
            <td style="height: 28px">
                <asp:TextBox ID="txteml" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txteml" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txteml" ErrorMessage="Enter valid email id" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
            <td style="height: 28px"></td>
        </tr>
        <tr>
            <td style="width: 169px; height: 28px">Password</td>
            <td style="height: 28px">
                <asp:TextBox ID="txtpwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
            <td style="height: 28px"></td>
        </tr>
        <tr>
            <td style="width: 169px; height: 28px">Confirm Password</td>
            <td style="height: 28px">
                <asp:TextBox ID="txtconpwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtconpwd" ErrorMessage="*"></asp:RequiredFieldValidator>
&nbsp;&nbsp;&nbsp;
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpwd" ControlToValidate="txtconpwd" ErrorMessage="password not match"></asp:CompareValidator>
            </td>
            <td style="height: 28px"></td>
        </tr>
        <tr>
            <td style="width: 169px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px">&nbsp;</td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 169px">&nbsp;</td>
            <td>This registration process is for general users.For Business registration kindly contact site administrator at<br />
                <a href="mailto:admin@shopittome.com">admin@shopittome.com</a><br />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

