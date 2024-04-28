<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 3/28/2024
  Time: 11:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Neuton">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quicksand">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=FontAwesome">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer"/>
    <link rel="stylesheet" href="/resources/static/css/checkout/prebuy.css">
</head>

<body>
<header>
    <div class="boxlogo" style="z-index: 1000;">
        <div class="container">
            <div class="col">
                <a href="/bookshop">
                    <img src="<c:url value="/resources/static/assets/image/BookShop-logos_transparent.png"/>" alt=""
                         class="logo">
                </a>
            </div>
            <div class="col">
                <a class="login" href="/info">
                    <img src="<c:url value="/resources/static/assets/image/login.png"/>" alt="">
                </a>
                <h1 class="login-text">
                    <a href="/info"
                       style="color: #3f7e2a; text-decoration: none; position: absolute; top: 0; left: 0;">Tài
                        khoản</a>
                </h1>
                <a class="budget" href="/cart">
                    <img class="budget-img" src="<c:url value="/resources/static/assets/image/shopping-bag%20(1).png"/>" alt="">
                    <a href="/cart" class="gio-hang">Giỏ hàng</a>
                </a>
                <form action="" id="search-box" class="search-box">
                    <input type="text" name="" id="search-text" class="search-text"
                           placeholder="Sách bạn muốn tìm?">
                    <button id="search-button" class="search-button">
                        <i class="fa-solid fa-magnifying-glass"></i></button>
                </form>
            </div>
        </div>
        <div class="container">
            <h1 class="legit-tittle-1">
                <img src="<c:url value="//theme.hstatic.net/200000294254/1001077164/14/header_03_policy_1_ico.png?v=344"/>"
                     class="legit-image">
                <a style="margin-left:5px;font-weight:100">100% sách chính hãng</a>
            </h1>
            <h1 class="legit-tittle-2">
                <img src="<c:url value="//theme.hstatic.net/200000294254/1001077164/14/header_03_policy_2_ico.png?v=344"/>"
                     class="legit-image">
                <a style="margin-left:5px;font-weight:100">Hoàn trả trong 7 ngày</a>
            </h1>
            <h1 class="legit-tittle-3">
                <img src="<c:url value="//theme.hstatic.net/200000294254/1001077164/14/header_03_policy_3_ico.png?v=344"/>"
                     class="legit-image">
                <a style="margin-left:5px;font-weight:100">Miễn phí vận chuyển</a>
            </h1>

        </div>
        <div class="container">
            <div class="menu">
                <ul id="main-menu" style="display: flex; list-style:none; ; padding-top:12px">
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/bookshop">Trang chủ</a></li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/listbook" style="cursor: pointer; ">Danh
                        mục sách</a>
                        <ul class="sub-menu">
                            <c:forEach var="category" items="${categories}">
                                <li>
                                    <a href="/listbook/category/${category.categoryID}"><c:out
                                            value="${category.categoryName}"/></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/listbook" style="cursor: pointer; ">Phiên
                        bản</a>
                        <ul class="sub-menu-2">
                            <c:forEach var="type" items="${types}">
                                <li>
                                    <a href="/listbook/type/${type.typeID}"><c:out value="${type.typeName}"/></a>
                                </li>
                            </c:forEach>

                        </ul>
                    </li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/bookshop">Sách bán
                        chạy</a></li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/bookshop">Giới thiệu</a></li>
                    <li><a href="" id="scrollToBottomButton">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </div>

    <button id="myBtn" title="Lên đầu trang" class="uppage"><img
            src="<c:url value="/resources/static/assets/image/upsgin.png"/>" title='lên đầu trang'
            class="button-uppage"/></button>
    <script>
        window.onscroll = function () {
            scrollFunction()
        };

        function scrollFunction() {

            if (document.body.scrollTop > 300 || document.documentElement.scrollTop > 300) {
                document.getElementById("myBtn").style.display = "block";
            } else {
                document.getElementById("myBtn").style.display = "none";
            }
        }

        document.getElementById('myBtn').addEventListener("click", function () {
            document.body.scrollTop = 0;
            document.documentElement.scrollTop = 0;
        });
    </script>
