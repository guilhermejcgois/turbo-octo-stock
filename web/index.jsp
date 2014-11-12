<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Login</title>
        <link rel="shortcut icon" href="img/favicon.ico" />

        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">

        <jsp:include page="WEB-INF/jspf/stylesheets.jspf"></jsp:include>

            <!-- jQuery (plugins em JavaScript) -->
            <script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
            <script type="text/javascript" src="js/bootstrap.min.js"></script>
        </head>

        <body>
        <jsp:include page="WEB-INF/jspf/header.jspf">
            <jsp:param name="rastro" value="Login" />
        </jsp:include>

        <section class="container">
                <div class="row">
                    <div class="login">
                        <h1>Acesso ao Sistema</h1>
                        <form role="form" method="post" action="LoginController">
                            <div class="form-group">
                                <label for="txtNomeUsuario">Login       
                                    <input type="text" id="txtNomeUsuario" style="margin-left: 10px;"name="login" placeholder="Usuário ou CPF">
                                    <small id="errNomeUsuario"></small>
                                </label>
                                <label for="txtSenhaUsuario">Senha
                                    <input type="password" id="txtSenhaUsuario" name="senha" placeholder="Senha">
                                    <small id="errSenhaUsuario"></small>
                                </label>
                                <p class="remember_me">
                                    <label><input type="checkbox" name="remember_me" id="remember_me">Lembre-me</label>
                                </p>
                            </div>
                            <p class="submit"><input type="submit" name="commit" value="Login"></p>
                        </form>
                        <div class="login-help">
                            <p><a href="#">Esqueci minha senha.</a></p>
                            <p><a href="#">Cadastro de Acesso.</a></p>
                        </div>
                        <%
                            String mensagem = request.getParameter("mensagem");
                            
                            if (mensagem != null)
                                out.println(mensagem);
                        %>
                    </div>
            </div>
        </section>

        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>

        <script>
            $(document).ready(function () {
                var usuario = document.getElementById('txtUsuario');
                var password = document.getElementById('txtSenha');

                $('#txtNomeUsuario').keyup(function () {
                    var element = $(this);
                    var so_letras = /^([a-z]{5,15})/;

                    if (element.val() === "") {
                        $('#txtNomeUsuario').removeClass("campoValido");
                        $('#txtNomeUsuario').addClass("campoInvalido");
                        $('#txtNomeUsuario').css({"border-color": "red"});
                        $('#errNomeUsuario').addClass("textoCampoInvalido");
                        $('#errNomeUsuario').html("Login vazio!");
                    } else if (so_letras.test(element.val()) && element.val().length <= 15) {
                        $('#txtNomeUsuario').removeClass("campoInvalido");
                        $('#txtNomeUsuario').addClass("campoValido");
                        $('#txtNomeUsuario').css({"border-color": "green"});
                        $('#errNomeUsuario').removeClass("textoCampoInvalido");
                        $('#errNomeUsuario').html("");
                    } else {
                        $('#txtNomeUsuario').removeClass("campoValido");
                        $('#txtNomeUsuario').addClass("campoInvalido");
                        $('#txtNomeUsuario').css({"border-color": "red"});
                        $('#errNomeUsuario').addClass("textoCampoInvalido");
                        if (element.val().length < 5)
                            $('#errNomeUsuario').html("O login deve conter mais de 5 caracteres!");
                        else if (element.val().length > 15)
                            $('#errNomeUsuario').html("O login deve conter menos de 15 caracteres!");
                        else
                            $('#errNomeUsuario').html("Login deve conter apenas letras minúsculas!");

                        var valor = element.val().replace(/[^a-z]/, '');
                        element.val(valor);
                    }
                });

                $('#txtSenhaUsuario').keyup(function () {
                    var element = $(this);
                    var so_letras = /^([a-z0-9]{8,15})/;

                    if (element.val() === "") {
                        $('#txtSenhaUsuario').removeClass("campoValido");
                        $('#txtSenhaUsuario').addClass("campoInvalido");
                        $('#txtSenhaUsuario').css({"border-color": "red"});
                        $('#errSenhaUsuario').addClass("textoCampoInvalido");
                        $('#errSenhaUsuario').html("Senha vazia!");
                    } else if (so_letras.test(element.val()) && element.val().length <= 15) {
                        $('#txtSenhaUsuario').removeClass("campoInvalido");
                        $('#txtSenhaUsuario').addClass("campoValido");
                        $('#txtSenhaUsuario').css({"border-color": "green"});
                        $('#errSenhaUsuario').removeClass("textoCampoInvalido");
                        $('#errSenhaUsuario').html("");
                    } else {
                        $('#txtSenhaUsuario').removeClass("campoValido");
                        $('#txtSenhaUsuario').addClass("campoInvalido");
                        $('#txtSenhaUsuario').css({"border-color": "red"});
                        $('#errSenhaUsuario').addClass("textoCampoInvalido");
                        if (element.val().length < 5)
                            $('#errSenhaUsuario').html("A senha deve conter mais de 8 caracteres!");
                        else if (element.val().length > 15)
                            $('#errSenhaUsuario').html("O login deve conter menos de 15 caracteres!");
                        else
                            $('#errSenhaUsuario').html("A senha deve conter apenas letras minúsculas e números!");

                        var valor = element.val().replace(/[^a-z0-9]/, '');
                        element.val(valor);
                    }
                });
            });
        </script>
    </body>
</html>
