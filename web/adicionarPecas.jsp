
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Home</title>
        <link rel="shortcut icon" href="img/favicon.ico" />

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

        <link rel="stylesheet" href="css/bootstrap.css" media="screen" />
        <link rel="stylesheet" href="css/Login.css" type="text/css">
        <link rel="stylesheet" href="css/normalize.min.css" type="text/css">
        <link rel="stylesheet" href="css/general.min.css" type="text/css">

        <!-- jQuery (plugins em JavaScript) -->
        <script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>

    <body>
        <div class="page-header" style="background-color: #eee">
            <h1>ESTOQUE DE PEÇAS || IMAGEM AQUI</h1> 
            <h2><small>Modulo de estoque</small></h2>
            <small>LOGIN >> <a href="paginaInicial.jsp">HOME</a> >> <a href="adicionarPecas.jsp"> ADICIONAR PEÇAS</a></small>
        </div>

        <section class = "container">
            <nav class="navbar navbar-default navbar-static-top" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="paginaInicial.jsp">Peças</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="#">Adicionar Peças</a></li>
                        <li><a href="#">Remover Peças</a></li>
                        <li><a href="#">Alterar peças</a></li>
                        <li><a href="#">Consultar peças</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">Peças por Categoria <span class="caret"></span></a>
                            <ul class="dropdown-menu" role="menu">
                                <li><a href="#">Elétrica</a></li>
                                <li><a href="#">Bateria</a></li>
                                <li><a href="#">Mecânica</a></li>
                                <li class="divider"></li>
                                <li><a href="#">Acessorios</a></li>
                            </ul>
                        </li>
                    </ul>
                    <form class="navbar-form navbar-left" role="search">
                        <div class="form-group">
                            <input type="text" class="form-control" style="width: 500px;" placeholder="Busca rápida de peças">
                            <button type="submit" class="btn btn-default">Buscar</button>    
                        </div>
                        
                    </form>

                </div><!-- /.navbar-collapse -->

            </nav>
        </section>
        <footer>
            <div class="well well-sm">
                <h5>Concessionárias BLA BLA</h5>
                <a>tchurururu</a>
            </div>
        </footer>
    </body>
</html>
