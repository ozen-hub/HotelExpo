<%--
  Created by IntelliJ IDEA.
  User: Hasika
  Date: 11/9/2022
  Time: 10:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="./styles/result-page.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">


    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">


    <title>HotelsExpo | HOME</title>

</head>
<body>
<%--header--%>
<jsp:include page="MainHader.jsp"/>
<%--header--%>

<%--content--%>
<div class="main-outer">
    <div class="row" style="margin: 0">
        <div class="left-outer context col-3">
            <div class="search-wrapper">
                <div class="row" style="margin: 0">
                    <div class="col-12 input-outer">
                        <input type="search"
                               placeholder="Search here"
                               class="search-outer">
                    </div>
                    <div class="col-12 input-outer  date-outer">
                        <div class="date-from date-box">
                            <input type="text" id="from" name="from">
                        </div>
                        <div class="date-to date-box">
                            <input type="text" id="to" name="to">
                        </div>
                    </div>
                    <div class="col-12 input-outer  special-outer">
                        <div class="special-input-outer" style="margin-right: 2px">
                            <select name="">
                                <option value="1">1 Adult</option>
                                <option value="2">2 Adults</option>
                                <option value="3">3 Adults</option>
                            </select>
                        </div>
                        <div class="special-input-outer" style="margin-right: 2px">
                            <select name="">
                                <option value="0">0 Child</option>
                                <option value="1">1 Child</option>
                                <option value="2">2 Child</option>
                                <option value="3">3 Child</option>
                            </select>
                        </div>
                        <div class="special-input-outer">
                            <select name="">
                                <option value="1">1 Room</option>
                                <option value="2">2 Rooms</option>
                                <option value="3">3 Rooms</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-12 input-outer">
                        <button type="submit" class="btn btn-primary btn-sm">
                            Search
                        </button>
                    </div>
                </div>


            </div>
            <div class="filter-wrapper">
                <h5>Fun things to do</h5>
                <ul>
                    <li><input type="checkbox"> Hiking</li>
                    <li><input type="checkbox"> Walking tours</li>
                    <li><input type="checkbox"> Spa facilities</li>
                    <li><input type="checkbox"> Evening entertainment</li>
                </ul>
            </div>
            <div class="filter-wrapper">
                <h5>Property Type</h5>
                <ul>
                    <li><input type="checkbox"> Hotels</li>
                    <li><input type="checkbox"> Guesthouses</li>
                    <li><input type="checkbox"> Homestays</li>
                    <li><input type="checkbox"> Apartments</li>
                </ul>
            </div>
        </div>
        <div class="right-outer context col-9">
            <p class="alert alert-dark">
                2500 Properties Found
            </p>
            <div class="result-outer">
                <div class="result-inner">
                    <div class="result-inner-left">
                        <img class="img-thumbnail"
                        src="https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                        alt="">
                    </div>
                    <div class="result-inner-right">
                        <div class="details">
                            <h4>The Summit</h4>
                            <p class="desc">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate expedita
                                illum, itaque maxime praesentium voluptates! Adipisci asperiores autem commodi ducimus
                                id odio omnis, quam temporibus tenetur totam vero voluptatum.
                            </p>
                            <p class="alert alert-danger">
                                Deals are available
                            </p>
                        </div>
                        <div class="button">
                            <button class="btn btn-primary btn-sm">
                                Book Now
                            </button>
                        </div>
                    </div>
                </div>
                <div class="result-inner">
                    <div class="result-inner-left">
                        <img class="img-thumbnail"
                             src="https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                             alt="">
                    </div>
                    <div class="result-inner-right">
                        <div class="details">
                            <h4>The Summit</h4>
                            <p class="desc">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate expedita
                                illum, itaque maxime praesentium voluptates! Adipisci asperiores autem commodi ducimus
                                id odio omnis, quam temporibus tenetur totam vero voluptatum.
                            </p>
                            <p class="alert alert-danger">
                                Deals are available
                            </p>
                        </div>
                        <div class="button">
                            <button class="btn btn-primary btn-sm">
                                Book Now
                            </button>
                        </div>
                    </div>
                </div>
                <div class="result-inner">
                    <div class="result-inner-left">
                        <img class="img-thumbnail"
                             src="https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                             alt="">
                    </div>
                    <div class="result-inner-right">
                        <div class="details">
                            <h4>The Summit</h4>
                            <p class="desc">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate expedita
                                illum, itaque maxime praesentium voluptates! Adipisci asperiores autem commodi ducimus
                                id odio omnis, quam temporibus tenetur totam vero voluptatum.
                            </p>
                            <p class="alert alert-danger">
                                Deals are available
                            </p>
                        </div>
                        <div class="button">
                            <button class="btn btn-primary btn-sm">
                                Book Now
                            </button>
                        </div>
                    </div>
                </div>
                <div class="result-inner">
                    <div class="result-inner-left">
                        <img class="img-thumbnail"
                             src="https://images.unsplash.com/photo-1615460549969-36fa19521a4f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mzl8fGhvdGVsfGVufDB8fDB8fA%3D%3D&w=1000&q=80"
                             alt="">
                    </div>
                    <div class="result-inner-right">
                        <div class="details">
                            <h4>The Summit</h4>
                            <p class="desc">
                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aliquam cupiditate expedita
                                illum, itaque maxime praesentium voluptates! Adipisci asperiores autem commodi ducimus
                                id odio omnis, quam temporibus tenetur totam vero voluptatum.
                            </p>
                            <p class="alert alert-danger">
                                Deals are available
                            </p>
                        </div>
                        <div class="button">
                            <button class="btn btn-primary btn-sm">
                                Book Now
                            </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--content--%>

<%--footer--%>
<jsp:include page="MainFooter.jsp"/>
<%--footer--%>


<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
<script src="https://code.jquery.com/ui/1.13.1/jquery-ui.min.js"
        integrity="sha256-eTyxS0rkjpLEo16uXTS0uVCS4815lc40K2iVpWDvdSY=" crossorigin="anonymous"></script>
<script src="./js/home.js"></script>
</body>
</html>
