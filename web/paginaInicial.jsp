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
            <!-- Teste simples para saber se os cookies foram preservados. -->
        <%= request.getCookies().length%>
        <jsp:include page="WEB-INF/jspf/header.jsp">
            <jsp:param name="rastro" value="<a href=\"/turbo-octo-stock/Home\" ><u>Home</u></a>" />
        </jsp:include>

        <header>
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="paginaInicial.jsp">Home</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li><a href="adicionarPecas.jsp">Adicionar Peças</a></li>
                        <li><a href="removerPecas.jsp">Remover Peças</a></li>
                        <li><a href="alterarPecas.jsp">Alterar peças</a></li>
                        <li><a href="consultarPecas.jsp">Consultar peças</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Peças por Categoria <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="listarPecas.jsp?categoria=eletrica">Elétrica</a></li>
                                <li><a href="listarPecas.jsp?categoria=bateria">Bateria</a></li>
                                <li><a href="listarPecas.jsp?categoria=mecanica">Mecânica</a></li>
                                <li class="divider"></li>
                                <li><a href="listarPecas.jsp?categoria=acessorio">Acessorios</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" style="width: 400px;" placeholder="Busca rápida de peças">
                            <button type="submit" class="btn btn-default">Buscar</button>    
                        </div>

                    </form>

                </div><!-- /.navbar-collapse -->

            </nav>
        </header>
        <section class="container" style="margin-top: -15px;margin-bottom: -225px;">
            <div id="myCarousel" class="carousel slide" data-ride="carousel">

                <!-- Indicações -->
                <ol class="carousel-indicators">
                    <li data-target="#myCarousel" data-slide-to="0" class=""></li>
                    <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
                    <li data-target="#myCarousel" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner" role="listbox">
                    <div class="item active">
                        <a href="#">
                            <img src="img/vw-brasilia-1977.jpg" alt="First slide">
                            <div class="carousel-caption">
                                <h1 style="color: #fff">Veículos.</h1> 
                            </div>  
                        </a>    
                    </div>
                    <div class="item">
                        <a href="adicionarPecas.jsp">
                            <img src="img/vw-brasilia-1977.jpg" alt="Second slide" style="weigh:1200px;">
                            <div class="carousel-caption">
                                <h1 style="color: #fff">Outra imagem.</h1>
                            </div>  
                        </a>

                    </div>
                    <div class="item">
                        <a href="#">
                            <img src="img/vw-brasilia-1977.jpg" alt="Third slide">
                            <div class="carousel-caption">
                                <h1 style="color: #fff">Mais uma</h1>
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

        <div class="well" style="margin-bottom: 20px;">
            <div class="container marketing">
                <div class="row">
                    <div class="col-lg-4">
                        <a href="#">
                            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                        </a>
                        <h2>Coisa 1</h2>


                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <a href="#">
                            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style="width: 140px; height: 140px;">  
                        </a> 
                        <h2>Coisa 2</h2>

                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <a href="#">
                            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style="width: 140px; height: 140px;">  
                        </a>
                        <h2>Coisa 3</h2>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

                <div class="row">
                    <div class="col-lg-4">
                        <a href="#">
                            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style="width: 140px; height: 140px;">
                        </a>
                        <h2>Coisa 4</h2>


                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <a href="#">
                            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style="width: 140px; height: 140px;">  
                        </a> 
                        <h2>Coisa 5</h2>

                    </div><!-- /.col-lg-4 -->
                    <div class="col-lg-4">
                        <a href="#">
                            <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style="width: 140px; height: 140px;">  
                        </a>
                        <h2>Coisa 6</h2>
                    </div><!-- /.col-lg-4 -->
                </div><!-- /.row -->

            </div>
        </div>
        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
    </body>
</html>
