<%--
  Created by IntelliJ IDEA.
  User: thien
  Date: 4/12/2024
  Time: 2:35 PM
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
    <link rel="stylesheet" href="/resources/static/css/auth/review.css">
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
    <div class="container my-5">
        <div class="product-image">
            <a href="/productbook/${review.bookID.bookID}"><img src="<c:out value="${review.bookID.avatar}"/>"></a>
        </div>
        <h1 class="product-title"><a href="/productbook/${review.bookID.bookID}" style="text-decoration: none; color: black">
            <c:out value="${review.bookID.title}"/></a></h1>

        <div class="rating-buttons">
            <button class="star-button" data-rating="1">1 sao</button>
            <button class="star-button" data-rating="2">2 sao</button>
            <button class="star-button" data-rating="3">3 sao</button>
            <button class="star-button" data-rating="4">4 sao</button>
            <button class="star-button" data-rating="5">5 sao</button>
        </div>
        <script>
            document.addEventListener("DOMContentLoaded", function() {
                const defaultRating = "2"; // Giá trị mặc định của đánh giá

                // Tìm nút đánh giá mặc định và thêm lớp 'active'
                const defaultButton = document.querySelector(`.star-button[data-rating="${review.point}"]`);
                defaultButton.classList.add('active');

                const ratingButtons = document.querySelectorAll('.star-button');

                // Duyệt qua từng nút đánh giá và thêm sự kiện click
                ratingButtons.forEach(button => {
                    button.addEventListener('click', () => {
                        // Lấy giá trị rating từ thuộc tính data-rating
                        const rating = button.getAttribute('data-rating');

                        // Xóa lớp 'active' từ tất cả các nút đánh giá
                        ratingButtons.forEach(btn => {
                            btn.classList.remove('active');
                        });

                        // Thêm lớp 'active' cho nút đánh giá được nhấn
                        button.classList.add('active');
                    });
                });
            });

        </script>
        <div class="review-box">
            <input id="review-input" placeholder="Nhập ý kiến của bạn về sản phẩm" value="${review.comment}"/>
            <button id="submit-review" onclick="UpdateRating()">Chỉnh sửa đánh giá</button>
        </div>
        <script>
            function UpdateRating(){
                const reviewInput = document.getElementById('review-input');
                const inputValue = reviewInput.value;
                const activeRating = document.querySelector('.star-button.active').getAttribute('data-rating');
                const reviewid= ${review.reviewID};
                $.ajax({
                    type: "POST",
                    url: "/updaterating",
                    data: {
                        activeRating:activeRating,
                        inputValue:inputValue,
                        reviewid:reviewid
                    },
                });
                setTimeout(function() {
                    window.location.href = "/info";
                }, 100);
            }
        </script>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
