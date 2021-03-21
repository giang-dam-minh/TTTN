<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="ThemMoiTinTucDetail.aspx.cs" Inherits="GUI.Admin.ThemMoiTinTucDetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="color:red"><b> Thêm mới chi tiết tin tức</b></h2>
    <table class="nav-justified">
    <tr>
        <td style="width: 409px; height:100px;text-align:center;font-size:25px" >
            <asp:Literal ID="Literal1" runat="server" Text="Tên :"></asp:Literal>
            
        </td>
        <td>
            <asp:TextBox ID="txtTen" runat="server" TextMode="MultiLine" Rows="3" Width="80%"></asp:TextBox>
            
        </td>
    </tr>
    <tr>
        <td style="width: 409px; height:100px;text-align:center;font-size:25px">
            <asp:Literal ID="Literal2" runat="server" Text="Nội Dung:"></asp:Literal>
    

        </td>

        <td>
            <asp:TextBox ID="txtNoiDung" runat="server" TextMode="MultiLine" Rows="3" Width="80%"></asp:TextBox>
           
        </td>
    </tr>
    <tr>
        <td style="width: 409px; height:100px;text-align:center;font-size:25px">
            <asp:Literal ID="Literal3" runat="server" Text="Hình Ảnh:"></asp:Literal>
      
        </td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Width="500px" />
        </td>
    </tr>
    <tr>
        <td style="width: 409px; height:100px;text-align:center;font-size:25px">
            <asp:Literal ID="Literal4" runat="server" Text="Tin Tức"></asp:Literal>
        </td>
        <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TieuDe" DataValueField="maTinTuc" Height="50px" Width="500px">
            </asp:DropDownList>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="text-center" colspan="2">
            <asp:Button ID="btnThemMoi" runat="server" Text="Thêm Mới" OnClick="btnThemMoi_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnNhapLai" runat="server" CssClass="col-xs-offset-0" Text="Nhập Lại" OnClick="btnNhapLai_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnBack" runat="server" Text="Quay Lại" OnClick="btnBack_Click" />
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString20 %>" DeleteCommand="DELETE FROM [TinTuc] WHERE [maTinTuc] = @original_maTinTuc" InsertCommand="INSERT INTO [TinTuc] ([TieuDe], [HinhAnhBia], [TomTat], [SLTruyCap]) VALUES (@TieuDe, @HinhAnhBia, @TomTat, @SLTruyCap)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TinTuc]" UpdateCommand="UPDATE [TinTuc] SET [TieuDe] = @TieuDe, [HinhAnhBia] = @HinhAnhBia, [TomTat] = @TomTat, [SLTruyCap] = @SLTruyCap WHERE [maTinTuc] = @original_maTinTuc">
                <DeleteParameters>
                    <asp:Parameter Name="original_maTinTuc" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="TieuDe" Type="String" />
                    <asp:Parameter Name="HinhAnhBia" Type="String" />
                    <asp:Parameter Name="TomTat" Type="String" />
                    <asp:Parameter Name="SLTruyCap" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="TieuDe" Type="String" />
                    <asp:Parameter Name="HinhAnhBia" Type="String" />
                    <asp:Parameter Name="TomTat" Type="String" />
                    <asp:Parameter Name="SLTruyCap" Type="Int32" />
                    <asp:Parameter Name="original_maTinTuc" Type="Int32" />
                </UpdateParameters>
                
            </asp:SqlDataSource>
        </td>
    </tr>
</table>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource2" AllowPaging="True" PageSize="4">
    <Columns>
        <asp:BoundField DataField="Ten" HeaderText="Tên " SortExpression="Ten" />
        <asp:BoundField DataField="NoiDung" HeaderText="Nội Dung" SortExpression="NoiDung" />
        <asp:BoundField DataField="maTinTuc" HeaderText="Tin Tức" SortExpression="maTinTuc" />
         <asp:TemplateField HeaderText="Hình Ảnh">
            <ItemTemplate>
                <asp:Image ID="Anh" Width="250px" runat="server" ImageUrl='<%# Eval("HinhAnh") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietTinTuc] WHERE [id] = @original_id" InsertCommand="INSERT INTO [ChiTietTinTuc] ([Ten], [NoiDung], [HinhAnh], [maTinTuc]) VALUES (@Ten, @NoiDung, @HinhAnh, @maTinTuc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ChiTietTinTuc]" UpdateCommand="UPDATE [ChiTietTinTuc] SET [Ten] = @Ten, [NoiDung] = @NoiDung, [HinhAnh] = @HinhAnh, [maTinTuc] = @maTinTuc WHERE [id] = @original_id" OnSelecting="SqlDataSource2_Selecting">
    <DeleteParameters>
        <asp:Parameter Name="original_id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Ten" Type="String" />
        <asp:Parameter Name="NoiDung" Type="String" />
        <asp:Parameter Name="HinhAnh" Type="String" />
        <asp:Parameter Name="maTinTuc" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Ten" Type="String" />
        <asp:Parameter Name="NoiDung" Type="String" />
        <asp:Parameter Name="HinhAnh" Type="String" />
        <asp:Parameter Name="maTinTuc" Type="Int32" />
        <asp:Parameter Name="original_id" Type="Int32" />
    </UpdateParameters>
    
</asp:SqlDataSource>
<br />
<br />

</asp:Content>