</header>

<article>
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 cart-page">
                <div id="content">
                    <div class="fhs_redis_cart_msg" style="display: none;">
                        <div>
                            <img src="https://cdn0.fahasa.com/skin/frontend/ma_vanese/fahasa/images/exclaiming.svg?q=105525">
                        </div>
                        <div class="message"></div>
                    </div>
                    <div class="message_error"></div>
                    <div class="cart">
                        <div class="page-title title-buttons">
                            <div class="page-title-container">
                                <h1 style="display: inline-block;width: auto;">Giỏ hàng</h1>
                                <span class="cart-title-num-items">(${carts.size()} sản phẩm)</span>
                            </div>
                        </div>
                        <div class="cart-loading" style="display: none;">
                            <div class="cart-loading-icon">
                                <img src="https://cdn0.fahasa.com/skin/frontend/ma_vanese/fahasa/images/bar_loading.gif?q=105525">
                            </div>
                        </div>

                            <div class="cart-ui-content row ">
                                <div class="col-sm col-xs-12">
                                    <div>
                                        <div class="header-cart-item" style="display: flex;">
                                        </div>
                                        <div class="product-cart-left">
                                            <c:set var="totalmerch"/>
                                            <c:forEach var="cart" items="${carts}">
                                                <div class="item-product-cart">
                                                    <div class="checked-product-cart" style="margin-right:7px">
                                                        <input type="checkbox" id="checkbox-product" name="checkbox_product_465186" class="item-checkbox"  data-total-cost="${(cart.bookid.price+cart.bookid.typeID.price)*cart.number}" value="${cart.cartID}"/>
                                                        <c:set var="totalmerch" value="${totalmerch +cart.bookid.price*cart.number }"/>

                                                    </div>
                                                    <div class="img-product-cart">
                                                        <a class="product-image" href="/productbook/${cart.bookid.bookID}"><img src="${cart.bookid.avatar}" width="120" height="120" alt="Take Note! Sổ Tay Ngữ Pháp Tiếng Anh (Gáy Lò Xo)">
                                                        </a>
                                                    </div>
                                                    <div class="group-product-info">
                                                        <div class="info-product-cart">
                                                            <div>
                                                                <h2 class="product-name-full-text"><a href="/productbook/${cart.bookid.bookID}"><c:out value="${cart.bookid.title}"/> </a></h2>
                                                                <h2 class="product-name-full-text"><a href="listbook/type/${cart.bookid.typeID.typeID}" style="font-weight: 300; font-size: 13px;"><c:out value="${cart.bookid.typeID.typeName}"/> </a></h2>
                                                            </div>
                                                            <div class="price-original">
                                                                <div class="cart-price">
                                                                    <div class="cart-fhsItem-price">
                                                                        <div><span class="price" data-price="60000"><c:out value="${cart.bookid.price + cart.bookid.typeID.price}"/>đ</span>
                                                                        </div>

                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="number-product-cart">
                                                            <div class="product-view-quantity-box">
                                                                <div class="product-view-quantity-box-block ">
                                                                    <input type="text" class="qty-carts"   maxlength="12" align="center" value="${cart.number}" readonly onchange="updateCartTotalPrice('465186')" data-product-id="465186" title="So luong">

                                                                </div>
                                                                <div class="product-view-icon-remove-mobile" style="display:none;">
                                                                    <a onclick="" title="Remove item" id="465186" class="btn-remove-mobile-cart"><i class="fa fa-trash-o" style="font-size:22px"></i></a>
                                                                </div>
                                                            </div>
                                                            <div class="cart-price-total"><span class="cart-price" ><span class="price"><c:out value="${(cart.bookid.price+cart.bookid.typeID.price)*cart.number}"/>đ</span></span></div>
                                                        </div>
                                                    </div>
                                                    <div class="div-of-btn-remove-cart">
                                                        <button class="btn-remove-desktop-cart" onclick="deleteCart(this)"  data-cart-id="${cart.cartID}">
                                                            <img src="/resources/static/assets/image/delete.svg" alt="Delete">
                                                        </button>
                                                    </div>
                                                </div>
                                                <div class="border-product"></div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="padding-top: 20px">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 cart-page">
                <div >
                    <div class="fhs_redis_cart_msg" style="display: none;">
                        <div>
                            <img src="https://cdn0.fahasa.com/skin/frontend/ma_vanese/fahasa/images/exclaiming.svg?q=105525">
                        </div>
                        <div class="message"></div>
                    </div>
                    <div class="message_error"></div>
                    <div class="cart">
                        <div id="change_pick_location_or_shipping">
                            <div class="inventory_location">
                            </div>
                            <div id="section-payment-method" class="section">
                                <div class="order-checkout__loading--box">
                                    <div class="order-checkout__loading--circle"></div>
                                </div>
                                <div class="section-header">
                                    <h2 class="section-title">Phương thức thanh toán</h2>
                                </div>
                                <div class="section-content">
                                    <div class="content-box">
                                        <div class="radio-wrapper content-box-row">
                                            <label class="radio-label" for="payment_method_id_1002729424">
                                                <div class="radio-input payment-method-checkbox">
                                                    <input type-id="1" id="payment_method_id_1002729424"
                                                           class="input-radio" name="payment_method_id"
                                                           type="radio" value="1002729424" checked="">
                                                </div>
                                                <div class="radio-content-input">
                                                    <img class="main-img"
                                                         src="https://hstatic.net/0/0/global/design/seller/image/payment/cod.svg?v=6">
                                                    <div>
                                                                <span class="radio-label-primary">Thanh toán khi giao
                                                                    hàng (COD)</span>
                                                        <span class="quick-tagline hidden"></span>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="radio-wrapper content-box-row">
                                            <label class="radio-label" for="payment_method_id_1003014752">
                                                <div class="radio-input payment-method-checkbox">
                                                    <input type-id="2" id="payment_method_id_1003014752"
                                                           class="input-radio" name="payment_method_id"
                                                           type="radio" value="1003014752">
                                                </div>
                                                <div class="radio-content-input">
                                                    <img class="main-img"
                                                         src="https://hstatic.net/0/0/global/design/seller/image/payment/other.svg?v=6">
                                                    <div>
                                                                <span class="radio-label-primary">ATM / Internet
                                                                    Banking</span>
                                                        <span class="quick-tagline hidden"></span>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="radio-wrapper content-box-row">
                                            <label class="radio-label" for="payment_method_id_vnpay">
                                                <div class="radio-input payment-method-checkbox">
                                                    <input type-id="22" id="payment_method_id_vnpay"
                                                           class="input-radio" name="payment_method_id"
                                                           type="radio" value="vnpay">
                                                </div>
                                                <div class="radio-content-input">
                                                    <img class="main-img"
                                                         src="https://cdn.haitrieu.com/wp-content/uploads/2022/10/Icon-VNPAY-QR.png">
                                                    <div>
                                                        <span class="radio-label-primary">VNPAY</span>
                                                        <span class="quick-tagline hidden"></span>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                        <div class="radio-wrapper content-box-row">
                                            <label class="radio-label" for="payment_method_id_visa">
                                                <div class="radio-input payment-method-checkbox">
                                                    <input type-id="23" id="payment_method_id_visa"
                                                           class="input-radio" name="payment_method_id"
                                                           type="radio" value="visa">
                                                </div>
                                                <div class="radio-content-input">
                                                    <img class="main-img"
                                                         src="https://cdn-icons-png.flaticon.com/512/6963/6963703.png">
                                                    <div>
                                                                <span class="radio-label-primary">Visa / Master /
                                                                    JCB</span>
                                                        <span class="quick-tagline hidden"></span>
                                                    </div>
                                                </div>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row" style="padding-top: 20px">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 cart-page">
                <div >
                    <div class="fhs_redis_cart_msg" style="display: none;">
                        <div>
                            <img src="https://cdn0.fahasa.com/skin/frontend/ma_vanese/fahasa/images/exclaiming.svg?q=105525">
                        </div>
                        <div class="message"></div>
                    </div>
                    <div class="message_error"></div>
                    <div class="cart">
                        <div class="col-sm hidden-max-width-992">
                            <div class="total-cart-right">
                                <div class="effect-scroll-cart-right">
                                    <div class="block-total-cart" style="">
                                        <div class="block-totals-cart-page">
                                            <div class="total-cart-page ">
                                                <div class="title-cart-page-left">Thành tiền</div>
                                                <c:set var="merchandiseSubtotal" value="0"/>
                                                <c:forEach var="item" items="${carts}">
                                                    <c:set var="merchandiseSubtotal"
                                                           value="${merchandiseSubtotal + (item.bookid.price + item.bookid.typeID.price) * item.number}"/>
                                                </c:forEach>
                                                <div class="number-cart-page-right"><span class="price" id="merchandiseSubtotal">${merchandiseSubtotal} VNĐ</span></div>
                                            </div>
                                            <div class="total-cart-page ">
                                                <div class="title-cart-page-left">Phí vận chuyển (Giao hàng tiêu chuẩn)</div>
                                                <div class="number-cart-page-right"><span class="price">19.000 đ</span></div>
                                            </div>
                                            <div class="border-product"></div>
                                            <div class="total-cart-page title-final-total">
                                                <div class="title-cart-page-left">Tổng Số Tiền (gồm VAT)</div>
                                                <div class="number-cart-page-right">
                                                    <c:set var="totalPayment" value="${merchandiseSubtotal + 19000}"/>
                                                    <span class="price total-price" id="totalPayment">${totalPayment}</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="checkout-type-button-cart" style="text-align: center;">
                                            <div class="method-button-cart">
                                                <button onclick="OnClickPay()" type="button" title="Thanh toán" class="button btn-proceed-checkout btn-checkout">
                                                    <span><span>Thanh toán</span></span>
                                                </button>
                                                <div class="retail-note"><a target="_blank">(Giảm giá trên web chỉ áp dụng cho bán lẻ)</a></div>
                                            </div>

                                        </div>
                                    </div>
                                    <div id="fhs_error_message_cart" style="margin-top:10px;background: white;padding:10px;display:none;"></div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>
