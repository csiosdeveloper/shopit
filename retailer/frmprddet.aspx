<%@ Page Title="" Language="C#" MasterPageFile="~/retailer/MasterPage.master" AutoEventWireup="true" CodeFile="frmprddet.aspx.cs" Inherits="retailer_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6>Product Details</h6>
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </p>
    <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" Height="465px" Width="633px">
        <asp:TabPanel runat="server" HeaderText="Basic Details" ID="TabPanel1">
        <ContentTemplate>

            <br />
            <table style="width: 100%; height: 280px;">
                <tr>
                    <td style="width: 153px">Select Brand</td>
                    <td>
                        <asp:DropDownList ID="drpbrd" runat="server" DataSourceID="ObjectDataSource1" DataTextField="brdnam" DataValueField="brdcod">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Select Product Type</td>
                    <td>
                        <asp:DropDownList ID="drpprdtyp" runat="server" DataSourceID="ObjectDataSource2" DataTextField="prdtypnam" DataValueField="prdtypcod">
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Product Name</td>
                    <td>
                        <asp:TextBox ID="txtprdnam" runat="server" Width="300px"></asp:TextBox>
                        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtprdnam" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Price</td>
                    <td>
                        <asp:TextBox ID="txtprc" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtprc" ErrorMessage="*"></asp:RequiredFieldValidator>
                        &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" ValidationExpression="^[0-9]{0,3}.?[0-9]{1}$" runat="server" ControlToValidate="txtprc" ErrorMessage="*"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Colors Available</td>
                    <td>
                        <asp:TextBox ID="txtcol" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtcol" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Sizes Available</td>
                    <td>
                        <asp:TextBox ID="txtsiz" runat="server" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtsiz" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Details</td>
                    <td>
                        <asp:TextBox ID="txtdet" runat="server" Height="67px" TextMode="MultiLine" Width="300px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtdet" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">Composition</td>
                    <td>
                        <asp:TextBox ID="txtcom" runat="server" Height="67px" TextMode="MultiLine" Width="297px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtcom" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                
                <tr>
                    <td style="width: 153px">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="Cancel" />
                    </td>
                </tr>
                <tr>
                    <td style="width: 153px">&nbsp;</td>
                    <td>
                        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsbrd"></asp:ObjectDataSource>
                        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsprdtyp"></asp:ObjectDataSource>
                    </td>
                </tr>
            </table>

        </ContentTemplate>
        </asp:TabPanel>
        <asp:TabPanel runat="server" HeaderText="Images" ID="TabPanel2">
       <ContentTemplate>

           <br />
           <table style="width: 100%">
               <tr>
                   <td style="width: 122px">Browse Image</td>
                   <td>
                       <asp:FileUpload ID="FileUpload1" runat="server" />
                   </td>
               </tr>
               <tr>
                   <td style="width: 122px">Set as main image</td>
                   <td>
                       <asp:CheckBox ID="CheckBox1" runat="server" />
                   </td>
               </tr>
               <tr>
                   <td style="width: 122px">&nbsp;</td>
                   <td>
                       <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Upload" />
                   </td>
               </tr>
               <tr>
                   <td colspan="2">
                       <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" Width="616px" DataKeyField="prdpiccod" OnDeleteCommand="DataList1_DeleteCommand">
                       <ItemTemplate>
                           <table border="2">
                               <tr>
                                   <td align ="center">
                <img src="../prdpics/<%#Eval("prdpiccod") %><%#Eval("prdpicpic") %>" height="120px" width="120px" />
                                   </td>
                               </tr>
                               <tr>
                                   <td align="center">
                    <asp:LinkButton ID="lk1" runat="server" CommandName="Edit"  />
                                   </td>
                               </tr>
                               <tr>
                                   <td align="center">
                  <asp:LinkButton ID="lk2" runat="server" CommandName="Delete" Text="Delete" />
                                   </td>
                               </tr>
                           </table>
                       </ItemTemplate>
                       </asp:DataList>
                   </td>
               </tr>
           </table>

       </ContentTemplate>
       </asp:TabPanel>
    </asp:TabContainer>
    <p>
        &nbsp;</p>
</asp:Content>

