<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="DSSanPhamMa.aspx.cs" Inherits="GUI.SanPham.KemNen" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view-type pull-left">
                  <a href="#" class=
                  "grid-view active"></a>
                </div>
                <div class="pull-left headerLine">
                  <a href="#" title=
                  "Danh sách sản phẩm">Danh sách sản phẩm</a>
                </div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" DataKeyField="maSP">
        <ItemTemplate>
            <div class="item-product-ajax item-product ban-fix bpsoff">
                <div class="product-thumb">
                    <table class="nav-justified">
                        <tr>
                            <td class="product-thumb-link" style="text-align: center">
                                <asp:HyperLink ID="hpl1" runat="server" NavigateUrl='<%# "~/ChiTietSanPham.aspx?maSP="+Eval("maSP").ToString() %>'>
                                    <asp:Image ID="img1" runat="server" CssClass="mwia" ImageUrl='<%# Eval("hinhAnh") %>' />
                                </asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "~/ChiTietSanPham.aspx?maSP="+Eval("maSP").ToString() %>' CssClass="product-title" Text='<%# Eval("tenSp") %>'> </asp:HyperLink>
                            </td>
                        </tr>
                        <tr>
                            <td class="product-price" style="color: orangered; text-align: center">
                                <asp:Label ID="lb1" runat="server" Text='<%# Eval("gia") %>' CssClass="product-price"></asp:Label>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <div style="text-align:center"><asp:Button ID="btnTruoc" runat="server" Text="Trước" OnClick="btnTruoc_Click" />
    <asp:Button ID="btnSau" runat="server"  Text="Sau" OnClick="btnSau_Click"/></div>
</asp:Content>
