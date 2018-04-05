<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="frmsrcprd.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="width: 222px; height: 12px;" valign ="top">
                <h5>Brands</h5>
                <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="ObjectDataSource1" DataTextField="brdnam" DataValueField="brdcod" Height="16px" Width="211px" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
                </asp:CheckBoxList>
            </td>
            <td rowspan="4" valign="top">
                <div class="product-box">
                <h2>Search Results(<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    )</h2>
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" DataKeyField="prdcod" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" OnEditCommand="DataList1_EditCommand">
<ItemTemplate>             
        <div class="product-item">
          <div class="product-item-inner">
            <div class="product-img">
                 <a href='frmprddet.aspx?pcod=<%#Eval("prdcod") %>'>
                     <img src='../prdpics/<%#Eval("pic") %>' height="200px" width ="170px"/></a>
            </div>
            <h4> <%#Eval("prdnam") %> </h4>
            <div class="add-to"> 
    <a class="add-cart" href='frmprddet.aspx?pcod=<%#Eval("prdcod") %>'>
                View Details</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
   <asp:ImageButton ID="image1" runat="server" CommandName="Edit"
       ImageUrl="~/images/star.jpg" Height="19px" />
                <br /><br />
                <p><%#Eval("retbusnam") %> offers at $<%#getprc(Convert.ToSingle(Eval("prdprc")),Convert.ToSingle(Eval("prdsalper"))) %></p>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
    </ItemTemplate>
                    </asp:DataList>
                    </div>
                
                <p>
                    &nbsp;</p>
            </td>
        </tr>
        <tr>
            <td style="width: 222px" valign ="top">
                <h5>Product Types</h5>
                <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="ObjectDataSource2" DataTextField="prdtypnam" DataValueField="prdtypcod" Height="16px" Width="211px" AutoPostBack="True" OnSelectedIndexChanged="CheckBoxList2_SelectedIndexChanged">
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td style="width: 222px">&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 222px">
                <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsbrd"></asp:ObjectDataSource>
                <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsprdtyp"></asp:ObjectDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

