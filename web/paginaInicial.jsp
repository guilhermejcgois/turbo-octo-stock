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

    
        <jsp:include page="WEB-INF/jspf/header.jsp">
            <jsp:param name="rastro" value="<a href=\"/turbo-octo-stock/Home\" ><u>Home</u></a>" />
        </jsp:include>

        <section class = "container">
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
    
        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
    </body>
</html>
