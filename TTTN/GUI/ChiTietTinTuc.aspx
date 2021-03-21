<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage.Master" AutoEventWireup="true" CodeBehind="ChiTietTinTuc.aspx.cs" Inherits="GUI.ChiTietTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="view-type pull-left">
        <a href="#" class="grid-view active"></a>
    </div>
    <div class="pull-left headerLine">
        <a href="#" title="Chi tiết tin tức">Chi tiết tin tức</a>
    </div>
   
    <p style="color:red">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <table class="nav-justified" style="width:100%" >
                    <tr >
                        <td >
                            <h4 style="color:red;font-weight:bold"><asp:Literal ID="Literal1" runat="server" Text='<%#Eval("TieuDe") %>'> </asp:Literal></h4>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Literal ID="Literal2" runat="server" Text='<%#Eval("TomTat") %>'></asp:Literal>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <p style="color:red">
        <asp:DataList ID="DataList2" runat="server">
            <ItemTemplate>
                <table class="nav-justified">
                    <tr>
                        <td>
                            <h5 style="color:saddlebrown; font-weight:bold"><asp:Literal ID="Literal3" runat="server" Text='<%#Eval("Ten") %>'>
                            </asp:Literal>
                                </h5>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Literal ID="Literal4" runat="server" Text='<%#Eval("NoiDung") %>'></asp:Literal>
                        </td>
                    </tr>
                    <tr>
                        <td>
                 
                             <center> <asp:Image ID="Ima" runat="server" ImageUrl='<%#Eval("HinhAnh") %>' Width="400px"></asp:Image></center>   
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </p>

</asp:Content>
