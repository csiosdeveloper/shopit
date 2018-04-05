<%@ Page Title="" Language="C#" MasterPageFile="~/user/MasterPage.master" AutoEventWireup="true" CodeFile="frmprddet.aspx.cs" Inherits="user_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<head>
     <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/jquery.lightbox-0.5.js" type="text/javascript"></script>
    <link href="css/jquery.lightbox-0.5.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#gallery a").lightBox();
        });
    </script>
</head>
<div class="pro-cart-page">
        <div class="prodt-img">
          <div class="product-item1">
            <div class="product-item-inner1">
              <div class="product-img1" id="gallery"> 
                  <asp:DataList ID="DataList1" runat="server" DataSourceID="ObjectDataSource1" Height="225px" RepeatColumns="3" RepeatDirection="Horizontal" Width="399px">
                      <ItemTemplate>
        <a href='../prdpics/<%#Eval("prdpiccod") %><%#Eval("prdpicpic")%>'>
    <img src='../prdpics/<%#Eval("prdpiccod")%><%#Eval("prdpicpic") %>' height="100" />
    </a>
                      </ItemTemplate>
                  </asp:DataList>
                  <br />
                  <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="disp_rec" TypeName="nsshop.clsprdpic">
                      <SelectParameters>
                          <asp:QueryStringParameter Name="prdcod" QueryStringField="pcod" Type="Int32" />
                      </SelectParameters>
                  </asp:ObjectDataSource>
                </div>
            </div>
          </div>
        </div>
        <div class="prodt-cart-detail">
          <h5>
              <asp:Label ID="lblprdnam" runat="server"></asp:Label>
            </h5>
          <div class="price-div">
              <asp:Label ID="lblprc" runat="server"></asp:Label> </div>
          <div class="pro-code">Sizes Available:<span> <asp:Label ID="lblsiz" runat="server"></asp:Label> </span> </div>
          <div class="pro-code">Colors Available:<span><asp:Label ID="lblcol" runat="server"></asp:Label> </span> </div>
          <div class="pro-code"> 
             Composition:<span><asp:Label ID="lblcom" runat="server"></asp:Label> </span>   
          </div>
           <div class="pro-code">
              QualQualtity: </div><asp:TextBox ID="txtqty" runat="server"></asp:TextBox>
              &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtqty" ErrorMessage="*"></asp:RequiredFieldValidator>
              &nbsp;&nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtqty" ErrorMessage="Enter Qty" Operator="DataTypeCheck" Type="Integer"></asp:CompareValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:LinkButton  ID="LinkButton1" runat="server" Text="Purchase" Height="17px" Width="119px" OnClick="LinkButton1_Click"></asp:LinkButton>     
              
             
        </div>
        

        <div class="clearfix"></div>
                <div class="pro-discrp"> <h6> Description >
                    <asp:Label ID="lbldsc" runat="server"></asp:Label>
                </div>
      </div>
</asp:Content>

