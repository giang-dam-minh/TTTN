<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="tin-tuc.aspx.cs" Inherits="GUI.tin_tuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view-type pull-left">
                  <a href="/huong-dan-mua-hang.html" class=
                  "grid-view active"></a>
                </div>
                <div class="pull-left headerLine">
                  <a href="tin-tuc.aspx"
                  "Hướng dẫn mua hàng">
                  <h1 class="h1title">Tin tức</h1></a>
                </div>
  
    <p style="color:red" aria-sort="none">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified" style="height: 50px ;width:100%">
                    <tr>
                        <td style="height: 50px ;width:150px">
                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ChiTietTinTuc.aspx?id=" +Eval("maTinTuc").ToString()%>'
                                ImageUrl='<%# Eval("HinhAnhBia") %>'> 
                            </asp:HyperLink>
                        </td>
                        <td class="tinTuc">
                                 <h4> <b>
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "ChiTietTinTuc.aspx?id=" +Eval("maTinTuc").ToString()%>'
                                    Text='<%# Eval("TieuDe") %>' >
                                </asp:HyperLink>
                                     </b>
                                </h4><br />
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "ChiTietTinTuc.aspx?id=" +Eval("maTinTuc").ToString()%>'
                                    Text='<%# Eval("TomTat") %>' ><br />
                                </asp:HyperLink>
                        </td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
    <div style="text-align:center"><asp:Button ID="btnTruoc" runat="server"  Text="Trước" OnClick="btnTruoc_Click" />
    <asp:Button ID="btnSau" runat="server" Text="Sau" OnClick="btnSau_Click"/></div>
    
    
</asp:Content>
