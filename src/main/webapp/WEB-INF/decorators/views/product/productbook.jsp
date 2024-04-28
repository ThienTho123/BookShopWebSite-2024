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
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.text.DecimalFormat" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Neuton">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Quicksand">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=FontAwesome">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
          integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/static/css/product/productbook.css">
</head>

<body>
<header>
    <div class="boxlogo" style="z-index: 1000;">
        <div class="container">
            <div class="col">
                <a href="/bookshop">
                    <img src="<c:url value="/resources/static/assets/image/BookShop-logos_transparent.png"/>" alt="" class="logo">
                </a>
            </div>
            <div class="col">
                <a class="login" href="/info" style="cursor: pointer">
                    <img src="<c:url value="/resources/static/assets/image/login.png"/>"  alt="" >
                </a>
                <h1 class="login-text">
                    <a
                       style="cursor: pointer; color: #3f7e2a; text-decoration: none; position: absolute; top: 0; left: 0;"  href="/info">Tài
                        khoản</a>
                </h1>
                <a class="budget" href="/cart" style="cursor: pointer">
                    <img class="budget-img" src="<c:url value="/resources/static/assets/image/shopping-bag%20(1).png"/>" alt="">
                    <a class="gio-hang" href="/cart" style="cursor: pointer">Giỏ hàng</a>
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
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/listbook" style="cursor: pointer; ">Danh mục sách</a>
                        <ul class="sub-menu">
                            <c:forEach var="category" items="${categories}">
                                <li>
                                    <a href="/listbook/category/${category.categoryID}"><c:out value="${category.categoryName}"/></a>
                                </li>
                            </c:forEach>
                        </ul>
                    </li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/listbook" style="cursor: pointer; ">Phiên bản</a>
                        <ul class="sub-menu-2">
                            <c:forEach var="type" items="${types}">
                                <li>
                                    <a href="/listbook/type/${type.typeID}"><c:out value="${type.typeName}"/></a>
                                </li>
                            </c:forEach>

                        </ul>
                    </li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/bookshop" >Sách bán
                        chạy</a></li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="/bookshop">Giới thiệu</a></li>
                    <li><a href="" id="scrollToBottomButton">Liên hệ</a></li>
                </ul>
            </div>
        </div>
    </div>

    <button id="myBtn" title="Lên đầu trang" class="uppage"><img src="<c:url value="/resources/static/assets/image/upsgin.png"/>" title='lên đầu trang'
                                                                 class="button-uppage" /></button>
    <script>
        window.onscroll = function () { scrollFunction() };
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css">
    <div class="container">
        <ul class="breadcrumb">
            <li><a href="/bookshop">Trang Chủ</a></li>
            <li><a href="/listbook">Danh Mục Sách</a></li>
            <li><a href="/listbook/category/${book.category.categoryID}"><c:out value="${book.category.categoryName}"/></a></li>
        </ul>
        <!-- Phần chi tiết sản phẩm -->
        <div class="row">
            <div class="col-md-12" style="background-color: #fff;">
                <div class="row">
                    <div class="col-md-4">
                        <!-- Phần ảnh sản phẩm -->

                        <div class="product-container-gallery">
                            <div class="wrapbox-gallery">
                                <div class="wrapbox-image">
                                    <div class="productGallery_slider">
                                        <ul class="productList-slider productCarousel-slider owl-carousel owl-loaded owl-drag" id="productCarousel-slider">
                                            <div class="owl-stage-outer">
                                                <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 2s ease 0s; width: 2316px;z-index: 2;">
                                                    <div class="owl-item" style="width: 463.188px;">
                                                        <div class="product-gallery" data-image="<c:out value="${book.avatar}"/> ">
                                                            <a class="product-gallery__item" data-fancybox="gallery" href="<c:out value="${book.avatar}"/>">
                                                                <img src="<c:out value="${book.avatar}"/>" alt=" Tôn Trọng Công Việc Bao Nhiêu, Tương Lai Đi Xa Bấy Nhiêu ">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <c:forEach var="reads" items="${read}">
                                                        <div class="owl-item" style="width: 463.188px;">
                                                            <div class="product-gallery" data-image="<c:out value="${reads.imageLink}"/> ">
                                                                <a class="product-gallery__item" data-fancybox="gallery" href="<c:out value="${reads.imageLink}"/>">
                                                                    <img src="<c:out value="${reads.imageLink}"/>" alt=" Tôn Trọng Công Việc Bao Nhiêu, Tương Lai Đi Xa Bấy Nhiêu ">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>

                                        </ul>
                                    </div>

                                    <div class="productGallery_thumb">
                                        <ul class="productList-thumb productCarousel-thumb owl-carousel owl-loaded owl-drag" id="productCarousel-thumb">
                                            <div class="owl-stage-outer">
                                                <div class="owl-stage" style="transform: translate3d(0px, 0px, 0px); transition: all 0s ease 0s; width: 432px;">
                                                    <div class="owl-item active current" style="width: 71.371px; margin-right: 15px;">
                                                        <div class="product-thumb owl-item-0" data-image="<c:out value="${book.avatar}"/> ">
                                                            <a class="product-thumb__item" href="javascript:void(0);">
                                                                <img src="<c:out value="${book.avatar}"/>" alt=" Tôn Trọng Công Việc Bao Nhiêu, Tương Lai Đi Xa Bấy Nhiêu ">
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <c:forEach var="thumbread" items="${read}">
                                                        <div class="owl-item active current" style="width: 71.371px; margin-right: 15px;">
                                                            <div class="product-thumb owl-item-0" data-image="<c:out value="${thumbread.imageLink}"/> ">
                                                                <a class="product-thumb__item" href="javascript:void(0);">
                                                                    <img src="<c:out value="${thumbread.imageLink}"/>" alt=" Tôn Trọng Công Việc Bao Nhiêu, Tương Lai Đi Xa Bấy Nhiêu ">
                                                                </a>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </ul>
                                    </div>

                                </div>
                                <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                                <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
                                <script>
                                    $(document).ready(function(){
                                        $('.product-thumb__item').click(function(){
                                            // Xóa lớp active từ tất cả các ảnh thumbnail
                                            $('.product-thumb__item').removeClass('active');
                                            // Thêm lớp active cho ảnh thumbnail được click
                                            $(this).addClass('active');

                                            // Lấy chỉ số của ảnh thumbnail được click
                                            var index = $(this).closest('.owl-item').index();
                                            // Di chuyển ảnh sản phẩm đến vị trí tương ứng
                                            $('#productCarousel-slider').trigger('to.owl.carousel', [index, 300, true]);
                                        });

                                        // Kích hoạt Owl Carousel cho slider
                                        $('#productCarousel-slider').owlCarousel({
                                            items: 1,
                                            loop: true,
                                            autoplay: true,
                                            autoplayTimeout: 10000,
                                            autoplayHoverPause: true,
                                            nav: true,
                                            dots: true,
                                            center: true
                                        });

                                        // Kích hoạt Owl Carousel cho thumbnail
                                        $('#productCarousel-thumb').owlCarousel({
                                            items: 5,
                                            loop: false,
                                            autoplay: true,
                                            autoplayTimeout: 10000,
                                            autoplayHoverPause: true,
                                            nav: true,
                                            dots: false,
                                            margin: 15,
                                            responsive: {
                                                0: {
                                                    items: 3
                                                },
                                                600: {
                                                    items: 4
                                                },
                                                1000: {
                                                    items: 5
                                                }
                                            }
                                        });

                                        $("[data-fancybox]").fancybox({
                                            // Cài đặt tùy chọn
                                            loop: true,
                                            buttons: [
                                                "fullScreen",
                                                "download",
                                                "thumbs",
                                                "close"
                                            ],
                                            animationEffect: "fade"
                                        })
                                        var owl = $('#productCarousel-slider, #productCarousel-thumb');
                                        owl.on('wheel', '.owl-stage', function (e) {
                                            var delta = e.originalEvent.deltaY || e.originalEvent.detail || e.originalEvent.wheelDelta;

                                            if (delta > 0) {
                                                owl.trigger('next.owl');
                                            } else {
                                                owl.trigger('prev.owl');
                                            }
                                            e.preventDefault();
                                        });
                                    });
                                </script>

                            </div>

                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="product-details">
                            <div class="headingbook">
                                <h2><c:out value="${book.title}"/> </h2>
                                <div class="info-group">
                                    <p>Mã Sản Phẩm: <span class="regular"><c:out value="${book.bookID}"/> </span></p>
                                    <p>Tình Trạng Hàng: <span id="stockStatus" class="regular">Còn Hàng</span></p>

                                    <script>
                                        var stock = parseInt(<c:out value="${book.stock}"/>); // Lấy giá trị của book.stock

                                        if (stock === 0) { // Kiểm tra nếu stock bằng 0
                                            var stockStatusElement = document.getElementById('stockStatus');
                                            stockStatusElement.textContent = 'Hết hàng'; // Thay đổi nội dung của phần tử <span>
                                            stockStatusElement.style.color = '#FF0000'; // Thay đổi màu chữ thành màu đỏ
                                        }
                                    </script>

                                    <p>Thể loại: <span class="regular"><c:out value="${book.category.categoryName}"/> </span></p>
                                </div>
                            </div>
                            <div class="body">
                                <div class="bodybook">
                                    <div class="prices-container">
                                        <p class="price-label"><strong>Giá:</strong></p>
                                        <div class="price-wrapper">

                                            <p class="discounted-price"><c:out value="${book.price + book.typeID.price}"/>đ</p>

                                        </div>
                                    </div>
                                    <div class="inventory">
                                        <p class="quantity-inventory"></p>
                                    </div>

                                    <script>
                                        var quantity = <c:out value="${book.stock}"/> ;

                                        var quantityElement = document.querySelector('.quantity-inventory');

                                        quantityElement.textContent = quantity + " sản phẩm có sẵn";
                                    </script>
                                    <div class="quantity-area">
                                        <p><strong>Số lượng:</strong></p>
                                        <div class="quantity-controls">

                                            <button type="button" class="btn btn-dark quantity-btn minus">-</button>
                                            <div class="quantity-container">
                                                <span id="quantity" class="bold">1</span>
                                            </div>
                                            <button type="button" class="btn btn-dark quantity-btn plus">+</button>
                                        </div>
                                    </div>
                                    <div style="margin-top: 20px;">
                                        <a><button type="button" class="btn  add-to-cart-btn" onclick="addToCart()">THÊM VÀO GIỎ</button></a>
                                        <a ><button type="button" class="btn btn-primary buy-now" onclick="addToOrder()">MUA NGAY</button></a>
                                    </div>
                                    <div id="notification" style="display: none; margin-top: 10px; font-weight: 500; font-size: 25px;color: #E70505 ">
                                        Thêm thành công
                                    </div>

                                    <script>

                                        function addToCart() {
                                            // Lấy giá trị sản phẩm và số lượng từ trang web
                                            const quantityValue = parseInt(document.getElementById('quantity').textContent);


                                            // Gửi yêu cầu HTTP POST đến endpoint của controller SaveBill
                                            $.ajax({
                                                type: "POST",
                                                url: "/addToOrder",
                                                data: {
                                                    bookID: idProduct,
                                                    count: quantityValue,
                                                },
                                            });
                                            var successMessage = document.getElementById("notification");
                                            successMessage.style.display = "block";
                                        }
                                        setTimeout(function() {
                                            var successMessage = document.getElementById("notification");
                                            successMessage.style.display = "none";
                                        }, 5000);
                                    </script>
                                    <script>

                                        document.querySelector('.minus').addEventListener('click', function() {
                                            let quantity = document.getElementById('quantity');
                                            let value = parseInt(quantity.textContent);
                                            if (value > 1) {
                                                quantity.textContent = value - 1;
                                            }
                                            checkQuantity(value - 1);
                                        });

                                        document.querySelector('.plus').addEventListener('click', function() {
                                            let quantity = document.getElementById('quantity');
                                            let value = parseInt(quantity.textContent);
                                            let stock = parseInt(<c:out value="${book.stock}"/>);
                                            if (value < stock) {
                                                quantity.textContent = value + 1;
                                            }
                                            checkQuantity(value + 1);
                                        });

                                        function checkQuantity(value) {
                                            let quantity = document.getElementById('quantity');
                                            let minusBtn = document.querySelector('.minus');
                                            let addBtn = document.querySelector('.plus');
                                            let addToCartBtn = document.querySelector('.add-to-cart-btn');
                                            let buyNowBtn = document.querySelector('.buy-now');
                                            let stock = parseInt(<c:out value="${book.stock}"/>);

                                            if (value <= 1 && stock===0 ) {
                                                minusBtn.disabled = true;
                                                addBtn.disabled = true;
                                                addToCartBtn.disabled = true;
                                                buyNowBtn.disabled = true;
                                            } else {
                                                minusBtn.disabled = false;
                                                addBtn.disabled = false;
                                                addToCartBtn.disabled = false;
                                                buyNowBtn.disabled = false;
                                            }
                                        }

                                        // Kiểm tra ban đầu
                                        checkQuantity(parseInt(document.getElementById('quantity').textContent));
                                    </script>

                                </div>
                                <div class="bodydeliver">
                                    <div class="product-delivery">
                                        <div class="title-delivery">
                                            <span>Chính sách bán hàng</span>
                                        </div>
                                        <div class="infoList-delivery">
                                            <div class="delivery-item">
                                                        <span>
                                                            <img class="lazyloaded" data-src="//theme.hstatic.net/200000294254/1001077164/14/product_deliverly_1_ico.png?v=357" src="//theme.hstatic.net/200000294254/1001077164/14/product_deliverly_1_ico.png?v=357" alt="Đảm bảo chất lượng">
                                                        </span>
                                                Đảm bảo chất lượng
                                            </div>
                                            <div class="delivery-item">
                                                        <span>
                                                            <img class="lazyloaded" data-src="//theme.hstatic.net/200000294254/1001077164/14/product_deliverly_2_ico.png?v=357" src="//theme.hstatic.net/200000294254/1001077164/14/product_deliverly_2_ico.png?v=357" alt="Miễn phí giao hàng">
                                                        </span>
                                                Miễn phí giao hàng
                                            </div>
                                            <div class="delivery-item">
                                                        <span>
                                                            <img class="lazyloaded" data-src="//theme.hstatic.net/200000294254/1001077164/14/product_deliverly_3_ico.png?v=357" src="//theme.hstatic.net/200000294254/1001077164/14/product_deliverly_3_ico.png?v=357" alt="Đổi trả 7 ngày">
                                                        </span>
                                                Đổi trả 7 ngày
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="productDetail--box box-detail-description">
                <div class="product-description mg-top">
                    <div class="box-title"><h2>Mô tả sản phẩm</h2></div>
                    <div class="description-content expandable-toggle opened">
                        <div class="description-productdetail collapsed">
                            <ul>
                                <li>Tác giả: <c:out value="${book.author}"/> </li>
                                <li>Thể loại: <c:out value="${book.category.categoryName}"/></li>
                                <li>Ngôn ngữ: <c:out value="${book.language}"/></li>
                                <li>Độ tuổi: <c:out value="${book.age}"/>+</li>
                                <li>Phiên bản: <c:out value="${book.typeID.typeName}"/></li>
                                <li>Giá bìa: <c:out value="${book.price + book.typeID.price}đ"/></li>
                            </ul>
                            <h2><c:out value="${book.title}"/></h2>
                            <p><c:out value="${book.content}"/></p>
                        </div>
                        <div class="description-btn">
                            <button class="expandable-content_toggle js_expandable_content btn-viewmore">
                                <span class="expandable-content_toggle-icon"><i class="fas fa-plus"></i></span>
                                <span class="expandable-content_toggle-text">Xem thêm nội dung</span>
                            </button>
                        </div>
                    </div>
                </div>
                <script>
                    document.addEventListener('DOMContentLoaded', function () {
                        const expandButton = document.querySelector('.expandable-content_toggle');
                        const description = document.querySelector('.description-productdetail');

                        expandButton.addEventListener('click', function () {
                            description.classList.toggle('expanded');
                            if (description.classList.contains('expanded')) {
                                expandButton.classList.remove('collapsed');
                                expandButton.querySelector('.expandable-content_toggle-text').textContent = 'Thu gọn';
                                expandButton.querySelector('.expandable-content_toggle-icon').innerHTML = '<i class="fas fa-minus"></i>';
                                expandButton.classList.add('collapsed-color');

                            } else {
                                expandButton.classList.add('collapsed');
                                expandButton.querySelector('.expandable-content_toggle-text').textContent = 'Xem thêm nội dung';
                                expandButton.querySelector('.expandable-content_toggle-icon').innerHTML = '<i class="fas fa-plus"></i>';
                                expandButton.classList.remove('collapsed-color');
                            }
                        });
                    });

                </script>
            </div>

            <div id="product_view_review" class="content product_view_content">
                <div class="product_view_content-title"><strong>Đánh giá sản phẩm</strong></div>
                <div id="product_view_tab_content_review" class="product_view_tab_content_review">
                    <div class="product-view-tab-content-rating">
                        <div class="product-view-tab-content-rating-chart">
                            <div class="rating-over">
                                <div>
                                    <c:set var="totalPoints" value="0"/>
                                    <c:set var="count" value="0"/>
                                    <c:set var="fiveStarCount" value="0"/>
                                    <c:set var="fourStarCount" value="0"/>
                                    <c:set var="threeStarCount" value="0"/>
                                    <c:set var="twoStarCount" value="0"/>
                                    <c:set var="oneStarCount" value="0"/>
                                    <c:forEach var="reviewPoints" items="${reviews}">
                                        <c:set var="totalPoints" value="${totalPoints + reviewPoints.point}"/>
                                        <c:set var="count" value="${count + 1}"/>
                                        <c:if test="${reviewPoints.point eq 5}">
                                            <c:set var="fiveStarCount" value="${fiveStarCount + 1}"/>
                                        </c:if>
                                        <c:if test="${reviewPoints.point eq 4}">
                                            <c:set var="fourStarCount" value="${fourStarCount + 1}"/>
                                        </c:if>
                                        <c:if test="${reviewPoints.point eq 3}">
                                            <c:set var="threeStarCount" value="${threeStarCount + 1}"/>
                                        </c:if>
                                        <c:if test="${reviewPoints.point eq 2}">
                                            <c:set var="twoStarCount" value="${twoStarCount + 1}"/>
                                        </c:if>
                                        <c:if test="${reviewPoints.point eq 1}">
                                            <c:set var="oneStarCount" value="${oneStarCount + 1}"/>
                                        </c:if>
                                    </c:forEach>
                                    <c:set var="averagePoint" value="${count > 0 ? totalPoints / count : 0}"/>
                                    <%-- Java code to round the averagePoint to one decimal place --%>
                                    <% double averagePoint = (double) pageContext.getAttribute("averagePoint"); %>
                                    <% double roundedAverage = Math.round(averagePoint * 10.0) / 10.0; %>
                                    <strong><%= roundedAverage %><span>/5</span></strong>
                                </div>


                                <div class="rating-box">
                                    <div class="rating" id="star-rating"></div>
                                </div>
                                <script>
                                    // JavaScript code to dynamically generate star ratings
                                    var averagePoint = parseFloat("${averagePoint}");
                                    var starRating = document.getElementById("star-rating");

                                    // Clear any previous star ratings
                                    starRating.innerHTML = '';

                                    // Create yellow stars based on averagePoint
                                    var fullStars = Math.floor(averagePoint);
                                    var fraction = averagePoint - fullStars;

                                    for (var i = 0; i < fullStars; i++) {
                                        var yellowStar = document.createElement('span');
                                        yellowStar.className = 'fa fa-star';
                                        yellowStar.style.color = '#ffd900'; // Set star color to #ffd900
                                        starRating.appendChild(yellowStar);
                                    }

                                    // Create fraction star if applicable
                                    if (fraction >= 0.1) {
                                        var fractionStar = document.createElement('span');
                                        fractionStar.className = 'fa fa-star-half-alt';
                                        fractionStar.style.color = '#ffd900'; // Set star color to #ffd900
                                        starRating.appendChild(fractionStar);
                                    }

                                    // Create gray stars for remaining empty space
                                    var remainingStars = 5 - Math.ceil(averagePoint);
                                    for (var j = 0; j < remainingStars; j++) {
                                        var emptyStar = document.createElement('span');
                                        emptyStar.className = 'far fa-star';
                                        emptyStar.style.color = '#ffd900'; // Set star color to #ffd900
                                        starRating.appendChild(emptyStar);
                                    }
                                </script>
                                <div>

                                </div>
                                <div>
                                    (<c:out value="${count}"/> đánh giá)
                                </div>
                            </div>
                            <div class="rating-5star">
                                <div class="rating-item">
                                    <span>5 sao</span>
                                    <div class="review-rating"><div style="width: 100%;"></div></div>
                                    <span><c:out value="${fiveStarCount}"/></span>
                                </div>
                                <div class="rating-item">
                                    <span>4 sao</span>
                                    <div class="review-rating"><div style="width: 0%;"></div></div>
                                    <span>${fourStarCount}</span>
                                </div>
                                <div class="rating-item">
                                    <span>3 sao</span>
                                    <div class="review-rating"><div style="width: 0%;"></div></div>
                                    <span>${threeStarCount}</span>
                                </div>
                                <div class="rating-item">
                                    <span>2 sao</span>
                                    <div class="review-rating"><div style="width: 0%;"></div></div>
                                    <span>${twoStarCount}</span>
                                </div>
                                <div class="rating-item">
                                    <span>1 sao</span>
                                    <div class="review-rating"><div style="width: 0%;"></div></div>
                                    <span>${oneStarCount}</span>
                                </div>
                                <script>
                                    var fiveStarCount = <c:out value="${fiveStarCount}"/>; // Số lượng đánh giá 5 sao
                                    var fourStarCount = <c:out value="${fourStarCount}"/>;; // Số lượng đánh giá 4 sao
                                    var threeStarCount = <c:out value="${threeStarCount}"/>;; // Số lượng đánh giá 3 sao
                                    var twoStarCount = <c:out value="${twoStarCount}"/>;; // Số lượng đánh giá 2 sao
                                    var oneStarCount = <c:out value="${oneStarCount}"/>;; // Số lượng đánh giá 1 sao

                                    var count = fiveStarCount + fourStarCount + threeStarCount + twoStarCount + oneStarCount;

                                    // Tính toán phần trăm đánh giá cho từng loại sao
                                    var fiveStarPercentage = (fiveStarCount / count) * 100;
                                    var fourStarPercentage = (fourStarCount / count) * 100;
                                    var threeStarPercentage = (threeStarCount / count) * 100;
                                    var twoStarPercentage = (twoStarCount / count) * 100;
                                    var oneStarPercentage = (oneStarCount / count) * 100;

                                    // Cập nhật CSS cho từng loại sao
                                    var fiveStarDiv = document.querySelector(".rating-item:nth-child(1) .review-rating div");
                                    fiveStarDiv.style.width = fiveStarPercentage + "%";
                                    fiveStarDiv.style.backgroundColor = "#4CAF50"; // Màu xanh lá cây

                                    var fourStarDiv = document.querySelector(".rating-item:nth-child(2) .review-rating div");
                                    fourStarDiv.style.width = fourStarPercentage + "%";
                                    fourStarDiv.style.backgroundColor = "#4CAF50"; // Màu của bạn cho 4 sao

                                    var threeStarDiv = document.querySelector(".rating-item:nth-child(3) .review-rating div");
                                    threeStarDiv.style.width = threeStarPercentage + "%";
                                    threeStarDiv.style.backgroundColor = "#4CAF50"; // Màu của bạn cho 3 sao

                                    var twoStarDiv = document.querySelector(".rating-item:nth-child(4) .review-rating div");
                                    twoStarDiv.style.width = twoStarPercentage + "%";
                                    twoStarDiv.style.backgroundColor = "#4CAF50"; // Màu của bạn cho 2 sao

                                    var oneStarDiv = document.querySelector(".rating-item:nth-child(5) .review-rating div");
                                    oneStarDiv.style.width = oneStarPercentage + "%";
                                    oneStarDiv.style.backgroundColor = "#4CAF50";
                                </script>

                            </div>


                        </div>
                    </div>
                </div>
                <div class="comment-overview">
                    <div class="cmt-view collapsed">
                        <c:forEach var="comment" items="${reviews}">
                            <div class="comment_content">
                                <div class="reviewer"><c:out value="${comment.accountID.name}"/></div>
                                <div class="rating-comment" data-point="${comment.point}"></div> <!-- Placeholder for star rating -->
                                <div class="comment_text">
                                    <c:out value="${comment.comment}"/>
                                </div>
                            </div>
                            <script>
                                // JavaScript code to dynamically generate star ratings for each review point
                                var ratingDivs = document.querySelectorAll(".rating-comment");

                                ratingDivs.forEach(function(ratingDiv) {
                                    // Clear any previous star ratings inside the current "rating-comment" div
                                    ratingDiv.innerHTML = '';

                                    // Get the review point from the data-point attribute
                                    var reviewPoint = parseFloat(ratingDiv.dataset.point);

                                    // Create stars based on reviewPoint
                                    for (var i = 0; i < 5; i++) {
                                        var star = document.createElement('span');
                                        star.className = i < reviewPoint ? 'fa fa-star' : 'far fa-star'; // Set class to filled star if i < reviewPoint
                                        star.style.color = i < reviewPoint ? '#ffd900' : ''; // Set star color to yellow if i < reviewPoint
                                        ratingDiv.appendChild(star);
                                    }
                                });
                            </script>

                        </c:forEach>
                    </div>
                </div>
            </div>

            <div class="top-10-box" id="sectionToScrollTo">
                <div class="row">
                    <h1 class="top-10-tittle">Các sản phẩm liên quan</h1>
                </div>
                <div class="row">
                    <div class="owl-carousel owl-theme top-owl-carousel">
                        <c:forEach var="recommend" items="${top10}">
                            <div class="item">
                                <div class="top-10-info-top">
                                    <a href="/productbook/${recommend.bookID}" class="top-10-link">
                                        <img src="<c:out value="${recommend.avatar}"/> "
                                             alt="" class="top-10-img">
                                    </a>
                                    <a href="/productbook/${recommend.bookID}" class="buy-now">Xem ngay</a>
                                </div>
                                <div class="top-10-info-bot">
                                    <a href="/listbook/category/${recommend.category.categoryID}" class="product-cat"><c:out value="${recommend.category.categoryName}"/> </a>
                                    <a href="/productbook/${recommend.bookID}" class="product-name"><c:out value="${recommend.title}"/> </a>
                                    <div class="product-price"><c:out value="${recommend.price}"/>đ</div>
                                </div>

                            </div>
                        </c:forEach>


                        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
                        <script>

                            $(document).ready(function(){
                                var owl = $('.owl-carousel');
                                owl.owlCarousel({
                                    items: 6,
                                    loop: false,
                                    dots: false,
                                    margin: 285,
                                    responsive:{
                                        0:{
                                            items:1
                                        },
                                        600:{
                                            items:3
                                        },
                                        960:{
                                            items:5
                                        },
                                        1200:{
                                            items:6
                                        }
                                    }
                                });
                                owl.on('wheel', '.owl-stage', function (e) {
                                    var delta = e.originalEvent.deltaY || e.originalEvent.detail || e.originalEvent.wheelDelta;

                                    if (delta > 0) {
                                        owl.trigger('next.owl');
                                    } else {
                                        owl.trigger('prev.owl');
                                    }
                                    e.preventDefault();
                                });
                            });
                        </script>




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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.5.7/jquery.fancybox.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

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
            sectionToScrollTo.scrollIntoView({ behavior: 'smooth' });
        });
    });
    document.addEventListener("DOMContentLoaded", function () {
        var scrollToSectionButton = document.getElementById("scrollToMoiPhatHanh");
        var sectionToScrollTo = document.getElementById("sectionMoiPhatHanh");

        scrollToSectionButton.addEventListener("click", function () {
            sectionToScrollTo.scrollIntoView({ behavior: 'smooth' });
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
    document.addEventListener('DOMContentLoaded', function () {
        const searchButton = document.getElementById('search-button');
        const searchBox = document.getElementById('search-box');

        searchButton.addEventListener('click', function (event) {
            event.preventDefault(); // Ngăn chặn hành động mặc định của nút submit

            const searchText = document.getElementById('search-text').value.trim();

            if (searchText !== '') {
                window.location.href = '/book/find?title=' + encodeURIComponent(searchText);
            }
        });

        // Nếu người dùng nhấn Enter khi ở ô tìm kiếm cũng sẽ thực hiện tìm kiếm
        searchBox.addEventListener('submit', function (event) {
            event.preventDefault(); // Ngăn chặn hành động mặc định của form

            var searchText = document.getElementById('search-text').value.trim();

            if (searchText !== '') {
                window.location.href = '/book/find?title=' + encodeURIComponent(searchText);
            }
        });
    });
</script>
<script>





    // var currentURL = window.location.href;
    // var urlParts = currentURL.split('/');

    const idProduct = ${book.bookID};


    function addToOrder() {

        const quantityValue = parseInt(document.getElementById('quantity').textContent);


        // Gửi yêu cầu HTTP POST đến endpoint của controller SaveBill
        $.ajax({
            type: "POST",
            url: "/addToOrder",
            data: {
                bookID: idProduct,
                count: quantityValue,
            },

        });
        setTimeout(function() {
            window.location.href = "/cart";
        }, 100);
    }
</script>
