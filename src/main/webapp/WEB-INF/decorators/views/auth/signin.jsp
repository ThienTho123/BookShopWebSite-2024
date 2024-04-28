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
    <link rel="stylesheet" href="/resources/static/css/auth/signin.css">
</head>

<body>

<article>
    <div class="containerlayout">
        <div class="containerlogin">
            <div class="login-container">
                <h2 class="textlogin">Đăng Nhập</h2>
                <form action="/login" method="post">
                    <div class="form-group">
                        <label for="username">Vui lòng nhập tên đăng nhập của bạn</label>
                        <input type="text" id="username" name="username" required>
                    </div>
                    <div class="form-group">
                        <label for="password">Vui lòng nhập mật khẩu</label>
                        <input type="password" id="password" name="password" required>
                    </div>
                    <div class="form-group">
                        <button type="submit">ĐĂNG NHẬP</button>
                    </div>
                </form>
                <div class="form-group">
                    <p style="font-style: italic">Bạn chưa có tài khoản? <a href="/register">Đăng ký</a></p>
                    <p><a href="/fill_email">Quên mật khẩu?</a></p>
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

