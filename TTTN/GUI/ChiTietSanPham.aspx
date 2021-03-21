<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="GUI.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
    <div class="view-type pull-left">
        <a href="#" class="grid-view active"></a>
    </div>
    <div class="pull-left headerLine">
        <a href="#" title="Danh sách sản phẩm">Chi tiết sản phẩm</a>
    </div>
  
    <asp:DataList ID="DataList1" runat="server" OnItemCommand="DataList1_ItemCommand" style="margin-right: 26px" >
        <ItemTemplate>
            <table class="nav-justified">
        <tr>
            <td style="width: 420px">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("hinhAnh") %>'/>
            </td>
            <td>
                <p style="font-size:25px; font-weight:bold;"><asp:Literal ID="Literal1" runat="server" Text='<%# Eval("tenSP") %>'></asp:Literal>
                </p><br />
                <p style="font-size:16px" ><asp:Literal ID="Literal2" runat="server" Text='<%# Eval("mieuTa") %>'></asp:Literal> </p>
                <br />
                
                <p style="font-size:20px; border-bottom: 1px solid #808080; border-top:1px solid #808080">
                Giá bán: <span style="color:red; font-size:25px"> <asp:Label ID="Label1" runat="server" Text='<%# Eval("gia") %>'></asp:Label>đ </span>
                </p>
                <br />
               <%-- <asp:Button Text="Thêm vào giỏ hàng"  Height="30px" BorderColor="White" BackColor="#ff6600" Font-Size="16px" ForeColor="White" ID="ntnThem" runat="server" OnClick="ntnThem_Click" />--%>
                <input type="button" value="Trở về" onclick="history.go(-1);" style="margin-left:20px; background-color: #ff6600; color:white; height:30px; border-color:white"/>
                <br />
                <br />
                <h5 style="color:red; border-top:1px solid #808080; font-size: 17px; "><p style="margin-top:7px">Quà tặng khi mua sản phẩm</p>
                    <h5></h5>
                    <br />
                    <table class="nav-justified">
                        <tr>
                            <td style="width: 201px">
                                <asp:Image ID="Image2" runat="server" Height="120px" ImageUrl='<%# Eval("hinhAnhQua") %>' Width="100px" />
                            </td>
                            <td>
                                <p style="font-size:18px">
                                    <asp:Label ID="Label3" runat="server" Text='<%# Eval("tenQuaTang") %>'> </asp:Label>
                                </p>
                                <br />
                                <p style="color:red; font-size: 20px">
                                    Giá:<asp:Literal ID="Literal3" runat="server" Text='<%# Eval("giaQua") %>'></asp:Literal>
                                    đ
                                </p>
                            </td>
                        </tr>
                    </table>
                    <h5></h5>
                    <h5>
                       
                    </h5>
                    <h5></h5>
                    <h5></h5>
                    <h5></h5>
                    <h5></h5>
                </h5>
            </td>
        </tr>
        <tr>
            <td colspan="2" style="text-align:center;">
                <h4 style="text-align:left; padding-left:15px; border:1px solid #808080; border-top:2px solid #ff0000; border-radius:5px; height:40px; line-height:40px; ">THÔNG TIN SẢN PHẨM</h4>
                <p style="text-align:justify; font-size:17px"><asp:Literal ID="Literal4" runat="server" Text='<%# Eval("chiTietSP") %>'></asp:Literal>
                </p><br />
                <asp:Image ID="Image3" runat="server" ImageUrl='<%# Eval("hinhChiTiet") %>'/>
                <br />
                <h4 style="text-align:left;padding-left:15px; border:1px solid #808080; border-top:2px solid #ff0000; border-radius:5px; height:40px; line-height:40px; ">THÀNH PHẦN - CÔNG DỤNG</h4>
                <p style="text-align:justify;font-size:17px"><asp:Literal ID="Literal5" runat="server" Text='<%# Eval("thanhPhan") %>'></asp:Literal>
                </p><br />
                <asp:Image ID="Image4" runat="server" ImageUrl='<%# Eval("anhThanhPhan") %>'/>
                <br />
                <h4 style="text-align:left;padding-left:15px; border:1px solid #808080; border-top:2px solid #ff0000; border-radius:5px; height:40px; line-height:40px; ">HƯỚNG DẪN SỬ DỤNG</h4>
                <p style="text-align:justify;font-size:17px"><asp:Literal ID="Literal6" runat="server" Text='<%# Eval("cachSuDung") %>'></asp:Literal>
                </p><br />
                <asp:Image ID="Image5" runat="server" ImageUrl='<%# Eval("hinhAnhSuDung") %>'/>
            </td>
        </tr>
    </table>
        </ItemTemplate>
    </asp:DataList>
    <center>
     <asp:Label ID="Label5" runat="server" Text="Số Lượng"></asp:Label>
    <asp:TextBox ID="txtSoLuong" runat="server" Height="25px" TextMode="Number" Width="200px">1</asp:TextBox>
     <asp:Button ID="btnThemVaoGio" runat="server" OnClick="Button1_Click1" Text="Thêm Vào Giỏ Hàng" Height="30px" BorderColor="White" BackColor="#ff6600" Font-Size="16px" ForeColor="White" />
    </center>
</asp:Content>
