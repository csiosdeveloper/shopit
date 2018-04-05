<%@ Page Title="" Language="C#" MasterPageFile="~/retailer/MasterPage.master" AutoEventWireup="true" CodeFile="frmord.aspx.cs" Inherits="retailer_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>Orders Received(<asp:Label ID="Label1" runat="server" ForeColor="Red" Text="Label"></asp:Label>
        )<asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </h3>
    <p>
        &nbsp;
    <table style="width: 100%">
        <tr>
            <td style="width: 127px">Start Date</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox1">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">End Date</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CalendarExtender ID="TextBox2_CalendarExtender" runat="server" Enabled="True" TargetControlID="TextBox2">
                </asp:CalendarExtender>
            </td>
        </tr>
        <tr>
            <td style="width: 127px">&nbsp;</td>
            <td>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Show Orders" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeader="False" Width="595px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
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
                                        <td style="width: 207px"><b>Order Status</b></td>
                                        <td>
                                            <asp:Literal ID="Literal1" runat="server" Text='<%#getsts(Convert.ToChar(Eval("orddelsts"))) %>'>

                                            </asp:Literal>
                                                                
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
                                   
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                </td>
        </tr>
    </table>
        </p>
</asp:Content>

