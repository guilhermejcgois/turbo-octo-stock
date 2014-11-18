
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Cadastrar Peças</title>
        <link rel="shortcut icon" href="img/favicon.ico" />

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

        <link href="css/bootstrap.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" href="css/login.css" type="text/css">
        <link rel="stylesheet" href="css/normalize.css" type="text/css">
        <link rel="stylesheet" href="css/estilo.css" type="text/css">


        <!-- jQuery (plugins em JavaScript) -->
        <script type="text/javascript" src="js/jquery/jquery.js"></script>
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
                        <div class="panel panel-default">
                            <div class="panel-heading">

                                <h3 class="panel-title">Cadastro de pe&ccedilas</h3>
                            </div>
                            <div class="panel-body">
                                <form method="post" id="formCadastroPecas" action="Home" >
                                    <div class ="row">

                                        <div class="col-lg-12" style="margin-top: 40px;">
                                            <div class="col-md-12">
                                                <div class="input-group">
                                                    <span class="input-group-addon">Código*</span>
                                                    <input id="txtCodigo" name="codigo" type="text" class="form-control" style="width: 218px;" placeholder="Insira o código da peça" required>
                                                    <span class="input-group-addon">Nome*</span>
                                                    <input id="txtNome" name="nome" type="text" class="form-control" style="width: 500px;" placeholder="Insira o nome da peça">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12" style="margin-top:40px;">
                                            <div class="col-md-12"></div>
                                            <div class="input-group">
                                                <span class="input-group-addon">Categoria</span>
                                                <select id="cmbCategoria" name="categoria" class="form-control" style="width: 200px;">
                                                    <option value="ACESSORIO">Acessório</option>
                                                    <option value="BATERIA">Bateria</option>
                                                    <option value="ELETRICA">Elétrica</option>
                                                    <option value="MECANICA0">Mecânica</option>
                                                    <option value="PNEUS_E_RODAS">Pneus e Rodas</option>
                                                    <option value="SUSPENSAO">Suspensão</option>
                                                </select>
                                                <span class="input-group-addon">Modelo do veículo</span>
                                                <input id="txtModelo" name="modelo" type="text" class="form-control" style="width: 200px;" placeholder="Insira o modelo de veículo da peça">

                                                <span class="input-group-addon">Valor*</span>
                                                <input id="txtValor" name="valor" type="text" class="form-control" style="width: 100px;" placeholder="Insira o valor da peça">
                                            </div>
                                        </div>
                                    </div>
                            
                            <div class="col-lg-12" style="margin-top:40px;">
                                <div class="col-md-11">
                                    <div class="input-group">
                                        <span class="input-group-addon">Peso</span>
                                        <input id="txtPeso" name="peso" type="text" class="form-control" style="width: 200px;" placeholder="Insira o peso da peça">
                                        <span class="input-group-addon">Dimensão</span>
                                        <input id="txtDimensao" name="dimensao" type="text" class="form-control" style="width: 200px;" placeholder="Insira a dimensão da peça">
                                    </div> 
                                </div>
                            </div>
                            <div class="col-lg-10" style="margin-top:40px;">
                                <div class="input-group">
                                    <span class="input-group-addon">Descrição</span>
                                    <textarea id="txtDescricao" name="comentario" rows="5" cols="10" class="form-control">Insira a descrição.</textarea>
                                </div>

                                <div class="col-lg-10" style="margin-top:40px;">
                                    <div class="input-group">
                                        Insira imagem:<input id="imagem" name="imagem" type="file"><br/>
                                    </div>
                                </div> 
                                <div class="col-lg-10" style="margin-top:40px; position: relative; margin-left: 860px;">
                                    <button id="submit" type="button" class="btn btn-default" style="color: #357ebd; background: #cde5ef;">Enviar</button>

                                </div>

                                <div class="col-lg-12">
                                    * Itens obrigatórios
                                </div>
                            </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>

        </section>

    <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>

    <script type="text/javascript">
        $(document).ready(function () {
            $("#txtCodigo").blur(function () {
                var element = $(this);
                if (element.val() === "") {
                    element.removeClass("CampoValido");
                    element.addClass("CampoInvalido");
                    element.css({"border-color": "red"});
                } else {
                    element.removeClass("CampoInvalido");
                    element.addClass("CampoValido");
                    element.css({"border-color": "green"});
                }
            });

            $("#txtNome").blur(function () {
                var element = $(this);
                if (element.val() === "") {
                    element.removeClass("CampoValido");
                    element.addClass("CampoInvalido");
                    element.css({"border-color": "red"});
                } else {
                    element.removeClass("CampoInvalido");
                    element.addClass("CampoValido");
                    element.css({"border-color": "green"});
                }
            });

            $("#txtValor").blur(function () {
                var element = $(this);
                if (element.val() === "") {
                    element.removeClass("CampoValido");
                    element.addClass("CampoInvalido");
                    element.css({"border-color": "red"});
                } else {
                    element.removeClass("CampoInvalido");
                    element.addClass("CampoValido");
                    element.css({"border-color": "green"});
                }
            });

            $("#submit").click(function () {
                var msgCamposObrigatorios = "Faltam preencher os seguintes campos:";
                var faltaCampo = false;

                if ($("#txtCodigo").val() === "") {
                    msgCamposObrigatorios += "\n\tCódigo";
                    faltaCampo = true;
                }

                if ($("#txtNome").val() === "") {
                    msgCamposObrigatorios += "\n\tNome";
                    faltaCampo = true;
                }

                if ($("#txtValor").val() === "") {
                    msgCamposObrigatorios += "\n\tValor";
                    faltaCampo = true;
                }

                if (faltaCampo) {
                    alert(msgCamposObrigatorios);
                } else {
                    $("#formCadastroPecas").submit();
                }
            });
        });
    </script>
</body>
</html>
