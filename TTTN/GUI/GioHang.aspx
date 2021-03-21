<%@ Page Title="" Language="C#" MasterPageFile="~/webForm/MasterPage_khongMenuDoc.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="GUI.GioHang" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="content">
        <div class="content-page">
            <div class="container">
                
                <p>Giỏ hàng có: <b><asp:Label ID="txtSoSanPham" runat="server"></asp:Label>sản phẩm</b></p>
                
                <table  border="1" class="tableCart" style="background-color: white">
                        <tr>
                            <th  class="w90" style="width:280px">Hình Ảnh</th>
                            <th style="width:980px">Sản phẩm</th>
                            <th class="w80" style="width:103px">Số lượng</th>
                            <th class="w130" style="width:200px">Thành tiền</th>
                        </tr>
                    </table>
              
                  <asp:ListView runat="server" ID="Cart" >
                      <ItemTemplate>
                        <table  border="1" class="tableCart" style="background-color: white">
                        <tr>
                            <th class="w90"  style="width:230px"> <asp:Image Width="150px" Height="150px" ID="img1" runat="server" CssClass="mwia" ImageUrl='<%# Eval("HinhAnh") %>' /></th>
                            <th  style="width:1000px" > <%# Eval("TenSP") %> <br />
                               <span> Giá: <p style="color:red"> <%# Eval("Gia") %> </p></span>
                               
                            </th>
                            <th class="w80"  style="width:110px"> <asp:Label ID="lbSoLuongMua" runat="server" Text='<%# Eval("SoLuong") %>'></asp:Label> </th>
                            <th class="w130"  style="width:190px">  <p style="color:red"> <%# Eval("ThanhTien")%>  </p> </th>
                        </tr>
                            </table>
                    </ItemTemplate>
                  </asp:ListView>
                
                <div class="cartTong">Tạm tính: <b>0 đ</b></div>
                <div class="cartTong">Phí vận chuyển: <b>0 đ</b></div>
                <div class="cartTong">Tổng tiền thanh toán: <b>
                    <asp:Label ID="lbTongTien" runat="server" Text="Label"></asp:Label></b></div>
                <br>
                <br>
                <script type="text/javascript" src="//static.criteo.net/js/ld/ld.js" async="true"></script>
                <script type="text/javascript">var deviceType = /iPad/.test(navigator.userAgent) ? "t" : /Mobile|iP(hone|od)|Android|BlackBerry|IEMobile|Silk/.test(navigator.userAgent) ? "m" : "d"; window.criteo_q = window.criteo_q || []; window.criteo_q.push({ event: "setAccount", account: 33900 }, { event: "setSiteType", type: deviceType }, { event: "setEmail", email: "" }, { event: "viewBasket", item: [] });</script>
                <div class="form-order clearfix mlefta">
                    <h1 class="form-order-hd">
                        <i class="fa fa-play"></i>Thông tin địa chỉ nhận hàng</h1>
                    <form class="form-inline" id="formQuickOrder">
                        <div class="form-div col-xs-12">
                            <label class="sr-only" for="inlineFormInputGroup">Họ tên</label>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">
                                    <i class="fa fa-user"></i>
                                </div>
                                <asp:TextBox ID="txtHoTen" class="form-control" placeholder="Họ tên (*)" runat="server"></asp:TextBox>
                            </div>

                        </div>
                        <div class="form-div col-xs-12">
                            <label class="sr-only" for="inlineFormInputGroup">Số điện thoại</label>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">
                                    <i class="fa fa-phone"></i>
                                </div>
                                <asp:TextBox ID="txtSDT" class="form-control"  placeholder="Số điện thoại (*)" runat="server" ></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-div col-xs-12">
                            <label class="sr-only" for="inlineFormInputGroup">Địa chỉ</label>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">
                                    <i class="fa fa-address-card-o"></i>

                                </div>
                                <asp:TextBox ID="txtDiaChi" runat="server" class="form-control"  placeholder="Địa chỉ (*)"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-div col-xs-12">
                            <label class="sr-only" for="inlineFormInputGroup">Email để nhận quà tặng</label>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">
                                    <i class="fa fa-envelope-o"></i>

                                </div>
                                <asp:TextBox ID="txtEmail" runat="server" class="form-control" placeholder="Email để nhận quà tặng"></asp:TextBox>
                            </div>

                        </div>
                        <div class="form-div col-xs-12">
                            <label class="sr-only" for="inlineFormInputGroup">Ghi chú</label>
                            <div class="input-group mb-2 mr-sm-2 mb-sm-0">
                                <div class="input-group-addon">
                                    <i class="fa fa-comment-o"></i>

                                </div>
                                
                                <asp:TextBox ID="txtGhiChu" runat="server" TextMode="MultiLine" Rows="3" class="form-control" placeholder="Ghi chú đơn hàng" ></asp:TextBox>

                            </div>

                        </div>
                        <div class="form-div col-xs-12">
                            <asp:Button ID="btnSubmit" runat="server" Text="Hoàn tất đơn hàng" class="btn btn-primary" OnClick="btnSubmit_Click" />
                            <div id="returnProcess">
                            </div>

                        </div>
                        <div>
                            <div>
                                <input id="ctl01" type="checkbox" name="ctl01" checked="checked"><label for="ctl01">Tôi đồng ý với các chính sách và quy định mua hàng tại website</label><br>
                                <div style="margin-top: 10px"><span disabled="disabled" style="color: Red;">
                                    <input id="ctl02" type="checkbox" name="ctl02" checked="checked" disabled="disabled"><label for="ctl02">Phương thức thanh toán: NHẬN HÀNG VÀ THANH TOÁN TẠI NHÀ !</label></span></div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="mrighta">
                    <div style="text-align: center; line-height: 20px">
                        <div>
                            <br>
                            <span style="font-size: 14px;"><strong>HV NET CO,.LTD.&nbsp;TRUNG TÂM BÁN HÀNG TRỰC TUYẾN IMUA</strong></span><br>
                            <strong style="font-family: arial; margin: 0px; padding: 0px;"><span style="margin: 0px; padding: 0px; color: rgb(0, 0, 255);">Trung tâm phân phối:</span></strong><span style="color: rgb(85, 85, 85); font-family: arial;">&nbsp;255 Bình Lợi, Phường 13, Q. Bình Thạnh, TPHCM</span></div>
                        <div style="text-align: center;">
                            <p>Hotline: 0911 403 114&nbsp;</p>
                        </div>
                        <div>E-mail: <a href="mailto:support@imua.com.vn">support@imua.com.vn</a>&nbsp;- Website: <a href="https://imua.com.vn"><span style="color: #0000cd;">www.imua.com.vn&nbsp;</span></a><br>
                            &nbsp;</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
