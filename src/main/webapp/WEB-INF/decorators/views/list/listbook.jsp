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
    <link rel="stylesheet" href="/resources/static/css/user/listbook.css">
</head>

<body id="products">
<header>
    <div class="boxlogo" style="z-index: 1000;">
        <div class="container">
            <div class="col">
                <a href="/bookshop">
                    <img src="<c:url value="/resources/static/assets/image/BookShop-logos_transparent.png"/>" alt="" class="logo">
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
    <div class="container">
        <div class="sach">
            <ul class="breadcrumb">
                <li><a href="/bookshop">Trang Chủ</a></li>
                <li><a>Danh Mục Sách</a></li>
                <li><a>Tất cả sản phẩm</a></li>
            </ul>
        </div>
    </div>
    <div class="container">
        <div class="grid__row">
            <div class="col-lg-2 col-md-12 col-12 collection-filter ">
                <nav class="category">
                    <h3 class="category-heading"><i class="category-heading-icon fa-solid fa-list-ul"></i>Danh Mục
                    </h3>
                    <ul class="category-list">
                        <li class="category-item">
                            <a href="/listbook" class="category-item-link">Sách mới</a>
                        </li>
                        <li class="category-item">
                            <a href="/listbook/category/6" class="category-item-link">Sách hot</a>
                        </li>
                        <li class="category-item">
                            <a href="/listbook" class="category-item-link">Tất cả sản phẩm</a>
                        </li>
                    </ul>
                </nav>

                <nav class="age">
                    <h3 class="category-heading"><i class="fa-solid fa-user"></i>Độ Tuổi</h3>

                    <dd class="even">
                        <ol class="checkbox-list-age">
                            <li>
                                <input type="checkbox" id="age-m-1" clas="m-checkbox-unchecked" value="18"
                                       name="test[1][]" onclick="addClassCheckAge(this)"  />
                                <a  class="m-checkbox-checked" onclick="handleClickAge('age-m-1')"
                                    price-m-from="">18+</a>
                            </li>
                            <li>
                                <input type="checkbox" id="age-m-2" clas="m-checkbox-unchecked" value="16"
                                       name="test[1][]" onclick="addClassCheckAge(this)" />
                                <a  class="m-checkbox-checked" onclick="handleClickAge('age-m-2')">16+</a>

                            </li>
                            <li>
                                <input type="checkbox" id="age-m-3" clas="m-checkbox-unchecked" value="12"
                                       name="test[1][]" onclick="addClassCheckAge(this)" />
                                <a  class="m-checkbox-checked" onclick="handleClickAge('age-m-3')">12+</a>

                            </li>
                            <li>
                                <input type="checkbox" id="age-m-4" clas="m-checkbox-unchecked" value="6"
                                       name="test[1][]" onclick="addClassCheckAge(this)"/>
                                <a  class="m-checkbox-checked" onclick="handleClickAge('age-m-4')">6+</a>
                            </li>
                            <li>
                                <input type="checkbox" id="age-m-5" clas="m-checkbox-unchecked" value="3"
                                       name="test[1][]" onclick="addClassCheckAge(this)" />
                                <a  class="m-checkbox-checked" onclick="handleClickAge('age-m-5')">3+</a>
                            </li>
                            <li>
                                <input type="checkbox" id="age-m-6" clas="m-checkbox-unchecked" value="0"
                                       name="test[1][]" onclick="addClassCheckAge(this)" />
                                <a class="m-checkbox-checked" onclick="handleClickAge('age-m-6')">0+</a>
                            </li>

                        </ol>
                    </dd>
                </nav>
                <nav class="price">
                    <h3 class="category-heading"><i class="fa-solid fa-filter"></i>Lọc Giá</h3>
                    <div class="container">

                        <dd class="even">
                            <ol class="checkbox-list-price">
                                <li>
                                    <input type="checkbox" id="price-m-1" clas="m-checkbox-unchecked" value="20000"
                                           name="test[2][]" onclick="addClassCheckPrice(this) "  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-1')">Dưới 20,000đ</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="price-m-2" clas="m-checkbox-unchecked" value="50000"
                                           name="test[2][]" onclick="addClassCheckPrice(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-2')">Dưới 50,000đ</a>

                                </li>
                                <li>
                                    <input type="checkbox" id="price-m-3" clas="m-checkbox-unchecked" value="100000"
                                           name="test[2][]" onclick="addClassCheckPrice(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-3')">Dưới 100,000đ</a>

                                </li>
                                <li>
                                    <input type="checkbox" id="price-m-4" clas="m-checkbox-unchecked" value="200000"
                                           name="test[2][]" onclick="addClassCheckPrice(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-4')">Dưới 200,000đ</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="price-m-5" clas="m-checkbox-unchecked" value="500000"
                                           name="test[2][]" onclick="addClassCheckPrice(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-5')">Dưới 500,000đ</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="price-m-6" clas="m-checkbox-unchecked" value="1000000"
                                           name="test[2][]" onclick="addClassCheckPrice(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-6')">Dưới 1,000,000đ</a>

                                </li>
                                <li>
                                    <input type="checkbox" id="price-m-7" clas="m-checkbox-unchecked" value="2000000"
                                           name="test[2][]" onclick="addClassCheckPrice(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickPrice('price-m-7')">Dưới 2,000,000đ</a>
                                </li>

                            </ol>
                        </dd>
                    </div>
                </nav>
                <nav class="type">
                    <h3 class="category-heading"><i class="fa-solid fa-language"></i>Ngôn ngữ</h3>
                    <div class="container">

                        <dd class="even">
                            <ol class="checkbox-list-type">
                                <li>
                                    <input type="checkbox" id="type-m-1" clas="m-checkbox-unchecked" value="Tiếng Việt"
                                           name="test[3][]" onclick="addClassCheckType(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickType('type-m-1')">Tiếng Việt</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="type-m-2" clas="m-checkbox-unchecked" value="Tiếng Anh"
                                           name="test[3][]" onclick="addClassCheckType(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickType('type-m-2')">Tiếng Anh</a>

                                </li>
                                <li>
                                    <input type="checkbox" id="type-m-3" clas="m-checkbox-unchecked" value="Tiếng Nhật"
                                           name="test[3][]" onclick="addClassCheckType(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickType('type-m-3')">Tiếng Nhật</a>
                                </li>
                                <li>
                                    <input type="checkbox" id="type-m-4" clas="m-checkbox-unchecked" value="Tiếng Trung"
                                           name="test[3][]" onclick="addClassCheckType(this)"  />
                                    <a  class="m-checkbox-checked" onclick="handleClickType('type-m-4')">Tiếng Trung</a>
                                </li>
                            </ol>
                        </dd>
                    </div>
                </nav>
                <nav class="Filter" style=" height: 45px">
                    <button style="width:100%;height: 100%; background-color:#F8fbf8 " onclick="handleCheckboxChange()">Filter</button>
                </nav>
            </div>
            <div class="col-lg-10 col-md-12 col-12 collection-content">
                <ul class="products" >
                    <c:forEach var="All" items="${findAll}">
                        <li>
                            <div class="product-item">
                                <div class="product-top">
                                    <a href="/productbook/${All.bookID}" class="product-thumb">
                                        <div class="image-wrapper">
                                            <img src="<c:out value="${All.avatar}"/> " alt="" class="">
                                        </div>
                                    </a>
                                </div>
                                <div class="product-info">
                                    <a href="/listbook/type/${All.typeID.typeID}" class="product-cat"><c:out value="${All.typeID.typeName}"/></a>
                                    <a href="/listbook/category/${All.category.categoryID}" class="product-cat"><c:out value="${All.category.categoryName}"/></a>

                                    <a href="/productbook/${All.bookID}" class="product-name"><c:out value="${All.title}"/></a>
                                    <div class="product-price"><c:out value="${All.price+All.typeID.price}"/></div>
                                </div>
                            </div>
                        </li>
                    </c:forEach>
                </ul>
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
    function toggleCheckboxAge(checkboxId) {
        var checkbox = document.getElementById(checkboxId);

        if (checkbox) {
            // Loại bỏ lớp "marked" từ tất cả các checkbox trong nhóm Age trước
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
    function handleCheckboxChange() {
        const ageCheckbox = document.querySelector('input[name="test[1][]"]:checked');
        const priceCheckbox = document.querySelector('input[name="test[2][]"]:checked');
        const languageCheckbox = document.querySelector('input[name="test[3][]"]:checked');

        if (ageCheckbox && !priceCheckbox  && !languageCheckbox) {
            updateProductList('/updateProductList?age=' + encodeURIComponent(ageCheckbox.value));
        }
        if (!ageCheckbox && priceCheckbox  && !languageCheckbox) {
            updateProductList('/updateProductList?price=' + encodeURIComponent(priceCheckbox.value));
        }
        if (!ageCheckbox && !priceCheckbox  && languageCheckbox) {
            updateProductList('/updateProductList?language=' + encodeURIComponent(languageCheckbox.value));
        }
        if (ageCheckbox && priceCheckbox  && !languageCheckbox) {
            updateProductList('/updateProductList?age=' + encodeURIComponent(ageCheckbox.value)+'&price='+encodeURIComponent(priceCheckbox.value));
        }
        if (ageCheckbox && !priceCheckbox  && languageCheckbox) {
            updateProductList('/updateProductList?age=' + encodeURIComponent(ageCheckbox.value)+'&language='+encodeURIComponent(languageCheckbox.value));
        }
        if (!ageCheckbox && priceCheckbox  && languageCheckbox) {
            updateProductList('/updateProductList?price=' + encodeURIComponent(priceCheckbox.value)+'&language='+encodeURIComponent(languageCheckbox.value));
        }
        if (priceCheckbox && languageCheckbox && languageCheckbox) {
            updateProductList('/updateProductList?age=' + encodeURIComponent(ageCheckbox.value)+'&price='+encodeURIComponent(priceCheckbox.value) +'&language='+encodeURIComponent(languageCheckbox.value));
        }
    }

    function updateProductList(url) {
        const xhr = new XMLHttpRequest();
        xhr.open('GET', url, true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                // Cập nhật phần tử products với dữ liệu mới từ phản hồi AJAX
                document.getElementById('products').innerHTML = xhr.responseText;
            }
        };
        xhr.send();
    }

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
