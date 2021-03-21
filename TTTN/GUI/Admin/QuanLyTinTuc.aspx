<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Dashboard.Master" AutoEventWireup="true" CodeBehind="QuanLyTinTuc.aspx.cs" Inherits="GUI.Admin.QuanLyTinTuc" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <asp:Button ID="btnThemTinTuc" runat="server" Text="Thêm Mới" style="color:red;border-radius:5px" OnClick="btnThemTinTuc_Click"/>
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString='<%$ ConnectionStrings:imua1ConnectionString %>'
        DeleteCommand="DELETE FROM [TinTuc] WHERE [maTinTuc] = @original_maTinTuc"
        InsertCommand="INSERT INTO [TinTuc] ([TieuDe], [HinhAnhBia], [TomTat], [SLTruyCap]) VALUES (@TieuDe, @HinhAnhBia, @TomTat, @SLTruyCap)"
        SelectCommand="SELECT * FROM [TinTuc]"
        UpdateCommand="UPDATE [TinTuc] SET [TieuDe] = @TieuDe, [HinhAnhBia] = @HinhAnhBia, [TomTat] = @TomTat, [SLTruyCap] = @SLTruyCap WHERE [maTinTuc] = @original_maTinTuc" OldValuesParameterFormatString="original_{0}">
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
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="maTinTuc" DataSourceID="SqlDataSource1" AllowPaging="True" PageSize="5"> 
    <Columns>
        <asp:TemplateField HeaderText="Tiêu Đề">
            <EditItemTemplate>
                <b>Tiêu Đề:</b><br />
                    <asp:TextBox ID="txtTieuDe" runat="server" TextMode="MultiLine" Rows="3" Text='<%# Bind("TieuDe") %>' Width="90%">
                    </asp:TextBox><br />
            </EditItemTemplate>
            <ItemTemplate>
                <h4 style="color:seagreen; font-weight:bold"> <%#Eval("TieuDe") %>
                </h4><br />

            </ItemTemplate>

        </asp:TemplateField>
        <asp:TemplateField HeaderText="Tóm Tắt">
        <ItemTemplate>
                <p><%# Eval("TomTat")%>
                </p>  
            </ItemTemplate>
            <EditItemTemplate>
                <b>Tiêu Đề:</b><br />
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Rows="3" Text='<%# Bind("TomTat") %>' Width="90%">
                    </asp:TextBox><br />
            </EditItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField HeaderText="Hình Ảnh">
            <ItemTemplate>
                 <asp:Image runat="server" ImageUrl='<%#Eval("HinhAnhBia") %>' Width="300px" Height="200px"/>

            </ItemTemplate>
        </asp:TemplateField>
        <asp:CommandField ShowEditButton="True" EditText="Sửa" HeaderText="Sửa" />
        <asp:CommandField ShowDeleteButton="True" DeleteText="Xóa" HeaderText="Xóa" />
    </Columns>
</asp:GridView>
<br />
    <br />

</asp:Content>