</article>

<footer>
    <div class="row" style="    width: 100%;">
        <div class="grid-col">
            <div class="lien-he">
                <h3 class="footer_heading">Liên hệ</h3>
                <ul class="footer-list" style="list-style: none">
                    <li class="footer-item" style="margin-top:20px;">
                        <img src="/resources/static/assets/image/phone-solid.svg" alt=""
                             class="contact-icon">
                        <a> :0123456789</a>
                    </li>
                    <li class="footer-item">
                        <img src="/resources/static/assets/image/square-envelope-solid.svg"
                             alt="" class="contact-icon">
                        <a> : bookshop@gmail.com</a>
                    </li>
                    <li class="footer-item">
                        <img src="/resources/static/assets/image/location-dot-solid.svg"
                             alt="" class="contact-icon">
                        <a> : 31A, Hoàn Kiếm, Hà Nội</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="grid-col">
            <div class="chinh-sach">
                <h3 class="footer_heading">Chính sách</h3>
                <ul class="footer-list" style="list-style: none">
                    <li class="footer-item" style="margin-top:20px;">
                        <a href="">Chính sách A</a>
                    </li>
                    <li class="footer-item">
                        <a href="">Chính sách B</a>
                    </li>
                    <li class="footer-item">
                        <a href="">Chính sách C</a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="grid-col">
            <div class="lien-ket">
                <h3 class="footer_heading">Liên kết</h3>
                <ul class="footer-list" style="list-style: none">
                    <li class="footer-item" style="margin-top:20px;">
                        <a href="">Sách hot</a>
                    </li>
                    <li class="footer-item">
                        <a href="">Tất cả sản phẩm</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="grid-col">
            <div class="theo-doi">
                <h3 class="footer_heading">Theo dõi chúng tôi trên</h3>
                <ul class="footer-list" style="list-style: none;text-decoration:none">
                    <li class="footer-item" style="margin-top:20px;">
                        <img src="/resources/static/assets/image/facebook.svg" alt=""
                             class="follow-icon">
                        <a href="">Facebook</a>
                    </li>
                    <li class="footer-item">
                        <img src="/resources/static/assets/image/instagram.svg" alt=""
                             class="follow-icon">
                        <a href="">Tiktok</a>
                    </li>
                    <li class="footer-item">
                        <img src="/resources/static/assets/image/tiktok.svg" alt=""
                             class="follow-icon">
                        <a href="">Instagram</a>
                    </li>
                    <li class="footer-item">
                        <img src="/resources/static/assets/image/9a49f5ec44c243204290ce9076f27699.png"
                             alt="" class="follow-icon">
                        <a href="">Zalo</a>
                    </li>
                    <li class="footer-item">
                        <img src="/resources/static/assets/image/square-x-twitter.svg"
                             alt="" class="follow-icon">
                        <a href="">X</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
    </div>

