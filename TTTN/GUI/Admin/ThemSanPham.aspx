<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="ThemSanPham.aspx.cs" Inherits="GUI.Admin.ThemSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<h3 style="color:red">Thêm Mới Sản Phẩm</h3>
    <table border="1" class="nav-justified" style="text-align:justify; margin:auto; width:800px;">
        <tr>
            <td style="width: 25%">Tên sản phẩm:</td>
            <td>
                <asp:TextBox ID="txtTenSP" runat="server" Width="421px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Miêu tả:</td>
            <td>
                <asp:TextBox ID="txtMieuTa" runat="server" Rows="5" Width="417px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Giá:</td>
            <td>
                <asp:TextBox ID="txtGia" runat="server" Width="421px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Hình ảnh 1:</td>
            <td>
                <asp:FileUpload ID="fulAnh1" runat="server" Width="428px" />
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Quà tặng</td>
            <td>
                <asp:DropDownList ID="ddlQuaTang" runat="server" Width="427px" DataSourceID="SqlDataSource2" DataTextField="tenQuaTang" DataValueField="maQuaTang">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Danh mục:</td>
            <td>
                <asp:DropDownList ID="ddlDanhMuc" runat="server" Width="419px" DataSourceID="SqlDataSource1" DataTextField="tenDanhMuc" DataValueField="maDanhMuc">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 25%; height: 29px">Giảm giá:</td>
            <td style="height: 29px">
                <asp:TextBox ID="txtGiamGia" runat="server" Width="415px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Số lượng:</td>
            <td>
                <asp:TextBox ID="txtSoLuong" runat="server" Width="415px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Chi tiết sản phẩm</td>
            <td>
                <asp:TextBox ID="txtChiTietSP" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 260px; height: 23px">Hình ảnh 2:</td>
            <td style="height: 23px">
                <asp:FileUpload ID="fulAnh2" runat="server" Width="526px" />
            </td>
        </tr>
        <tr>
            <td style="width: 260px">Thành phần - Công dụng</td>
            <td>
                <asp:TextBox ID="txtThanhPhan" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Hình ảnh 3:</td>
            <td>
                <asp:FileUpload ID="fulAnh3" runat="server" Width="528px" />
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Hướng dẫn sử dụng:</td>
            <td>
                <asp:TextBox ID="txtHDSD" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 25%">Hình ảnh 4</td>
            <td>
                <asp:FileUpload ID="fulAnh4" runat="server" Width="526px" />
            </td>
        </tr>
         <tr>
            <td class="text-center" colspan="2">
                <asp:Button ID="btnThem" runat="server" Text="Thêm" Width="86px" OnClick="btnThem_Click" />
                <asp:Button ID="btnNhapLai" runat="server" style="margin-left: 87" Text="Nhập lại" OnClick="btnNhapLai_Click" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <div class="text-center">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="maSP" DataSourceID="SqlDataSource3" AllowPaging="True" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" PageIndex="3" Width="779px">
                    <Columns>
                        <asp:BoundField DataField="tenSP" HeaderText="Tên sản phẩm" SortExpression="tenSP" />
                        <asp:BoundField DataField="gia" HeaderText="Giá sản phẩm" SortExpression="gia" />
                        <asp:ImageField DataImageUrlField="hinhAnh" HeaderText="Hình ảnh" ControlStyle-width="80">
<ControlStyle Width="80px"></ControlStyle>
                        </asp:ImageField>
                        <asp:HyperLinkField HeaderText="Chi tiết" Text="xem chi tiết" DataNavigateUrlFields="ChiTiet" />
                    </Columns>
                    <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                    <RowStyle BackColor="White" ForeColor="#330099" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                    <SortedAscendingCellStyle BackColor="#FEFCEB" />
                    <SortedAscendingHeaderStyle BackColor="#AF0101" />
                    <SortedDescendingCellStyle BackColor="#F6F0C0" />
                    <SortedDescendingHeaderStyle BackColor="#7E0000" />
                </asp:GridView>
                </div>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:imua1ConnectionString %>' SelectCommand="SELECT * FROM [DanhMuc]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString='<%$ ConnectionStrings:imua1ConnectionString %>' SelectCommand="SELECT * FROM [QuaTang]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString='<%$ ConnectionStrings:imua1ConnectionString %>' SelectCommand="SELECT [maSP], [tenSP], [gia], [hinhAnh], 'QuanLySanPham.aspx' as ChiTiet FROM [SanPham]"></asp:SqlDataSource>    
            </td>
        </tr>
    </table>
    
</asp:Content>
