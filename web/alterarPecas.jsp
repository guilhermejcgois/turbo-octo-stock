<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Alterar Peças</title>
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
            <jsp:param name="rastro" value="
                       <a href=\"/turbo-octo-stock/Home\">Home</a> > 
                       <a href=\"/turbo-octo-stock/AlterarPecas\"><u>Alterar Peças</u></a>
                       " />
        </jsp:include>

        <jsp:include page="WEB-INF/jspf/menu.jspf"></jsp:include>

        <section class = "container"style="margin-top: 10px;">
            <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">Coloque o código da peça</h3>
                    </div>
                    <div class="panel-body">
                        <form class="navbar-form navbar-left" role="search">
                            <div class="form-group">
                                <input type="text" class="form-control" style="width: 400px;" placeholder="Search">
                            </div>
                            <button type="submit" class="btn btn-default">Pesquisar</button>
                        </form>
                    </div>
                </div>
        </section>

        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
    </body>
</html>
