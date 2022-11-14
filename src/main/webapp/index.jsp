<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="icon" type="image/x-png" href="./asserts/favicon.png">
    <link rel="stylesheet" href="./styles/home.css">

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
<div class="content-outer">
    <h1>RUN TO THE SUN & SAVE</h1>
    <form action="/result-page.jsp" style="width: 100%">
    <div class="reservation-making-outer">
        <div class="inner">
            <div class="row">
                <div class="col-4 box">
                    <input type="search"
                           placeholder="Search here"
                           class="search-outer">
                </div>
                <div class="col-3 box date-outer">
                    <div class="date-from date-box">
                        <input type="text" id="from" name="from">
                    </div>
                    <div class="date-to date-box">
                        <input type="text" id="to" name="to">
                    </div>
                </div>
                <div class="col-3 box special-outer">
                    <div class="special-input-outer">
                        <select name="">
                            <option value="1">1 Adult</option>
                            <option value="2">2 Adults</option>
                            <option value="3">3 Adults</option>
                        </select>
                    </div>
                    <div class="special-input-outer">
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
                <div class="col-2 box">
                    <button type="submit" class="btn btn-primary btn-sm">
                        Search
                    </button>
                </div>
            </div>
        </div>
    </div>
    </form>
</div>
<div class="hotels-outer">
    <div class="row">
        <div class="col-4">
            <div class="image-outer" style="background: url('https://cf.bstatic.com/xdata/images/hotel/square600/87428762.webp?k=9a065fcd92168145d8c8358701662c76793535597b678efc8f6921c8e3c188e6&o=&s=1')"></div>
        </div>
        <div class="col-4">
            <div class="image-outer" style="background: url('https://cf.bstatic.com/xdata/images/hotel/square600/352170812.webp?k=75ffc5f9eb3f3cc394b901714c1544757b05849dbbdf30e4fc8c6df53931c131&o=&s=1')"></div>
        </div>
        <div class="col-4">
            <div class="image-outer" style="background: url('https://cf.bstatic.com/xdata/images/hotel/square600/13125860.webp?k=e148feeb802ac3d28d1391dad9e4cf1e12d9231f897d0b53ca067bde8a9d3355&o=&s=1')"></div>
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