</footer>
</body>

<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        var scrollToBottomButton = document.getElementById("scrollToBottomButton");

        scrollToBottomButton.addEventListener("click", function () {
            window.scrollTo({
                top: document.body.scrollHeight,
                behavior: 'smooth'
            });
        });
    });
    document.addEventListener("DOMContentLoaded", function () {
        var scrollToSectionButton = document.getElementById("scrollToSectionButton");
        var sectionToScrollTo = document.getElementById("sectionToScrollTo");

        scrollToSectionButton.addEventListener("click", function () {
            sectionToScrollTo.scrollIntoView({behavior: 'smooth'});
        });
    });
    document.addEventListener("DOMContentLoaded", function () {
        var scrollToSectionButton = document.getElementById("scrollToMoiPhatHanh");
        var sectionToScrollTo = document.getElementById("sectionMoiPhatHanh");

        scrollToSectionButton.addEventListener("click", function () {
            sectionToScrollTo.scrollIntoView({behavior: 'smooth'});
        });
    });
    document.addEventListener("DOMContentLoaded", function () {
        var myLink = document.getElementById("scrollToBottomButton");

        myLink.addEventListener("click", function (event) {
            event.preventDefault();
        });
    });
    document.addEventListener("DOMContentLoaded", function () {
        var myLink = document.getElementById("scrollToSectionButton");

        myLink.addEventListener("click", function (event) {
            event.preventDefault();
        });
    });
    document.addEventListener("DOMContentLoaded", function () {
        var myLink = document.getElementById("scrollToMoiPhatHanh");

        myLink.addEventListener("click", function (event) {
            event.preventDefault();
        });
    });
