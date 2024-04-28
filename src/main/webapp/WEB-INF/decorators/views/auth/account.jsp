<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 4/11/2024
  Time: 4:54 PM
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

    <!-- Your Custom CSS -->
    <link rel="stylesheet" href="/resources/static/css/auth/account.css">
    <title>home</title>
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
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3">
                <div class="text-center mb-4">

                    <img src="/resources/static/assets/image/usericon.png" alt="Logo"  width="150" height="auto">
                </div>
                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                    <a class="nav-link active" id="v-pills-profile-tab" data-bs-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="true">Profile</a>
                    <a class="nav-link" id="v-pills-change-password-tab" data-bs-toggle="pill" href="#v-pills-change-password" role="tab" aria-controls="v-pills-change-password" aria-selected="false">Change Password</a>
                    <a class="nav-link" id="v-pills-purchase-history-tab" data-bs-toggle="pill" href="#v-pills-purchase-history" role="tab" aria-controls="v-pills-purchase-history" aria-selected="false">Purchase History</a>
                    <script>

                    </script>
                </div>
                <a class="nav-link"  href="${pageContext.request.contextPath}/logout" style="margin-top:20px;margin-left: 100px; color:darkblue; display: inline-block" ><button id="log-out" >Log out</button></a>

            </div>
            <!-- Content -->
            <div class="col-md-9">
                <div class="tab-content" id="v-pills-tabContent">
                    <div class="tab-pane fade show active" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                        <!-- Profile Content -->
                        <div class="p-4 border border-1 rounded-3">
                            <h2>Profile Information</h2>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email:</label>
                                <input type="email" class="form-control" id="email" value="<c:out value='${account.email}'/>" readonly style="pointer-events: none; cursor: default;" onfocus="this.blur()">
                            </div>
                            <div class="mb-3">
                                <label for="fullname" class="form-label">Name:</label>
                                <input type="text" class="form-control" id="fullname" value="<c:out value="${account.name}"/>">
                            </div>
                            <div class="mb-3">
                                <label for="phone" class="form-label">Phone Number:</label>
                                <input type="tel" class="form-control" id="phone" value="<c:out value="${account.phoneNumber}"/>">
                            </div>
                            <div class="mb-3">
                                <label for="address" class="form-label">Address:</label>
                                <input type="text" class="form-control" id="address" value="<c:out value="${account.address}"/>">
                            </div>
                            <button type="submit" class="btn btn-primary" onclick="OnClickUpdate(this)">Update</button>
                            <script>
                                function OnClickUpdate(button){
                                    var nameUpdate = document.getElementById("fullname").value;
                                    var phoneNumberUpdate = document.getElementById("phone").value;
                                    var addressUpdate = document.getElementById("address").value;
                                    if (addressUpdate.trim() === '' || phoneNumberUpdate.trim()=== ''|| nameUpdate.trim()==='') {
                                        alert("Thông tin không được để trống");
                                        return "/info";
                                    }
                                    else if (addressUpdate.trim().length < 2 || addressUpdate.trim().length > 500) {
                                        alert("Địa chỉ phải có từ 2 đến 500 ký tự");
                                        return "/info";
                                    }
                                    else if (phoneNumberUpdate.trim().length < 8 || phoneNumberUpdate.trim().length > 10) {
                                        alert("Số điện thoại phải có từ 8 đến 10 ký tự");
                                        return "/info";
                                    }
                                    else if (nameUpdate.trim().length < 2 || nameUpdate.trim().length > 225) {
                                        alert("Tên phải có từ 2 đến 225 ký tự");
                                        return "/info";
                                    }
                                    $.ajax({
                                        type: "POST",
                                        url: "/updateinfo",
                                        data: {
                                            nameUpdate: nameUpdate,
                                            phonenumberUpdate:phoneNumberUpdate,
                                            AddressUpdate: addressUpdate,
                                        },
                                    });
                                    setTimeout(function() {
                                        window.location.href = "/info";
                                    }, 100);

                                }


                            </script>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="v-pills-change-password" role="tabpanel" aria-labelledby="v-pills-change-password-tab">
                        <!-- Change Password Content -->
                        <div class="p-4 border border-1 rounded-3">
                            <h2>Change Password</h2>

                            <div class="mb-3">
                                <label for="new-password" class="form-label">New Password:</label>
                                <input type="password" class="form-control" id="new-password">
                            </div>
                            <div class="mb-3">
                                <label for="confirm-password" class="form-label">Confirm New Password:</label>
                                <input type="password" class="form-control" id="confirm-password">
                            </div>
                            <button type="submit" class="btn btn-primary" onclick="OnClickChangePassword()">Change Password</button>
                        </div>
                    </div>
                    <script>
                        function OnClickChangePassword(){
                            var newpass = document.getElementById("new-password").value;
                            var conpass = document.getElementById("confirm-password").value;
                            if (newpass!=conpass){
                                alert("New Password và Confirm Password không giống nhau");
                                return "/info";
                            }
                            $.ajax({
                                type: "POST",
                                url: "/changepassword",
                                data: {
                                    newpass:newpass,
                                    conpass: conpass,
                                },
                            });
                            setTimeout(function() {
                                window.location.href = "/info";
                            }, 100);


                        }
                    </script>

                    <div class="tab-pane fade" id="v-pills-purchase-history" role="tabpanel" aria-labelledby="v-pills-purchase-history-tab">
                        <!-- Purchase History Content -->
                        <div class="card">
                            <div class="card-header">Purchase History</div>
                            <div class="card-body">
                                <table class="table">
                                    <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Product Name</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Review</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:set var="stt" value="1" />
                                    <c:forEach var="billinf" items="${billinfo}">
                                        <tr>
                                            <th scope="row"><c:out value="${stt}"/></th>
                                            <c:set var="stt" value="${stt + 1}"/>
                                            <td><a href="/productbook/${billinf.bookid.bookID}"><c:out value="${billinf.bookid.title}"/></a> </td>
                                            <td><c:out value="${billinf.number}"/> </td>
                                            <td><c:out value="${(billinf.bookid.price + billinf.bookid.typeID.price) * billinf.number}"/>đ </td>
                                            <c:set var="hasReview" value="false" />
                                            <c:forEach var="review" items="${reviews}">
                                                <c:if test="${billinf.bookid.bookID == review.bookID.bookID}">
                                                    <c:set var="hasReview" value="true" />
                                                    <td><a href="/editreview/${billinf.bookid.bookID}">Edit</a></td>
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${!hasReview}">
                                                <td><a href="/review/${billinf.billInfoID}">Review</a></td>
                                            </c:if>
                                        </tr>
                                    </c:forEach>

                                    </tbody>
                                </table>
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

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://code.jquery.com/jquery-3.7.1.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js"
        integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"
        integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</html>
