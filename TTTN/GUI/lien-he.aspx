<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage_khongMenuDoc.Master" AutoEventWireup="true" CodeBehind="lien-he.aspx.cs" Inherits="GUI.lien_he" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="nav-justified">
        <tr>
            <td style="width:50%; text-align:center"><b>HV NET CO,.LTD. TRUNG TÂM BÁN HÀNG TRỰC TUYẾN IMUA </b></td>
            <td> <h4><b>  Gửi thông tin liên hệ </b> </h4> </td>
        </tr>
        <tr>
            <td style="width:50%; text-align:center"><b style="color:blue">Trung tâm phân phối:</b> 255 Bình Lợi, Phường 13, Q. Bình Thạnh, TPHCM
Hotline: 0911 403 114 </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" style="width:50%" placeholder="Họ tên (*)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  style="width:50%; text-align:center">E-mail: support@HoanHi.com.vn - Website: <span style="color:blue">www.HoanHi.com.vn</span> </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"  style="width:50%" placeholder="Số điện thoại (*)" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" style="width:50%"  placeholder="Địa chỉ (*)"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" style="width:50%" placeholder="Email để nhận quà tặng (*)" ></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" style="width:50%" placeholder="Tiêu đề liên hệ (*)" ></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td></td>
            <td>  
                <textarea style="width:50%" id="TextArea1" cols="20" name="S1" rows="2"  placeholder="Nội dung liên hệ (*)" ></textarea></td>
        </tr>
        <tr>
            <td></td>
            <td class="btSubmit"> <asp:Button BackColor="AliceBlue" ID="Button1" runat="server"  Text="Gửi thông tin" /></td>
        </tr>
    </table>
</asp:Content>