</script>

<script>
    function toggleCheckboxAge(checkboxId) {
        var checkbox = document.getElementById(checkboxId);

        if (checkbox) {
            var ageCheckboxes = document.querySelectorAll(".checkbox-list-age input[type='checkbox']");
            ageCheckboxes.forEach(function (cb) {
                if (cb.id !== checkboxId) {
                    cb.checked = false;
                    cb.classList.remove("marked");
                }
            });

            // Check checkbox được click và thêm lớp "marked"
            checkbox.checked = true;
            checkbox.classList.add("marked");
        }
    }

    function toggleCheckboxPrice(checkboxId) {
        var checkbox = document.getElementById(checkboxId);

        if (checkbox) {
            // Loại bỏ lớp "marked" từ tất cả các checkbox trong nhóm Price trước
            var priceCheckboxes = document.querySelectorAll(".checkbox-list-price input[type='checkbox']");
            priceCheckboxes.forEach(function (cb) {
                if (cb.id !== checkboxId) {
                    cb.checked = false;
                    cb.classList.remove("marked");
                }
            });

            // Check checkbox được click và thêm lớp "marked"
            checkbox.checked = true;
            checkbox.classList.add("marked");
        }
    }

    function toggleCheckboxType(checkboxId) {
        var checkbox = document.getElementById(checkboxId);

        if (checkbox) {
            // Loại bỏ lớp "marked" từ tất cả các checkbox trong nhóm Price trước
            var priceCheckboxes = document.querySelectorAll(".checkbox-list-type input[type='checkbox']");
            priceCheckboxes.forEach(function (cb) {
                if (cb.id !== checkboxId) {
                    cb.checked = false;
                    cb.classList.remove("marked");
                }
            });

            // Check checkbox được click và thêm lớp "marked"
            checkbox.checked = true;
            checkbox.classList.add("marked");
        }
    }

    function handleClickAge(checkboxId) {
        toggleCheckboxAge(checkboxId); // Gọi toggleCheckboxAge
    }

    function handleClickPrice(checkboxId) {
        toggleCheckboxPrice(checkboxId); // Gọi toggleCheckboxPrice
    }

    function handleClickType(checkboxId) {
        toggleCheckboxType(checkboxId); // Gọi toggleCheckboxPrice
    }

    function addClassCheckPrice(element) {
        var checkboxes = document.querySelectorAll(".checkbox-list-price input[type='checkbox']");

        // Loại bỏ lớp "marked" từ tất cả các checkbox trước đó
        checkboxes.forEach(function (checkbox) {
            checkbox.checked = false;
            checkbox.classList.remove("marked");
        });

        // Thêm lớp "marked" vào checkbox được chọn hiện tại
        element.checked = true;
        element.classList.add("marked");
    }

    function addClassCheckAge(element) {
        var checkboxes = document.querySelectorAll(".checkbox-list-age input[type='checkbox']");

        // Loại bỏ lớp "marked" từ tất cả các checkbox trước đó
        checkboxes.forEach(function (checkbox) {
            checkbox.checked = false;
            checkbox.classList.remove("marked");
        });

        // Thêm lớp "marked" vào checkbox được chọn hiện tại
        element.checked = true;
        element.classList.add("marked");
    }

    function addClassCheckType(element) {
        var checkboxes = document.querySelectorAll(".checkbox-list-type input[type='checkbox']");

        // Loại bỏ lớp "marked" từ tất cả các checkbox trước đó
        checkboxes.forEach(function (checkbox) {
            checkbox.checked = false;
            checkbox.classList.remove("marked");
        });

        // Thêm lớp "marked" vào checkbox được chọn hiện tại
        element.checked = true;
        element.classList.add("marked");
    }
