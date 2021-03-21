<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="kho-qua-tang.aspx.cs" Inherits="GUI.kho_qua_tang" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view-type pull-left">
                  <a href="#" class=
                  "grid-view active"></a>
                </div>
                <div class="pull-left headerLine">
                  <a href="#" title=
                  "Kho quà tặng">Kho quà tặng</a>
                </div>
              </div>
    
    <asp:DataList ID="DataList1" runat="server" >
        <ItemTemplate>
            <table class="nav-justified">
        <tr>
            <td rowspan="5" style="border-style:none; border-width:1px">
                <asp:HyperLink ID="HyperLink1" runat="server" class="img" align="left"  Height="334px" Width="280px"
                                NavigateUrl='<%# "Chi_Tiet_QT.aspx?maQuaTang=" + Eval("maQuaTang").ToString() %>'
                                ImageUrl='<%# Eval("hinhAnhQua") %>'
                                ToolTip="Xem chi tiết...">
                            </asp:HyperLink>
            </td>
            <td style="height:5px">
                <asp:HyperLink ID="HyperLink3" runat="server" class="img" align="left" Font-Bold="true" Font-Size="Medium"
                                NavigateUrl='<%# "Chi_Tiet_QT.aspx?maQuaTang=" + Eval("maQuaTang").ToString() %>'
                                Text='<%# Eval("tenQuaTang") %>'
                                ToolTip="Xem chi tiết...">
                            </asp:HyperLink>
            </td>
        </tr>
        <tr  style="height:5px">
            <td  style="font-weight:bold; font-size:15px;color:red" >
                <asp:Literal ID="Literal1" runat="server" 
                                Text='<%# Eval("giaQua") %>' />
                            Đ
            </td>
        </tr>
        <tr style="height:5px">
            <td>
                <asp:Label ID="HyperLink2" runat="server"
                                Text='<%# Eval("mieuTa") %>'
                                ToolTip="Xem chi tiết...">                   
                            </asp:Label>
            </td>
        </tr>
        <tr >
            <td style="height:5px;font-weight:bold; font-size:15px;color:blue">
                <img src="/images/ChiTay.png" alt="chọn sản phẩm" class="w29">
                            Chọn ngay sản phẩm để nhận quà tặng này
            </td>
        </tr>
        <tr>
            <td>
                <asp:DataList ID="DataList2" runat="server" colspan="2" RepeatColumns="3" DataSourceID="SqlDataSource1">
                </asp:DataList>
            </td>
        </tr>
    </table>
             <hr />
        </ItemTemplate>

    </asp:DataList>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" 
            SelectCommand="SELECT SanPham.hinhAnh, SanPham.gia, QuaTang.maQuaTang 
FROM QuaTang  INNER JOIN SanPham ON  QuaTang.maQuaTang= SanPham.maQuaTang where QuaTang.maQuaTang=2" ></asp:SqlDataSource>

    
    <div style="text-align:center">

        <asp:Button ID="bt1" runat="server" Text="&lt;&lt; &lt;&lt;" OnClick="bt1_Click1"  />
        <asp:Button ID="bt2" runat="server" Text="&lt;&lt;" OnClick="bt2_Click1" />
        
        <asp:Button ID="bt3" runat="server" Text="&gt;&gt;" OnClick="bt3_Click1" />
        <asp:Button ID="bt4" runat="server" Text="&gt;&gt; &gt;&gt;" OnClick="bt4_Click1" />

    </div>
    

    
</asp:Content>


