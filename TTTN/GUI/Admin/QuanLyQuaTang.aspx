<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="QuanLyQuaTang.aspx.cs" Inherits="GUI.Admin.QuanLyQuaTang1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btnThemQuaTang" runat="server" Text="Thêm Mới" style="color:red;border-radius:5px" OnClick="btnThemQuaTang_Click" />
    <br />
    <br />
    <br />
     <div>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" 
                SelectCommand="SELECT * FROM [QuaTang]"
                DeleteCommand="DELETE FROM [QuaTang] WHERE [maQuaTang] = @maQuaTang"
                InsertCommand="INSERT INTO [QuaTang] ([tenQuaTang], [mieuTa], [hinhAnhQua], [giaQua]) VALUES (@tenQuaTang, @mieuTa, @hinhAnhQua, @giaQua)" 
                
                UpdateCommand="UPDATE [QuaTang] SET [tenQuaTang] = @tenQuaTang, [mieuTa] = @mieuTa, [hinhAnhQua] = @hinhAnhQua, [giaQua] = @giaQua WHERE [maQuaTang] = @maQuaTang">
                <DeleteParameters>
                    <asp:Parameter Name="maQuaTang" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="tenQuaTang" Type="String" />
                    <asp:Parameter Name="mieuTa" Type="String" />
                    <asp:Parameter Name="hinhAnhQua" Type="String" />
                    <asp:Parameter Name="giaQua" Type="Double" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="tenQuaTang" Type="String" />
                    <asp:Parameter Name="mieuTa" Type="String" />
                    <asp:Parameter Name="hinhAnhQua" Type="String" />
                    <asp:Parameter Name="giaQua" Type="Double" />
                    <asp:Parameter Name="maQuaTang" Type="Int32" />
                </UpdateParameters>
                
            </asp:SqlDataSource>
            <p>
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateColumns="False" DataKeyNames="maQuaTang" Width="100%" AllowPaging="true" PageSize="4">
                <Columns >
                    <asp:TemplateField HeaderText="Thông tin quà tặng">
                        <ItemTemplate>
                            <h2 style="color:red; font-weight:bold">
                                <%# Eval("tenQuaTang") %></h2><br/>
                                <p align="justify">
                                    <%# Eval("mieuTa") %>
                                </p><br />
                            <h2 style="color:red; font-weight:bold">Giá:<%# Eval("giaQua") %>Đ</h2>
                            
                        </ItemTemplate>
                        <EditItemTemplate>
                            <b>Tên sách:</b><br />
                            <asp:TextBox runat="server" ID="txtTenQua" Width="98%" TextMode="MultiLine" Rows="3"
                                Text='<%# Bind("tenQuaTang") %>'></asp:TextBox>
                            <b>Miêu tả:</b><br />
                            <asp:TextBox runat="server" ID="txtMieuta" Width="98%" TextMode="MultiLine" Rows="7"
                                Text='<%# Bind("mieuTa") %>'></asp:TextBox>
                            <b>Giá:</b><br />
                            <asp:TextBox runat="server" ID="txtGia" Width="50%"
                                Text='<%# Bind("giaQua") %>'></asp:TextBox>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Hình ảnh">
                        <ItemTemplate>
                            <asp:Image runat="server" Width="150px" ImageUrl='<%# Eval("hinhAnhQua") %>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:CommandField ShowEditButton="true" CancelText="Hủy" EditText="Sửa" HeaderText="Sửa" UpdateText="Lưu" />
                    <asp:CommandField ShowDeleteButton="true" HeaderText="Xóa" DeleteText="Xóa" />
                </Columns>
            </asp:GridView>
            </p>
            <p><a href="ThemQuaTang.aspx">&lt; Quay lại</a></p>
        </div>
</asp:Content>
