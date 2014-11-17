<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Home</title>
        <link rel="shortcut icon" href="img/favicon.ico" />

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

        <jsp:include page="WEB-INF/jspf/stylesheets.jspf"></jsp:include>

            <!-- jQuery (plugins em JavaScript) -->
            <script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
            <script type="text/javascript" src="js/bootstrap.min.js"></script>
        </head>

        <body>
        <jsp:include page="WEB-INF/jspf/header.jsp">
            <jsp:param name="rastro" value="<a href=\"./Home\" ><u>Home</u></a>" />
        </jsp:include>

        <jsp:include page="WEB-INF/jspf/menu.jspf"></jsp:include>

            <section class="container" style="margin-top: -15px;margin-bottom: -225px;">
                <div id="myCarousel" class="carousel slide" data-ride="carousel">

                    <!-- Indicações -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="1" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="2" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="3" class=""></li>
                        <li data-target="#myCarousel" data-slide-to="4" class=""></li>
                    </ol>
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <a href="#">
                                <img src="img/vw-brasilia-1977.jpg" alt="First slide">
                                <div class="carousel-caption">
                                    <h1 style="color: #fff">Sedan</h1> 
                                </div>  
                            </a>    
                        </div>
                        <div class="item">
                            <a href="adicionarPecas.jsp">
                                <img src="img/vw-brasilia-1977.jpg" alt="Second slide" style="weigh:1200px;">
                                <div class="carousel-caption">
                                    <h1 style="color: #fff">Hatch</h1>
                                </div>  
                            </a>

                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="img/vw-brasilia-1977.jpg" alt="Third slide">
                                <div class="carousel-caption">
                                    <h1 style="color: #fff">SUV</h1>
                                </div>
                            </a>        
                        </div>

                        <div class="item">
                            <a href="#">
                                <img src="img/vw-brasilia-1977.jpg" alt="Third slide">
                                <div class="carousel-caption">
                                    <h1 style="color: #fff">Cupê</h1>
                                </div>
                            </a>        
                        </div>
                        <div class="item">
                            <a href="#">
                                <img src="img/vw-brasilia-1977.jpg" alt="Third slide">
                                <div class="carousel-caption">
                                    <h1 style="color: #fff">Pickup</h1>
                                </div>
                            </a>        
                        </div>
                    </div>
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </section>

            <div class="well" style="margin-bottom: 20px; padding-top: 0px; padding-bottom: 0px;">
                <div class="container marketing">
                    <div class="row">
                        <div class="col-lg-4">
                            <a href="./ListarPecas?categoria=ACESSORIO">
                                <img class="img-circle" src="img/acessorio.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                            </a>
                            <h2>Acessórios</h2>
                        </div>
                        <div class="col-lg-4">
                            <a href="./ListarPecas?categoria=BATERIA">
                                <img class="img-circle" src="img/bateria.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                            </a>
                            <h2>Bateria</h2>
                        </div>
                        <div class="col-lg-4">
                            <a href="./ListarPecas?categoria=ELETRICA">
                                <img class="img-circle" src="img/eletrica.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                            </a>
                            <h2>Elétrica</h2>
                        </div>
                    </div><!-- /.row -->

                    <div class="row" style="margin-top: 50px;">
                        <div class="col-lg-4">
                            <a href="./ListarPecas?categoria=MECANICA">
                                <img class="img-circle" src="img/mecanica.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                            </a>
                            <h2>Mecânica</h2>
                        </div>
                        <div class="col-lg-4">
                            <a href="./ListarPecas?categoria=PNEUS+RODAS">
                                <img class="img-circle" src="img/pneu.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                            </a>
                            <h2>Pneus e rodas</h2>
                        </div>
                        <div class="col-lg-4">
                            <a href="./ListarPecas?categoria=SUSPENSAO">
                                <img class="img-circle" src="img/suspensao.jpg" alt="Generic placeholder image" style="width: 140px; height: 140px;">  
                            </a> 
                            <h2>Suspensão</h2>

                        </div>
                    </div><!-- /.row -->

                </div>
            </div>
        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
    </body>
</html>
