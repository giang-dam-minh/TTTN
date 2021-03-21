<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="QuanLyChiTietTinTuc.aspx.cs" Inherits="GUI.Admin.QuanLyChiTietTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:Button ID="btnThemTinTucDetail" runat="server" Text="Thêm Mới " style="color:red;border-radius:5px" OnClick="btnThemTinTucDetail_Click"/>
    <br />
    <br />
    <br />
    <h1>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietTinTuc] WHERE [id] = @original_id" InsertCommand="INSERT INTO [ChiTietTinTuc] ([Ten], [NoiDung], [HinhAnh], [maTinTuc]) VALUES (@Ten, @NoiDung, @HinhAnh, @maTinTuc)" OldValuesParameterFormatString="original_{0}" 
        SelectCommand="SELECT * FROM [ChiTietTinTuc] inner join TinTuc on ChiTietTinTuc.maTinTuc=TinTuc.maTinTuc" 
        UpdateCommand="UPDATE [ChiTietTinTuc] SET [Ten] = @Ten, [NoiDung] = @NoiDung, [HinhAnh] = @HinhAnh, [maTinTuc] = @maTinTuc WHERE [id] = @original_id" >
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
</h1>
<br />
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
    <Columns>
        <asp:TemplateField HeaderText="Chi Tiết Tin Tức">
            <ItemTemplate>
                <h3>
                    <b style="color:red"><%#Eval("TieuDe") %></b>
                </h3>
                <br />
                <h4>
                   <b style="color:red"><%#Eval("Ten") %></b> 
                </h4>
                <br />
                <p>
                    <%#Eval("NoiDung")%>
                </p>
                <br />
            </ItemTemplate>
            <EditItemTemplate>
                <h4>
                   <b style="color:red">Tiêu Đề Tin Tức:</b>
                </h4><br />
                <asp:DropDownList ID="drTieuDe" runat="server" DataSourceID="SqlDataSource2" DataTextField="TieuDe" DataValueField="maTinTuc" SelectedValue='<%# Bind("maTinTuc") %>' Width="90%" Height="50px"></asp:DropDownList>
                <br />
                <br />
                <h4>
                   <b style="color:red">Tên :</b>
                </h4><br />
                <asp:TextBox ID="txtTen" runat="server" TextMode="MultiLine" Rows="3" Text='<%# Bind("Ten") %>' Width="90%"></asp:TextBox><br />
                 <h4>
                   <b style="color:red">Nội Dung :</b>
                </h4><br />
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="3" Text='<%# Bind("NoiDung") %>' Width="90%"></asp:TextBox>
            </EditItemTemplate>
        </asp:TemplateField>
            
        <asp:TemplateField HeaderText="Hình Ảnh">
            <ItemTemplate>
                <asp:Image ID="Anh" Width="250px" runat="server" ImageUrl='<%# Eval("HinhAnh") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField EditText="Sửa" HeaderText="Sửa" ShowEditButton="True" />
        <asp:CommandField DeleteText="Xóa" HeaderText="Xóa" ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:imua1ConnectionString %>" DeleteCommand="DELETE FROM [TinTuc] WHERE [maTinTuc] = @original_maTinTuc" InsertCommand="INSERT INTO [TinTuc] ([TieuDe], [HinhAnhBia], [TomTat], [SLTruyCap]) VALUES (@TieuDe, @HinhAnhBia, @TomTat, @SLTruyCap)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [TinTuc]" UpdateCommand="UPDATE [TinTuc] SET [TieuDe] = @TieuDe, [HinhAnhBia] = @HinhAnhBia, [TomTat] = @TomTat, [SLTruyCap] = @SLTruyCap WHERE [maTinTuc] = @original_maTinTuc">
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
</asp:Content>
