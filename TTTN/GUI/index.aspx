<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage_khongMenuDoc.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="GUI.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <h1 class="hidall">Mỹ phẩm chính hãng online giá rẻ</h1>
        <div class="top-banner7">
            <div class="container">
                <div class="banner-slider banner-slider7">
                    <div class="wrap-item" data-pagination="false"
                        data-navigation="true" data-itemscustom="[[0,1]]"
                        data-autoplay="true">
                        <div class="item-banner7">
                            <div class="banner-thumb">
                                <a href="#">
                                    <img src="/images/mua-xuan-2020-0.jpg"
                                        alt="mua-xuan-2020-0.jpg"
                                        title="Mùa Xuân 2020"></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="service_info">
                    <ul class="clearfix">
                        <li class="col-md-2 col-sm-2 col-xs-6 first odd hmob">
                            <div>
                                <img class="mgt01" src="/images/Logo/ho-tro-247--1.png">
                                <p><strong>Hỗ trợ 24/7</strong>0911 403 114</p>
                            </div>
                        </li>
                        <li class="col-md-2 col-sm-2 col-xs-6 odd hmob">
                            <div>
                                <img class="mgt01" src="/images/Logo/thong-tin--1.png">
                                <p>
                                    <strong>Thông tin</strong>Bảo mật tuyệt
                  đối
                                </p>
                            </div>
                        </li>
                        <li class="col-md-2 col-sm-2 col-xs-6 odd">
                            <div>
                                <img class="mgt01" src="/images/Logo/qua-tang--1.png">
                                <p><strong>Quà tặng</strong>Mua là có quà</p>
                            </div>
                        </li>
                        <li class="col-md-2 col-sm-2 col-xs-6 odd">
                            <div>
                                <img class="mgt01" src="/images/Logo/hoan-tra-tien--1.png">
                                <p><strong>Hoàn trả tiền</strong>Trong 7 ngày</p>
                            </div>
                        </li>
                        <li class="col-md-2 col-sm-2 col-xs-6 odd">
                            <div>
                                <img class="mgt01" src="/images/Logo/thanh-toan--1.png">
                                <p><strong>Thanh toán</strong>Khi nhận hàng</p>
                            </div>
                        </li>
                        <li class="col-md-2 col-sm-2 col-xs-6 odd">
                            <div>
                                <img class="mgt01" src="/images/Logo/giao-hang--1.png">
                                <p>
                                    <strong>Giao hàng</strong>Tận nơi toàn
                  quốc
                                </p>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="container">
        <div class="best-seller title-box6">
          <div class="tab-pro-ajax-header">
            <h4>Sản phẩm bán chạy</h4>
          </div>
          <div class="clearfix">
            <div class="hotcat-slider2 hotcat-slider6">
              
                <div class=
                "item-product-ajax item-product ban-fix bpsoff">
                  <div class="product-thumb">
                     <asp:DataList ID="dtlBanChay" runat="server" RepeatColumns="5">
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
                </div>
              </div>
             </div>
          </div>
        </div>

        <%-- Sản phẩmm bán chạy---%>

        <div class="category-color category-box7">
            <div class="hidden-lg hidden-md cat-img">
                <div class="banner-zoom">
                    <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=1" class="thumb-zoom"></a>
                </div>
            </div>
            <div class="header-cat-color">
                <div class="clearfix">
                    <div class="hotkey-cat-color">
                        <a class="mmhome" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=1">
                            <h2 class="title18 tthall">Mỹ Phẩm Trang
                Điểm</h2>
                        </a>
                        <ul class="cate_child" id="new0">
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Son" title="Son Môi">Son Môi</a>
                            </li>
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Kem" title="Kem Nền">Kem Nền</a>
                            </li>
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Phấn" title="Phấn Nước">Phấn Nước</a>
                            </li>
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Che Khuyết Điểm" title="Che Khuyết Điểm">Che Khuyết Điểm</a>
                            </li>
                        </ul>
                        <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=1"
                            class="cat-color-link wobble-top">Xem
                thêm</a><a class="cat_child_bar" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=1"
                    data-val="new0"></a>
                    </div>
                </div>
            </div>
            <div class="content-cat7 tags-left">
                <div class="clearfix">
                    <div class="banner-tags7 mo-dest hidden-sm hidden-xs">
                        <div class="banner-zoom">
                            <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=1"
                                class="thumb-zoom">
                                <img src="/images/my-pham-trang-diem-menu-left.jpg"
                                    alt="my-pham-trang-diem hinh 3"></a>
                        </div>
                    </div>
                    <div class="content-cat7 content-pro-box1">
                        <div class="clearfix">
                           

                                <asp:DataList ID="dtlTrangDiem" runat="server" RepeatColumns="5">
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

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <%---- Trang điểm ----%>

        <div class="category-color category-box7">
            <div class="hidden-lg hidden-md cat-img">
                <div class="banner-zoom">
                    <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=2" class="thumb-zoom"></a>
                </div>
            </div>
            <div class="header-cat-color">
                <div class="clearfix">
                    <div class="hotkey-cat-color">
                        <a class="mmhome" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=2">
                            <h2 class="title18 tthall">Hỗ trợ điều trị</h2>
                        </a>
                        <ul class="cate_child" id="new0">
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Mụn" title="Hỗ Trợ Điều Trị Mụn">Hỗ Trợ Điều Trị Mụn</a>
                            </li>
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Mỡ" title="Giảm Cân Tan Mỡ Bụng">Giảm Cân Tan Mỡ Bụng</a>
                            </li>
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Rụng Tóc" title="Hỗ Trợ Điều Trị Rụng Tóc">Hỗ Trợ Điều Trị Rụng Tóc</a>
                            </li>
                            <li>
                                <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Mọc Tóc" title="Thuốc Mọc Râu, Mọc Tóc">Thuốc Mọc Râu, Mọc Tóc</a>
                            </li>
                        </ul>
                        <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=2"
                            class="cat-color-link wobble-top">Xem
                thêm</a><a class="cat_child_bar" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=2"
                    data-val="new0"></a>
                    </div>
                </div>
            </div>
            <div class="content-cat7 tags-left">
                <div class="clearfix">
                    <div class="banner-tags7 mo-dest hidden-sm hidden-xs">
                        <div class="banner-zoom">
                            <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=2"
                                class="thumb-zoom">
                                <img src="images/ho-tro-dieu-tri-menu-left.jpg"
                                    alt="my-pham-trang-diem hinh 3"></a>
                        </div>
                    </div>
                    <div class="content-cat7 content-pro-box1">
                        <div class="clearfix">
                            
                                <asp:DataList ID="dtlDieuTri" runat="server" RepeatColumns="5">
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
                           
                        </div>
                    </div>
                </div>
            </div>
            <%---- Hỗ trơ điều trị ----%>
            <div class="category-color category-box7">
                <div class="hidden-lg hidden-md cat-img">
                    <div class="banner-zoom">
                        <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=3" class="thumb-zoom"></a>
                    </div>
                </div>
                <div class="header-cat-color">
                    <div class="clearfix">
                        <div class="hotkey-cat-color">
                            <a class="mmhome" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=3">
                                <h2 class="title18 tthall">Chăm sóc da mặt</h2>
                            </a>
                            <ul class="cate_child" id="new0">
                                <li>
                                    <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Sữa Rauwr Mặt" title="Sữa Rửa Mặt">Sữa Rửa Mặt</a>
                                </li>
                                <li>
                                    <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Nước Tẩy Trang" title="Nước Tẩy Trang">Nước Tẩy Trang</a>
                                </li>
                                <li>
                                    <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Dưỡng Trắng" title="Dưỡng Trắng Da Mặt">Dưỡng Trắng Da Mặt</a>
                                </li>
                                <li>
                                    <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Lão Hoá" title="Chống Lão Hóa Da Mặt">Chống Lão Hóa Da Mặt</a>
                                </li>
                            </ul>
                            <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=3"
                                class="cat-color-link wobble-top">Xem
                thêm</a><a class="cat_child_bar" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=3"
                    data-val="new0"></a>
                        </div>
                    </div>
                </div>
                <div class="content-cat7 tags-left">
                    <div class="clearfix">
                        <div class="banner-tags7 mo-dest hidden-sm hidden-xs">
                            <div class="banner-zoom">
                                <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=3"
                                    class="thumb-zoom">
                                    <img src="images/cham-soc-da-mat-menu-left.jpg"
                                        alt="my-pham-trang-diem hinh 3"></a>
                            </div>
                        </div>
                        <div class="content-cat7 content-pro-box1">
                            <div class="clearfix">
                                
                                    <asp:DataList ID="dtlDaMat" runat="server" RepeatColumns="5">
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
                               
                            </div>
                        </div>
                    </div>
                </div>
                <%---- Chăm sóc da mặt ----%>
                <div class="category-color category-box7">
                    <div class="hidden-lg hidden-md cat-img">
                        <div class="banner-zoom">
                            <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=4" class="thumb-zoom"></a>
                        </div>
                    </div>
                    <div class="header-cat-color">
                        <div class="clearfix">
                            <div class="hotkey-cat-color">
                                <a class="mmhome" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=4">
                                    <h2 class="title18 tthall">Chăm sóc toàn thân</h2>
                                </a>
                                <ul class="cate_child" id="new0">
                                    <li>
                                        <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Tẩy Lông" title="Kem Tẩy Lông">Kem Tẩy Lông</a>
                                    </li>
                                    <li>
                                        <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Chống Nắng" title="Kem Chống Nắng">Kem Chống Nắng</a>
                                    </li>
                                    <li>
                                        <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Sữa Tắm" title="Sữa Tắm Trắng Da">Sữa Tắm Trắng Da</a>
                                    </li>
                                    <li>
                                        <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Xịt Khử Mùi" title="Xịt Thơm, Xịt Khử Mùi">Xịt Thơm, Xịt Khử Mùi</a>
                                    </li>
                                    <li>
                                        <a href="/SanPham/DSSanPhamTen.aspx?tenSp=Kem Dưỡng" title="Kem Dưỡng Da Tay">Kem Dưỡng Da Tay</a>
                                    </li>
                                </ul>
                                <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=4"
                                    class="cat-color-link wobble-top">Xem
                thêm</a><a class="cat_child_bar" href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=4"
                    data-val="new0"></a>
                            </div>
                        </div>
                    </div>
                    <div class="content-cat7 tags-left">
                        <div class="clearfix">
                            <div class="banner-tags7 mo-dest hidden-sm hidden-xs">
                                <div class="banner-zoom">
                                    <a href="/SanPham/DSSanPhamMa.aspx?maDanhMuc=4"
                                        class="thumb-zoom">
                                        <img src="images/cham-soc-toan-than-menu-left.jpg"
                                            alt="my-pham-trang-diem hinh 3"></a>
                                </div>
                            </div>
                            <div class="content-cat7 content-pro-box1">
                                <div class="clearfix">
                                   
                                        <asp:DataList ID="dtlToanThan" runat="server" RepeatColumns="5">
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
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                    <%---- Chăm sóc toàn thân ----%>
                </div>
            </div>
        </div>
        <%---- Tin Tức ----%>
        <div class="product-box6">
            <div class="header-box6 title-box6">
                <div class="clearfix">
                    <h4 class="title18 ta-center">Tin nổi bật</h4>
                </div>
            </div>
            <div class="content-product6">
                <div class="hotcat-slider2 hotcat-slider6">
                    <div class="wrap-item" data-pagination="false"
                        data-navigation="true" data-itemscustom="[[0,2],[560,2],[980,3],[1200,4]]">

                        <asp:DataList ID="dlsTinTuc" runat="server" RepeatColumns="4">
                            <ItemTemplate>

                                <div class="item-news01">
                                    <div class="news-thumb" style="text-align:center">
                                        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "ChiTietTinTuc.aspx?id=" +Eval("maTinTuc").ToString()%>'
                                            ImageUrl='<%# Eval("HinhAnhBia") %>' Width="250px" > 
                                        </asp:HyperLink>
                                    </div>
                                    <div class="news-desc">
                                        <h4 class="title">
                                            <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl='<%# "ChiTietTinTuc.aspx?id=" +Eval("maTinTuc").ToString()%>'
                                                Text='<%# Eval("TieuDe") %>'>
                                            </asp:HyperLink></h4>
                                        <p class="tju">
                                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TomTat") %>'></asp:Label></p>
                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