</script>
<script>
    $(document).ready(function () {
        var collectionFilter = $(".collection-filter");
        var initialOffset = collectionFilter.offset().top;

        $(window).scroll(function () {
            var scrollTop = $(window).scrollTop();

            // Nếu cuộn xuống dưới một khoảng cố định (ví dụ: 100px), thì phần tử sẽ di chuyển cố định
            if (scrollTop > 100) {
                collectionFilter.css({
                    'position': 'sticky',
                    'top': '0'
                });
            } else {
                collectionFilter.css({
                    'position': 'relative',
                    'top': 'auto'
                });
            }
        });
    });


</script>


<script>
    // Lấy ra checkbox "Chọn tất cả"
    var checkboxAll = document.getElementById("checkbox-all-products");

    // Lấy ra tất cả các checkbox sản phẩm
    var checkboxes = document.querySelectorAll(".checked-product-cart input[type='checkbox']");

    // Gắn sự kiện khi checkbox "Chọn tất cả" được thay đổi trạng thái
    checkboxAll.addEventListener("change", function () {
        // Lặp qua tất cả các checkbox sản phẩm và cập nhật trạng thái của chúng
        for (var i = 0; i < checkboxes.length; i++) {
            checkboxes[i].checked = this.checked;
        }
    });
    document.addEventListener('DOMContentLoaded', function () {
        const subtractButtons = document.querySelectorAll('.btn-subtract-qty');
        const addButtons = document.querySelectorAll('.btn-add-qty');

        subtractButtons.forEach(button => {
            button.addEventListener('click', function (event) {
                event.preventDefault();
                const quantityInput = button.nextElementSibling;
                let quantity = parseInt(quantityInput.value);
                if (quantity > 1) {
                    quantity -= 1;
                    quantityInput.value = quantity;
                    updateCartTotalPrice(quantityInput.getAttribute('data-product-id')); // Gọi lại hàm khi số lượng thay đổi

                }
            });
        });

        addButtons.forEach(button => {
            button.addEventListener('click', function (event) {
                event.preventDefault();
                const quantityInput = button.previousElementSibling;
                let quantity = parseInt(quantityInput.value);
                quantity += 1;
                quantityInput.value = quantity;
                updateCartTotalPrice(quantityInput.getAttribute('data-product-id')); // Gọi lại hàm khi số lượng thay đổi

            });
        });
    });

    function updateCartTotalPrice(productId) {
        // Lấy ra input số lượng của sản phẩm
        var quantityInput = document.getElementById("qty-" + productId);
        // Lấy ra giá của sản phẩm
        var priceElement = document.getElementById("total-price-" + productId);
        var price = parseFloat(priceElement.dataset.price); // Chuyển đổi giá sản phẩm từ dạng chuỗi sang số

        // Lấy ra số lượng mới
        var newQuantity = parseInt(quantityInput.value);

        if (!isNaN(newQuantity)) {
            // Tính toán tổng tiền mới của sản phẩm
            var newTotalPrice = price * newQuantity;

            // Cập nhật tổng tiền mới cho sản phẩm
            priceElement.querySelector(".price").innerText = newTotalPrice.toLocaleString() + "đ";
        }
    }


    var removeButtons = document.querySelectorAll('.btn-remove-desktop-cart');
    removeButtons.forEach(function (button) {
        button.addEventListener('click', function (event) {
            // Ngăn chặn hành vi mặc định của nút
            event.preventDefault();

            // Lấy phần tử cha của nút đang được click, tức là sản phẩm đang được xóa
            var productItem = button.closest('.item-product-cart');

            // Lấy id của sản phẩm đang xóa
            var productId = productItem.querySelector('.checkbox-add-cart').id.replace('checkbox-product-', '');

            // Xóa sản phẩm khỏi giỏ hàng
            removeProductFromCart(productId);

            // Sau khi xóa sản phẩm, cập nhật lại tổng số tiền trong giỏ hàng và cập nhật giao diện người dùng
            updateCartTotalPrice(productId);

            // Xóa cả border-product của sản phẩm
            var borderProduct = productItem.nextElementSibling;
            if (borderProduct.classList.contains('border-product')) {
                borderProduct.remove();
            }

            // Xóa sản phẩm khỏi giao diện người dùng
            productItem.remove();
        });
    });

    function removeProductFromCart(productId) {
        // Xóa sản phẩm khỏi giỏ hàng
        // ...

        // Kiểm tra số lượng sản phẩm trong giỏ hàng sau khi xóa
        var cartItems = document.querySelectorAll('.item-product-cart');
        var emptyCartMessage = document.querySelector('.cart-empty');

        // Nếu không có sản phẩm nào trong giỏ hàng, hiển thị thông báo giỏ hàng trống
        if (cartItems.length === 0) {
            emptyCartMessage.style.display = 'none';
        } else {
            emptyCartMessage.style.display = 'flex';
        }
    }
