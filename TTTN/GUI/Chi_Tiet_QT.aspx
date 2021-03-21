<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="Chi_Tiet_QT.aspx.cs" Inherits="GUI.Chi_Tiet_QT" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="view-type pull-left">
        <a href="#" class="grid-view active"></a>
    </div>
    <div class="pull-left headerLine">
        <a href="#" title=" quà tặng">Chi tiết quà tặng</a>
    </div>
    
    
        <asp:DataList ID="DataList1" runat="server" colspan="2" RepeatColumns="3" Height="194px" Width="372px">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td class="item-product-ajax item-product ban-fix bpsoff" style="text-align: center">
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
            </ItemTemplate>
        </asp:DataList>
    
</asp:Content>
