<%@ Page Title="" Language="C#" MasterPageFile="~/retailer/MasterPage.master" AutoEventWireup="true" CodeFile="frmprd.aspx.cs" Inherits="retailer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6>Product Catalogue</h6>
    <p>
        &nbsp;</p>
    <table style="width: 100%">
        <tr>
            <td style="width: 140px">Select Brand</td>
            <td style="width: 153px">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource1" DataTextField="brdnam" DataValueField="brdcod">
                </asp:DropDownList>
            </td>
            <td>
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" CausesValidation="False">Add New Product</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td style="width: 140px">Select Product Type</td>
            <td style="width: 153px">
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" DataSourceID="ObjectDataSource2" DataTextField="prdtypnam" DataValueField="prdtypcod">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" Width="579px" AutoGenerateColumns="False" DataSourceID="ObjectDataSource3" ShowHeader="False" DataKeyNames="prdcod,prdsalsts,prdsalper" OnRowDataBound="GridView1_RowDataBound" OnRowDeleting="GridView1_RowDeleting" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" OnRowUpdating="GridView1_RowUpdating">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                               
                                <table style="width: 100%; height: 116px">
                                    <tr>
                                        <td rowspan="4">
<img src="../prdpics/<%#Eval("pic") %>" width="90px" style="width: 154px; height: 110px" />
                                        </td>
                                        <td style="width: 253px">
        <b><%#Eval("prdnam") %></b>
                                        </td>
                                        <td rowspan="3">
    <asp:Image ImageUrl="~/images/index1.jpg" runat="server" Height="54px" Width="95px"  id="img1" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 253px">
             $<%#Eval("prdprc") %></td>
                                    </tr>
                                    <tr>
                                        <td style="width: 253px">
        <asp:Label ID="lb1" runat="server" Font-Bold="True" ForeColor="Red" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 253px">
    <asp:LinkButton ID="lk1" runat="server" CommandName="Edit"
        text="Edit Product" CausesValidation="False" /> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:LinkButton ID="lk2" runat="server" CommandName="Delete"
        text="Remove Product" CausesValidation="False" />
                                        </td>
                                        <td>
     <asp:Label ID="lb2" runat="server" Text="Discount %" Visible="false"  />
      <asp:TextBox ID="t1" runat="server" Width="25px"  Visible ="false" />
                                            &nbsp;&nbsp;&nbsp;<br />
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="t1"></asp:RequiredFieldValidator><asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[0-9]{0,3}.?[0-9]{1}$" runat="server" ErrorMessage="*" ControlToValidate="t1"></asp:RegularExpressionValidator>
    <asp:LinkButton ID="lk3" runat="server" CommandName="Update" CausesValidation="False" />
                                        </td>
                                    </tr>
                                </table>
                               
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsbrd"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsprdtyp"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="dspretprd" TypeName="nsshop.clsprd">
                    <SelectParameters>
                        <asp:SessionParameter Name="retcod" SessionField="cod" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList1" Name="brdcod" PropertyName="SelectedValue" Type="Int32" />
                        <asp:ControlParameter ControlID="DropDownList2" Name="prdtypcod" PropertyName="SelectedValue" Type="Int32" />
                    </SelectParameters>
                </asp:ObjectDataSource>
                <br />
                </td>
        </tr>
    </table>
</asp:Content>

