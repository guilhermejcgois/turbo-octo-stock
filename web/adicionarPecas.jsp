<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Cadastrar Peças</title>
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
                       <a href=\"/turbo-octo-stock/AdicionarPecas\"><u>Cadastrar Peças</u></a>
                       " />
        </jsp:include>

        <jsp:include page="WEB-INF/jspf/menu.jspf"></jsp:include>

            <section class = "container" style="margin-top: 0px; width: 1200px;">
                <div class ="row">
                    <div class="col-lg-12">
                        <div class="well well-lg">
                            <div class ="row">
                                <div class="col-lg-12">
                                    <form>
                                        <div class="input-group">
                                            <span class="input-group-addon">Código</span>
                                            <input type="text" class="form-control" style="width: 200px;" placeholder="Insira o código da peça">
                                            <span class="input-group-addon">Nome</span>
                                            <input type="text" class="form-control" style="width: 500px;" placeholder="Insira o nome da peça">
                                        </div>
                                </div>
                                <div class="col-lg-10" style="margin-top:40px;">
                                    <div class="input-group">
                                        <span class="input-group-addon">Categoria</span>
                                        <input type="text" class="form-control" style="width: 200px;" placeholder="Insira a categoria da peça">
                                        <span class="input-group-addon">Modelo do veículo</span>
                                        <input type="text" class="form-control" style="width: 200px;" placeholder="Insira o modelo de veículo da peça">

                                        <span class="input-group-addon">Valor</span>
                                        <input type="text" class="form-control" style="width: 100px;" placeholder="Insira o valor da peça">

                                    </div>
                                </div>
                                <div class="col-lg-8" style="margin-top:40px;">
                                    <div class="input-group">
                                        <span class="input-group-addon">Peso</span>
                                        <input type="text" class="form-control" style="width: 200px;" placeholder="Insira o peso da peça">
                                        <span class="input-group-addon">Dimensão</span>
                                        <input type="text" class="form-control" style="width: 200px;" placeholder="Insira a dimensão da peça">

                                    </div> 
                                </div>
                                <div class="col-lg-10" style="margin-top:40px;">
                                    <div class="input-group">
                                        <span class="input-group-addon">Descrição</span>
                                        <textarea name="comentário" rows="5" cols="10" class="form-control">Insira a descrição.</textarea>
                                    </div>
                                </div>

                                <div class="col-lg-10" style="margin-top:40px;">
                                    <form method="POST" enctype="multipart/form-data" action="fup.cgi">
                                        <div class="input-group">


                                            Insira imagem:<input type="file" name="Insira imagem"><br/>


                                        </div>
                                        <button type="submit" class="btn btn-default">Upload</button>
                                    </form>
                                </div> 
                                <div class="col-lg-10" style="margin-top:40px; position: relative; margin-left: 860px;">
                                    <button type="button" class="btn btn-default" style="color: #357ebd; background: #cde5ef;">Enviar</button>
                               
                                </div>
                                   </form>
                                  
                            </div>
                        </div>
                    </div>
                </div>
            </section>

        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
    </body>
</html>
