<%@ Page Title="" Language="C#" MasterPageFile="~/admin/MasterPage.master" AutoEventWireup="true" CodeFile="frmret.aspx.cs" Inherits="admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h6>Retailers</h6>
    <p>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Add New Retailer</asp:LinkButton>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" Width="584px" AutoGenerateColumns="False" DataSourceID="ObjectDataSource1" DataKeyNames="retcod" OnRowDeleting="GridView1_RowDeleting">
            <Columns>
                <asp:TemplateField>
        <ItemTemplate>
<img src="../retpics/<%#Eval("retcod")%><%#Eval("retlog") %>" height="60px" width="60px" />
        </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="retbusnam" HeaderText="Business Name" SortExpression="retbusnam" />
                <asp:BoundField DataField="retadd" HeaderText="Address" SortExpression="retadd" />
                <asp:BoundField DataField="retcnt" HeaderText="Country" SortExpression="retcnt" />
                <asp:BoundField DataField="retzipcod" HeaderText="Zip Code" SortExpression="retzipcod" />
                <asp:BoundField DataField="retmetact" HeaderText="Mechant Acc." SortExpression="retmetact" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </p>
    <p>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsret"></asp:ObjectDataSource>
    </p>
</asp:Content>

