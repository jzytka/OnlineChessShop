<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Title</title>

<%--    <script src="webjars/jquery/3.0.0/jquery.min.js"></script>--%>
<%--    <script src="webjars/bootstrap/4.3.1/js/bootstrap.min.js"></script>--%>
<%--    <link href="webjars/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet">--%>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<%--    <link rel="stylesheet" href="/resources/css/main.css"/>--%>
    <style>
        .photo {
            background-color: #5a6268;
            height: 200px;
            width: auto;
        }

        #offer {

        }

        #about-us {

        }

        .header-line {
            background-color: #6c757d;
            font-size: 30px;
            text-align: center;
            margin-bottom: 55px;
        }

        .block80 {
            height: 55px;
        }

        .contact {
            background-color: #6c757d;
            font-size: 30px;
            text-align: center;
        }
    </style>
</head>
<body>
    <%@ include file="/WEB-INF/fragments/header.jspf"%>

    <div style="height: 110px"></div>
    <section>
        <div class="container" style="height: 70%; width: auto">
            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li class="mx-2" data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active" style="background-color: #5a6268">
                        <img class="d-block w-100" src='...' alt="First slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Highest quality chessboards</h5>
                            <p>Carefully hand-carved wooden components</p>
                        </div>
                    </div>
                    <div class="carousel-item" style="background-color: #5a6268">
                        <img class="d-block w-100" src='...' alt="Second slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Amazingly fast shipping</h5>
                            <p>We ship our products up to 24 hours after receiving the payment</p>
                        </div>
                    </div>
                    <div class="carousel-item" style="background-color: #5a6268">
                        <img class="d-block w-100" src='...' alt="Third slide">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Excellent customer reviews</h5>
                            <p>We are constantly collecting opinions to improve our website</p>
                        </div>
                    </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
        </div>
    </section>
    <div style="height: 80px"></div>



        <%--    o co chodzi--%>
        <img src="resources/images/cat.jpg">
        <%--o co chodzi--%>



    <div class="block80" id="offer"></div>
    <div class="header-line border border-bottom border-top">Offer</div>
    <section>
        <div class="container">
            <div class="row">
                <c:forEach items="${categories}" var="category">
                    <div class="col-md-3">
                        <a href="/product/list/${category.id}">
                            <div class="card my-4">
            <%--                    <img src='/resources/img/chesspeppers.png' class="card-img-top" alt="...">--%>
                                    <div class="photo">#img</div>

                                <div class="card-body text-center">
                                    <p class="card-text">${category.name}</p>
                                </div>
                            </div>
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </section>


    <div class="block80" id="about-us"></div>
    <div class="header-line">About us</div>
    <section>
        <div class="container">
            <div>
                Toffee croissant chocolate sugar plum dragée tootsie roll pie. Wafer jelly cupcake marzipan fruitcake. Macaroon toffee cotton candy. Cupcake muffin lollipop pudding gummi bears bonbon halvah macaroon. Powder chocolate bar croissant. Cupcake soufflé cotton candy candy dessert muffin chupa chups jelly muffin. Jelly beans chupa chups oat cake apple pie. Powder soufflé toffee dessert croissant cake topping. Lollipop gingerbread cookie halvah chocolate topping. Carrot cake gingerbread pie candy canes pie croissant. Icing chupa chups sugar plum brownie bonbon cake. Tootsie roll cake pastry macaroon tiramisu chupa chups chocolate cake cake. Bear claw cookie lollipop jelly-o jelly wafer bonbon sugar plum brownie. Wafer macaroon marshmallow pudding.

                Caramels cookie biscuit chocolate cake chocolate cake muffin muffin pastry gummi bears. Oat cake powder pastry marshmallow sweet roll gummies gummi bears cookie chocolate. Carrot cake powder toffee tootsie roll toffee gummies. Danish apple pie powder brownie biscuit brownie gummies cake powder. Fruitcake jelly jujubes cotton candy tootsie roll marshmallow bonbon pudding. Lollipop pudding pastry pastry chocolate cookie. Topping soufflé cupcake pastry chupa chups candy canes sweet jujubes jelly-o. Oat cake sweet ice cream jujubes sugar plum sugar plum lemon drops icing. Brownie ice cream tart. Gummies tootsie roll cupcake brownie candy caramels sweet roll muffin marshmallow. Sugar plum jelly jelly-o candy dragée carrot cake halvah jelly. Tootsie roll caramels dessert dessert macaroon topping. Macaroon powder cake apple pie croissant sesame snaps cookie sugar plum.

                Sweet donut oat cake chupa chups soufflé candy canes. Gummi bears dessert liquorice candy canes pastry liquorice tart sweet roll dragée. Gummies macaroon ice cream. Apple pie topping gummies. Cheesecake lollipop dessert cotton candy biscuit. Sweet apple pie marzipan powder sesame snaps. Tiramisu sweet fruitcake soufflé jelly beans gummies gummi bears oat cake gummi bears. Powder gingerbread gummies lollipop powder chupa chups powder pie. Sugar plum bear claw sweet roll muffin. Chocolate candy wafer cookie. Oat cake sesame snaps danish sugar plum halvah carrot cake. Candy tart jelly beans cheesecake lemon drops topping. Cookie gingerbread dessert.

                Cake candy topping cheesecake sesame snaps cake tootsie roll sesame snaps. Danish bear claw biscuit muffin gummi bears bonbon chocolate cake. Carrot cake carrot cake jelly beans candy canes gingerbread candy chocolate liquorice marzipan. Biscuit candy canes icing cupcake croissant soufflé chupa chups powder bear claw. Pastry powder gingerbread bear claw. Jelly-o donut fruitcake. Gummies jelly beans cake liquorice. Donut cheesecake jujubes chocolate chocolate cake toffee marshmallow. Croissant danish lemon drops candy canes bonbon gummi bears bear claw croissant sugar plum. Gummi bears gingerbread donut sweet gingerbread gingerbread sesame snaps. Jujubes gingerbread ice cream topping ice cream sweet. Pie marshmallow oat cake marshmallow chocolate bar topping. Wafer gummies dragée macaroon sesame snaps cotton candy apple pie tiramisu sugar plum.
            </div>
        </div>
    </section>

    <div class="block80"></div>
    <div class="contact">Contact</div>
    <section id="contact" style="height: 150px; background-color: lightgrey">
        <div class="container">

        </div>
    </section>
    <%@ include file="/WEB-INF/fragments/footer.jspf"%>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>
