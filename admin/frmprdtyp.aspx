<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmprdtyp.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      

    <h6>Product Types&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text=" "></asp:Label>
    </h6>
    <p>
        &nbsp;</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 122px">Product Type</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="255px"></asp:TextBox>
            &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 122px">Size Required</td>
            <td>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" Height="23px" Width="240px" RepeatColumns="2">
                    <asp:ListItem Value="T">Top</asp:ListItem>
                    <asp:ListItem Value="B">Bottom</asp:ListItem>
                    <asp:ListItem Value="F">Foot</asp:ListItem>
                    <asp:ListItem Value="N">None</asp:ListItem>
                </asp:RadioButtonList>&nbsp;&nbsp;
                <p id="p1" />
            </td>
        </tr>
        <tr>
            <td style="width: 122px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Button2_Click" CausesValidation="False" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="prdtypcod" DataSourceID="ObjectDataSource1" Width="484px" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="prdtypnam" HeaderText="Product Type" SortExpression="prdtypnam" />
                        <asp:TemplateField HeaderText="Size Required">
                            <ItemTemplate>
                         <%#getstr(Convert.ToChar(Eval("prdtypsizsts"))) %>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:CommandField ShowDeleteButton="True" />
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsprdtyp"></asp:ObjectDataSource>
                <br />
            </td>
        </tr>
    </table>
</asp:Content>

