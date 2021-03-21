<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="ThemMoiTinTuc.aspx.cs" Inherits="GUI.Admin.ThemMoi.ThemMoiTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3 style="color:red">Thêm Tin Tức</h3>
    <table class="nav-justified" style="height: 431px">
        <tr>
            <td style="width: 309px" class="text-center">
               <asp:Literal ID="Literal1" runat="server" Text="Tiêu Đề Tin Tức"></asp:Literal>
            </td>
            <td>
                <asp:TextBox ID="txtTieuDe" runat="server" TextMode="MultiLine" Rows="3" Width="800px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" style="width: 309px">
                <asp:Literal ID="Literal2" runat="server" Text="Hình Ảnh"></asp:Literal>
            </td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" Height="31px" Width="500px" />
            </td>
        </tr>
        <tr>
            <td style="width: 309px; height: 101px" class="text-center">
                <asp:Literal ID="Literal3" runat="server" Text="Tóm Tắt Tin Tức"></asp:Literal>
            </td>
            <td style="height: 101px">
                <asp:TextBox ID="txtTomTat" runat="server" TextMode="MultiLine" Rows="3" Width="800px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="text-center" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text="Thêm Mới" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNhapLai" runat="server" OnClick="btnNhapLai_Click" Text="Nhập Lại" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnBack" runat="server" OnClick="btnBack_Click" Text="Quay Về" />
            </td>
        </tr>
    </table>
<br />
<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="maTinTuc" DataSourceID="SqlDataSource1" GridLines="Horizontal" PageSize="4" Width="100%" CssClass="merge-left">
    <AlternatingRowStyle BackColor="#F7F7F7" />
    <Columns>
        <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề" SortExpression="TieuDe" />
        <asp:BoundField DataField="TomTat" HeaderText="Tóm Tắt" SortExpression="TomTat" />
       <asp:TemplateField HeaderText="Hình Ảnh">
                <ItemTemplate >
                    <asp:Image runat="server" ImageUrl='<%#Eval("HinhAnhBia") %>' Width="250px" Height="200px"/>
                </ItemTemplate>        
            </asp:TemplateField>
    </Columns>
    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
    <SortedAscendingCellStyle BackColor="#F4F4FD" />
    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
    <SortedDescendingCellStyle BackColor="#D8D8F0" />
    <SortedDescendingHeaderStyle BackColor="#3E3277" />
</asp:GridView>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TinTuc]">
</asp:SqlDataSource>

</asp:Content>