</script>
<script>
    function updateMerchandiseSubtotal() {
        var merchandiseSubtotal = 0;
        // Get all elements with the class 'item-checkbox'
        var checkboxes = document.getElementsByClassName('item-checkbox');

        // Loop through each checkbox
        for (var i = 0; i < checkboxes.length; i++) {
            // Check if the checkbox is checked
            if (checkboxes[i].checked) {
                // Get the corresponding item's total_cost attribute
                var totalCost = parseFloat(checkboxes[i].getAttribute('data-total-cost'));

                // Check if totalCost is a valid number
                if (!isNaN(totalCost)) {
                    // Add the total_cost to the merchandiseSubtotal
                    merchandiseSubtotal += totalCost;
                }
            }
        }


        document.getElementById('merchandiseSubtotal').innerText = merchandiseSubtotal + ' VNĐ';
    }

    // Call the updateMerchandiseSubtotal function when the page loads
    window.onload = updateMerchandiseSubtotal;

    // Add an event listener to each checkbox
    var checkboxes = document.getElementsByClassName('item-checkbox');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', updateMerchandiseSubtotal);
    }
</script>
<script>
    // Function to update totalPayment
    function updateTotalPayment() {
        // Call the existing function to update merchandiseSubtotal
        updateMerchandiseSubtotal();

        // Get the updated merchandiseSubtotal value
        var merchandiseSubtotal = parseFloat(document.getElementById('merchandiseSubtotal').innerText);

        // Check if merchandiseSubtotal is a valid number
        if (!isNaN(merchandiseSubtotal)) {
            // Calculate totalPayment by adding a fixed value (30000)
            var totalPayment = merchandiseSubtotal + 19000;

            // Update the HTML element with the new totalPayment value
            document.getElementById('totalPayment').innerText = totalPayment + ' VNĐ';
        } else {
            // Handle the case where merchandiseSubtotal is not a valid number
            console.error('Invalid merchandiseSubtotal value');
        }
    }

    // Call the updateTotalPayment function when the page loads
    window.onload = updateTotalPayment;

    // Add an event listener to each checkbox
    var checkboxes = document.getElementsByClassName('item-checkbox');
    for (var i = 0; i < checkboxes.length; i++) {
        checkboxes[i].addEventListener('click', updateTotalPayment);
    }

