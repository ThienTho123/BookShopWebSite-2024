<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 3/28/2024
  Time: 9:12 AM
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

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <!-- Owl Carousel CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css"
          integrity="sha512-tS3S5qG0BlhnQROyJXvNjeEM4UpMXHrQfTGmbQ1gKmelCxlSEBUaxhRBj/EFTzpbP4RVSrpEikbmdJobCvhE3g=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"
          integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw=="
          crossorigin="anonymous" referrerpolicy="no-referrer" />

    <!-- Your Custom CSS -->
    <link rel="stylesheet" href="/resources/static/css/home.css">
    <title>home</title>
</head>

<body>
<header>
    <div class="boxlogo" style="z-index: 1000;">
        <div class="container">
            <div class="col">
                <a href="">
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
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="" id="scrollToSectionButton">Sách bán
                        chạy</a></li>
                    <li style="border-right: 1px solid #7c7c7c71;"><a href="" id="scrollToBottomButton2">Giới thiệu</a></li>
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
        <div class="row">
            <div class="col-3">
                <c:forEach var="index" begin="0" end="2">
                    <div class="row">
                        <a class="left-banner left-banner-${index+1}">
                            <c:set var="bannerleft" value="${bannersleft[index].bannerImage}" />
                            <img src="<c:out value="${bannerleft}"/>" alt="" class="left-banner-img">
                        </a>
                    </div>
                </c:forEach>
            </div>
            <div class="col-7" style="margin-left: 13px">
                <div class="owl-carousel owl-theme">
                    <c:forEach var="bannermid" items="${bannersmid}">
                        <a class="mid-banner">
                            <img class="owl-lazy" data-src="<c:out value="${bannermid.bannerImage}"/>"
                                 data-src-retina="<c:out value="${bannermid.bannerImage}"/>" alt="">
                        </a>
                    </c:forEach>
                </div>
            </div>

            <div class="col-2">
                <a href="" class="right-banner" id="scrollToMoiPhatHanh">
                    <img src="<c:out value="${bannersright.bannerImage}"/>" alt="" class="left-banner-img">
                </a>
            </div>
        </div>
        <div class="row">
            <c:forEach  var="bannerunder" items="${bannersunder}">
                <div class="col-3">
                    <a class="under-banner" href="/listbook/category/${bannerunder.idbookorcate}">
                        <img src="<c:out value="${bannerunder.bannerImage}"/>" alt="" class="right-banner-img">
                    </a>
                </div>
            </c:forEach>
        </div>

    </div>
    <div class="container" id="sectionToScrollTo">
        <div class="top-10-box">
            <div class="row">
                <h1 class="top-10-tittle">Top 10 sách bán chạy</h1>
            </div>
            <div class="row">
                <div class="owl-carousel owl-theme">
                    <c:forEach var="hotbook" items="${hotbooks}">
                        <div class="item">
                            <div class="top-10-info-top">
                                <a href="/productbook/${hotbook.bookID}" class="top-10-link">
                                    <img class="top-10-img" src="<c:out value="${hotbook.avatar}"/>">
                                </a>
                                <a href="/productbook/${hotbook.bookID}" class="buy-now">mua ngay</a>
                            </div>
                            <div class="top-10-info-bot">
                                <a href="/listbook/category/${hotbook.category.categoryID}" class="product-cat"><c:out value="${hotbook.category.categoryName}"/></a>
                                <a href="/productbook/${hotbook.bookID}" class="product-name"><c:out value="${hotbook.title}"/></a>
                                <div class="product-price"><c:out value="${hotbook.price}"/>đ</div>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
        </div>

    </div>
    <div class="container" id="sectionMoiPhatHanh">
        <div class="new-book-div">
            <div class="row">
                <div class="col" style="max-width: fit-content;">
                    <img src="/resources/static/assets/image/home_tabs_1_banner.jpeg" alt="" class="sach-moi-img">
                </div>
                <div class="col">
                    <div class="row">
                        <ul class="product-book">
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[0].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[0].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[0].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[0].category.categoryID}" class="book-cat"><c:out value="${newbooks[0].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[0].bookID}" class="book-name"><c:out value="${newbooks[0].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[0].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[1].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[1].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[1].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[1].category.categoryID}" class="book-cat"><c:out value="${newbooks[1].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[1].bookID}" class="book-name"><c:out value="${newbooks[1].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[1].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[2].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[2].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[2].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[2].category.categoryID}" class="book-cat"><c:out value="${newbooks[2].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[2].bookID}" class="book-name"><c:out value="${newbooks[2].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[2].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[3].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[3].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[3].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[3].category.categoryID}" class="book-cat"><c:out value="${newbooks[3].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[3].bookID}" class="book-name"><c:out value="${newbooks[3].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[3].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[4].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[4].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[4].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[4].category.categoryID}" class="book-cat"><c:out value="${newbooks[4].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[4].bookID}" class="book-name"><c:out value="${newbooks[4].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[4].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <ul class="product-book">
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[5].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[5].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[5].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[5].category.categoryID}" class="book-cat"><c:out value="${newbooks[5].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[5].bookID}" class="book-name"><c:out value="${newbooks[5].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[5].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[6].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[6].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[6].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[6].category.categoryID}" class="book-cat"><c:out value="${newbooks[6].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[6].bookID}" class="book-name"><c:out value="${newbooks[6].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[6].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[7].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[7].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[7].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[7].category.categoryID}" class="book-cat"><c:out value="${newbooks[7].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[7].bookID}" class="book-name"><c:out value="${newbooks[7].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[7].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[8].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[8].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[8].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[8].category.categoryID}" class="book-cat"><c:out value="${newbooks[8].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[8].bookID}" class="book-name"><c:out value="${newbooks[8].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[8].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[9].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[9].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[9].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[9].category.categoryID}" class="book-cat"><c:out value="${newbooks[9].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[9].bookID}" class="book-name"><c:out value="${newbooks[9].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[9].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <ul class="product-book">
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[10].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[10].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[10].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[10].category.categoryID}" class="book-cat"><c:out value="${newbooks[10].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[10].bookID}" class="book-name"><c:out value="${newbooks[10].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[10].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[11].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[11].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[11].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[11].category.categoryID}" class="book-cat"><c:out value="${newbooks[11].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[11].bookID}" class="book-name"><c:out value="${newbooks[11].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[11].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[12].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[12].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[12].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[12].category.categoryID}" class="book-cat"><c:out value="${newbooks[12].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[12].bookID}" class="book-name"><c:out value="${newbooks[12].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[12].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[13].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[13].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[13].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[13].category.categoryID}" class="book-cat"><c:out value="${newbooks[13].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[13].bookID}" class="book-name"><c:out value="${newbooks[13].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[13].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${newbooks[14].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${newbooks[14].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${newbooks[14].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${newbooks[14].category.categoryID}" class="book-cat"><c:out value="${newbooks[14].category.categoryName}"/> </a>
                                        <a href="/productbook/${newbooks[14].bookID}" class="book-name"><c:out value="${newbooks[14].title}"/> </a>
                                        <div class="book-price"><c:out value="${newbooks[14].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>            </div>
            <div>

                <a href="/listbook" class="xem-them">Xem thêm</a>
            </div>

        </div>

    </div>
    <div class="container">
        <div class="new-book-div">
            <div class="row">
                <div class="col" style="max-width: fit-content;">
                    <img src="/resources/static/assets/image/banner-truyentranh.png" alt="" class="sach-moi-img">
                </div>
                <div class="col">
                    <div class="row">
                        <ul class="product-book">
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[0].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[0].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[0].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[0].category.categoryID}" class="book-cat"><c:out value="${comicbooks[0].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[0].bookID}" class="book-name"><c:out value="${comicbooks[0].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[0].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[1].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[1].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[1].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[1].category.categoryID}" class="book-cat"><c:out value="${comicbooks[1].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[1].bookID}" class="book-name"><c:out value="${comicbooks[1].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[1].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[2].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[2].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[2].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[2].category.categoryID}" class="book-cat"><c:out value="${comicbooks[2].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[2].bookID}" class="book-name"><c:out value="${comicbooks[2].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[2].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[3].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[3].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[3].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[3].category.categoryID}" class="book-cat"><c:out value="${comicbooks[3].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[3].bookID}" class="book-name"><c:out value="${comicbooks[3].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[3].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[4].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[4].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[4].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[4].category.categoryID}" class="book-cat"><c:out value="${comicbooks[4].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[4].bookID}" class="book-name"><c:out value="${comicbooks[4].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[4].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <ul class="product-book">
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[5].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[5].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[5].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[5].category.categoryID}" class="book-cat"><c:out value="${comicbooks[5].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[5].bookID}" class="book-name"><c:out value="${comicbooks[5].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[5].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[6].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[6].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[6].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[6].category.categoryID}" class="book-cat"><c:out value="${comicbooks[6].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[6].bookID}" class="book-name"><c:out value="${comicbooks[6].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[6].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[7].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[7].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[7].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[7].category.categoryID}" class="book-cat"><c:out value="${comicbooks[7].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[7].bookID}" class="book-name"><c:out value="${comicbooks[7].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[7].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[8].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[8].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[8].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[8].category.categoryID}" class="book-cat"><c:out value="${comicbooks[8].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[8].bookID}" class="book-name"><c:out value="${comicbooks[8].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[8].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[9].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[9].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[9].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[9].category.categoryID}" class="book-cat"><c:out value="${comicbooks[9].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[9].bookID}" class="book-name"><c:out value="${comicbooks[9].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[9].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="row">
                        <ul class="product-book">
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[10].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[10].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[10].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[10].category.categoryID}" class="book-cat"><c:out value="${comicbooks[10].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[10].bookID}" class="book-name"><c:out value="${comicbooks[10].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[10].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[11].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[11].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[11].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[11].category.categoryID}" class="book-cat"><c:out value="${comicbooks[11].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[11].bookID}" class="book-name"><c:out value="${comicbooks[11].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[11].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[12].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[12].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[12].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[12].category.categoryID}" class="book-cat"><c:out value="${comicbooks[12].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[12].bookID}" class="book-name"><c:out value="${comicbooks[12].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[12].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[13].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[13].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[13].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[13].category.categoryID}" class="book-cat"><c:out value="${comicbooks[13].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[13].bookID}" class="book-name"><c:out value="${comicbooks[13].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[13].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                            <li>
                                <div class="book-item">
                                    <div class="book-item-top">
                                        <a href="/productbook/${comicbooks[14].bookID}" class="book-item-thumb">
                                            <img src="<c:out value="${comicbooks[14].avatar}"/> "
                                                 alt="">
                                        </a>
                                        <a href="/productbook/${comicbooks[14].bookID}" class="buy-now">mua ngay</a>
                                    </div>
                                    <div class="book-item-bot">
                                        <a href="/listbook/category/${comicbooks[14].category.categoryID}" class="book-cat"><c:out value="${comicbooks[14].category.categoryName}"/> </a>
                                        <a href="/productbook/${comicbooks[14].bookID}" class="book-name"><c:out value="${comicbooks[14].title}"/> </a>
                                        <div class="book-price"><c:out value="${comicbooks[14].price}"/>đ </div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>            </div>
            </div>
            <div class="row">
                <a href="/listbook/category/4" class="xem-them">Xem thêm</a>
            </div>
        </div>


    </div>
    <div class="container">
        <div class="news">
            <div class="row">
                <h1 class="news-tittle">Thông Tin Bản Quyền</h1>
            </div>
            <div class="row">
                <div class="col-7">
                    <img src="<c:out value='${newest.newsImage}'/>" alt="" class="left-news-img">
                    <div class="left-news-tittle"><c:out value='${newest.newsTitle}'/>"</div>
                </div>
                <div class="col-5">
                    <div class="right-news">
                        <c:forEach var="news" items="${top4news}">
                            <div class="row">
                                <img src="<c:out value='${news.newsImage}'/>" alt="" class="right-news-img">
                                <div class="right-news-tittle"><c:out value='${news.newsTitle}'/></div>
                            </div>
                        </c:forEach>
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
    // Khởi tạo carousel
    var owl = $('.col-7 .owl-carousel').owlCarousel({
        items: 1,
        lazyLoad: true,
        loop: true,
        margin: 10,
        autoplay: true,
        autoplayTimeout: 5000,
        autoplayHoverPause: true
    });

    owl.on('wheel', ' .owl-stage', function (e) {
        var delta = e.originalEvent.deltaY || e.originalEvent.detail || e.originalEvent.wheelDelta;

        if (delta > 0) {
            owl.trigger('next.owl');
        } else {
            owl.trigger('prev.owl');
        }
        e.preventDefault();
    });


</script>
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
        var scrollToBottomButton2 = document.getElementById("scrollToBottomButton2");

        scrollToBottomButton2.addEventListener("click", function () {
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
        var myLink = document.getElementById("scrollToBottomButton2");

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
    $('.top-10-box .owl-carousel').owlCarousel({
        loop: false,
        margin: 10,
        nav: true,
        responsive: {
            0: {
                items: 1
            },
            460:{
                items: 2
            },
            600: {
                items: 3
            },
            1000: {
                items: 5
            }
        }
    });

    $('.top-10-box .owl-carousel').on('mousewheel', '.owl-stage', function (e) {
        if (e.originalEvent.deltaY > 0) {
            $(this).trigger('next.owl');
        } else {
            $(this).trigger('prev.owl');
        }
        e.preventDefault();
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