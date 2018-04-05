<%@ Page Title="" Language="C#" MasterPageFile="~/retailer/MasterPage.master" AutoEventWireup="true" CodeFile="frmpndord.aspx.cs" Inherits="retailer_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Pending Orders</h3>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" Width="595px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="ordcod" DataSourceID="ObjectDataSource1" OnRowEditing="GridView1_RowEditing">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <table style="width: 100%">
                                    <tr>
                                        <td style="width: 207px"><b>Order Code</b></td>
                                        <td>
                                            <%#Eval("ordcod") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 207px"><b>Date</b></td>
                                        <td>
                                            <%#Eval("orddat","{0:d}") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 207px"><b>Product</b></td>
                                        <td>
                                            <%#Eval("prdnam") %>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="width: 207px"><b>Quantity</b></td>
                                        <td>
                                            <%#Eval("orddetqty") %>
                                        </td>
                                    </tr>
                                 
                                    <tr>
                                        <td style="width: 207px" valign="top"><b>Billing Address</b></td>
                                        <td>
                                            <%#Eval("ordbiladd") %><br />
                                            <%#Eval("ordbilcnt") %><br />
                                            <%#Eval("ordbilzipcod") %>
                                        </td>
                                    </tr>
                                   
                                    <tr>
                                        <td style="width: 207px" valign="top">&nbsp;</td>
                                        <td align="right">
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Edit">Update Order Status</asp:LinkButton>
                                        </td>
                                    </tr>
                                   
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView></p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dsppndord" TypeName="nsshop.clsord">
            <SelectParameters>
                <asp:SessionParameter Name="retcod" SessionField="cod" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>