</script>
<script>
    function deleteCart(button) {
        console.log("Deleting Billinfo");
        let cartId = $(button).data("cart-id");

        $.ajax({
            type: "POST",
            url: "/deleteCart",
            data: { cartID: cartId }, // Gửi dữ liệu dưới dạng form data
        });
        setTimeout(function() {
            window.location.href = "/cart";
        }, 100);

    }
</script>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        var paymentRadios = document.querySelectorAll('input[name="payment_method_id"]');
        var paymentValues = [1, 2, 3, 4]; // Giá trị tương ứng với mỗi phương thức thanh toán
        for (var i = 0; i < paymentRadios.length; i++) {
            paymentRadios[i].value = paymentValues[i];
        }
    });

    function getSelectedPaymentMethod() {
        var selectedPaymentMethod;
        var paymentRadios = document.querySelectorAll('input[name="payment_method_id"]');
        for (var i = 0; i < paymentRadios.length; i++) {
            if (paymentRadios[i].checked) {
                selectedPaymentMethod = paymentRadios[i].value;
                break;
            }
        }
        return selectedPaymentMethod;
    }

    function OnClickPay(button) {
        var totalPayment = parseFloat(document.getElementById("totalPayment").innerText);

        // Chuyển đổi thành số nguyên bằng cách loại bỏ phần thập phân
        totalPayment = parseInt(totalPayment);

        // Lấy tất cả các checkbox được chọn
        var bcarts = document.querySelectorAll('.item-checkbox:checked');

        // Tạo một mảng để lưu trữ các giá trị của checkbox
        var values = [];
        var selectedPaymentMethod = getSelectedPaymentMethod();

        // Lặp qua mỗi checkbox được chọn và lấy giá trị của nó
        bcarts.forEach(function(checkbox) {
            values.push(checkbox.value);
        });

        if (selectedPaymentMethod==1){
            $.ajax({
                type: "POST",
                url: "/deleteBoughtCart",
                traditional: true,
                data: { cartID: values }, // Truyền mảng values chứa các giá trị của các checkbox đã chọn
            });
            setTimeout(function() {
                window.location.href = "/cart";
            }, 100);
        }
        else if (selectedPaymentMethod==2){

            $.ajax({
                type: "POST",
                url: "/deleteBoughtCart",
                traditional: true,
                data: { cartID: values }, // Truyền mảng values chứa các giá trị của các checkbox đã chọn
            });
            setTimeout(function() {
                window.location.href = `/pay?totalPayment=`+totalPayment;
            }, 100);
        }
        else if (selectedPaymentMethod==3){

            $.ajax({
                type: "POST",
                url: "/deleteBoughtCart",
                traditional: true,
                data: { cartID: values }, // Truyền mảng values chứa các giá trị của các checkbox đã chọn
            });
            setTimeout(function() {
                window.location.href = `/pay?totalPayment=`+totalPayment;
            }, 100);
        }
        else if (selectedPaymentMethod==4){
            $.ajax({
                type: "POST",
                url: "/deleteBoughtCart",
                traditional: true,
                data: { cartID: values }, // Truyền mảng values chứa các giá trị của các checkbox đã chọn
            });
            setTimeout(function() {
                window.location.href = `/pay?totalPayment=`+totalPayment;
            }, 100);
        }

    }

</script>