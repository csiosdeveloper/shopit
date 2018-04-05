<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="frmmyord.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h3>My Orders</h3>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" Height="150px" Width="944px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
            <Columns>
                <asp:BoundField DataField="retbusnam" HeaderText="Retailer" />
                <asp:BoundField DataField="orddat" DataFormatString="{0:d}" HeaderText="Order Date" />
                <asp:BoundField DataField="prdnam" HeaderText="Product" />
                <asp:BoundField DataField="orddetqty" HeaderText="Quantity" />
                <asp:TemplateField HeaderText="Order Status">
                    <ItemTemplate>
    <%#getsts(Convert.ToChar(Eval("orddelsts"))) %>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="dspusrord" TypeName="nsshop.clsord">
            <SelectParameters>
                <asp:SessionParameter Name="usrcod" SessionField="cod" Type="Int32" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </p>
</asp:Content>

