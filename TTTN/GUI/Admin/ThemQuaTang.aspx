<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="ThemQuaTang.aspx.cs" Inherits="GUI.Admin.ThemQuaTang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Tên quà tặng:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTenQT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Miêu tả:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtMieuTa" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Giá quà tặng:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtGiaQT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="Hình ảnh:"></asp:Label>
                    </td>
                    <td>
                        <asp:FileUpload ID="UpAnh" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="btThem" runat="server" Text="Thêm" OnClick="btThem_Click1"  />
                        <asp:Button ID="btNhaplai" runat="server" Text="Nhập lại" OnClick="btNhaplai_Click1"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="maQuaTang" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" PageSize="4">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="tenQuaTang" HeaderText="Tên quà tặng" SortExpression="tenQuaTang" />
                                <asp:BoundField DataField="mieuTa" HeaderText="Miêu tả" SortExpression="mieuTa" />
                                <asp:ImageField DataImageUrlField="hinhAnhQua" HeaderText="Hình ảnh">
                                </asp:ImageField>
                                <asp:BoundField DataField="giaQua" HeaderText="Giá" SortExpression="giaQua" />
                                
                            </Columns>
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                        </asp:GridView>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:imua1ConnectionString %>'
                            SelectCommand="SELECT [maQuaTang], [tenQuaTang], [mieuTa], [hinhAnhQua], [giaQua], 'ThemQuaTang.aspx' as ChiTiet FROM [QuaTang]"></asp:SqlDataSource>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>
</asp:Content>
