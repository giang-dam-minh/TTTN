<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="QuanLySanPham.aspx.cs" Inherits="GUI.Admin.QuanLySanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [maSP] = @maSP"  SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [tenSP] = @tenSP, [mieuTa] = @mieuTa, [gia] = @gia, [chiTietSP] = @chiTietSP, [soLuong] = @soLuong, [thanhPhan] = @thanhPhan, [cachSuDung] = @cachSuDung WHERE [maSP] = @maSP" >
        <DeleteParameters>
            <asp:Parameter Name="maSP" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="tenSP" />
            <asp:Parameter Name="mieuTa" />
            <asp:Parameter Name="gia" />
            <asp:Parameter Name="chiTietSP" />
            <asp:Parameter Name="soLuong" />
            <asp:Parameter Name="thanhPhan" />
            <asp:Parameter Name="cachSuDung" />
            <asp:Parameter Name="maSP" />
        </UpdateParameters>
    

    </asp:SqlDataSource>
    <asp:Button ID="Button1" runat="server" Text="Thêm sản phẩm" OnClick="Button1_Click" /><br />
    <asp:GridView ID="GridView1"  runat="server" DataSourceID="SqlDataSource1" DataKeyNames="maSP" AutoGenerateColumns="False" PageSize="3" AllowPaging="True">
        <Columns>
            <asp:TemplateField HeaderText="Thông tin sản phẩm">
                <ItemTemplate>
                     <h2 style="color:blue; font-weight:bold"><%# Eval("tenSP") %></h2><br />
                    <p align="justify"><%# Eval("mieuTa")%></p><br />
                    <h3 style="color:red">Giá: <%# Eval("gia") %></h3>
                    <h3 >Số lượng: <%# Eval("soLuong") %></h3>
                </ItemTemplate>
                <EditItemTemplate>
                    <b>Tên sản phẩm:</b><br />
                    <asp:TextBox runat="server" ID="txtTenSanPham" TextMode="MultiLine" Row="3"
                        Text='<%# Bind("tenSP") %>'></asp:TextBox>
                    <b>Miêu tả:</b><br />
                    <asp:TextBox runat="server" ID="txtMieuTa" TextMode="MultiLine" Row="7"
                        Text='<%# Bind("mieuTa") %>'></asp:TextBox>
                    <b>Giá sách:</b><br />
                    <asp:TextBox runat="server" ID="txtGia" TextMode="MultiLine"
                        Text='<%# Bind("gia") %>'></asp:TextBox>
                    <b>Số lượng:</b><br />
                    <asp:TextBox runat="server" ID="TextBox1" TextMode="MultiLine"
                        Text='<%# Bind("soLuong") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hình ảnh">
                <ItemTemplate>
                    <asp:Image ID="imgHinhAnh" runat="server" Width="100px" ImageUrl='<%# Bind("hinhAnh") %>'></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Chi tiết sản phẩm">
                <ItemTemplate>
                    <p align="justify"><%# Eval("chiTietSP")%></p><br />
                </ItemTemplate>
                <EditItemTemplate>
                    <b>Chi tiết sản phẩm:</b><br />
                    <asp:TextBox runat="server" ID="txtChiTietSP" TextMode="MultiLine" Row="7"
                        Text='<%# Bind("chiTietSP") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Ảnh chi tiết">
                <ItemTemplate>
                <asp:Image ID="imgAnhChiTiet" runat="server" Width="100px" ImageUrl='<%# Eval("hinhChiTiet") %>'></asp:Image>
            </ItemTemplate>
                    </asp:TemplateField>
            <asp:TemplateField HeaderText="Thành phần - Công dụng">
                <ItemTemplate>
                    <p align="justify"><%# Eval("thanhPhan")%></p><br />
                </ItemTemplate>
                <EditItemTemplate>
                    <b>Thành phần - Công dụng:</b><br />
                    <asp:TextBox runat="server" ID="txtThanhPhan" TextMode="MultiLine" Row="7"
                        Text='<%# Bind("thanhPhan") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hình ảnh thành phần">
                <ItemTemplate>
                <asp:Image ID="imgAnhThanhPhan" runat="server" Width="100px" ImageUrl='<%# Eval("anhThanhPhan") %>'></asp:Image>
            </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cách sử dụng">
                <ItemTemplate>
                    <p align="justify"><%# Eval("cachSuDung")%></p><br />
                </ItemTemplate>
                <EditItemTemplate>
                    <b>Hướng dẫn sử dụng:</b><br />
                    <asp:TextBox runat="server" ID="txtCachSuDung" TextMode="MultiLine" Row="7"
                        Text='<%# Bind("cachSuDung") %>'></asp:TextBox>
                </EditItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Hình ảnh sử dụng">
                <ItemTemplate>
                <asp:Image ID="imgHinhAnhSuDung" runat="server" Width="100px" ImageUrl='<%# Eval("hinhAnhSuDung") %>'></asp:Image>
                    </ItemTemplate>
            </asp:TemplateField>
            <asp:CommandField CancelText="Hủy" EditText="Sửa" HeaderText="Sửa" ShowEditButton="True" UpdateText="Lưu" />
            <asp:CommandField DeleteText="Xóa" HeaderText="Xóa" ShowDeleteButton="True" />
        </Columns>
        
    </asp:GridView>
</asp:Content>
