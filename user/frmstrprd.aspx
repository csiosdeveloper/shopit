<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="frmstrprd.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
          <div class="product-box">
                <h2>My Star Products (<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    )</h2>
                    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" DataKeyField="prdcod" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
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
                View Details</a>
                <br /><br />
                <p><%#Eval("retbusnam") %> offers at $<%#getprc(Convert.ToSingle(Eval("prdprc")),Convert.ToSingle(Eval("prdsalper"))) %></p>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
    </ItemTemplate>
                    </asp:DataList>
                    </div>
</asp:Content>

