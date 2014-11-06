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
        <jsp:include page="WEB-INF/jspf/header.jsp">
            <jsp:param name="rastro" value="Login" />
        </jsp:include>

        <section class="container">
            <div class="container">
                <div class="row">
                    <div class="login">
                        <h1>Acesso ao Sistema</h1>
                        <form role="form" method="post" action="EfetuaLogin">
                            <div class="form-group">
                                <label for="txtLogin">Login
                                    <input type="text" id="txtLogin" name="login" value="" placeholder="Login ou CPF">
                                    <small id="errLogin"></small>
                                </label>
                                <label for="txtPassword">Senha
                                    <input type="password" id="txtPassword" name="password" value="" placeholder="Senha">
                                    <small id="errPassword"></small>
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
                    </div>

                </div>

            </div>
        </section>

        <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>

        <script>
            $(document).ready(function () {
                var login = document.getElementById('txtLogin');
                var password = document.getElementById('txtPassword');

                $('#txtLogin').keyup(function () {
                    var element = $(this);
                    var so_letras = /^([a-z]{5,15})/;

                    if (element.val() === "") {
                        $('#txtLogin').removeClass("campoValido");
                        $('#txtLogin').addClass("campoInvalido");
                        $('#txtLogin').css({"border-color": "red"});
                        $('#errLogin').addClass("textoCampoInvalido");
                        $('#errLogin').html("Login vazio!");
                    } else if (so_letras.test(element.val()) && element.val().length <= 15) {
                        $('#txtLogin').removeClass("campoInvalido");
                        $('#txtLogin').addClass("campoValido");
                        $('#txtLogin').css({"border-color": "green"});
                        $('#errLogin').removeClass("textoCampoInvalido");
                        $('#errLogin').html("");
                    } else {
                        $('#txtLogin').removeClass("campoValido");
                        $('#txtLogin').addClass("campoInvalido");
                        $('#txtLogin').css({"border-color": "red"});
                        $('#errLogin').addClass("textoCampoInvalido");
                        if (element.val().length < 5)
                            $('#errLogin').html("O login deve conter mais de 5 caracteres!");
                        else if (element.val().length > 15)
                            $('#errLogin').html("O login deve conter menos de 15 caracteres!");
                        else
                            $('#errLogin').html("Login deve conter apenas letras minúsculas!");

                        var valor = element.val().replace(/[^a-z]/, '');
                        element.val(valor);
                    }
                });

                $('#txtPassword').keyup(function () {
                    var element = $(this);
                    var so_letras = /^([a-z0-9]{8,15})/;

                    if (element.val() === "") {
                        $('#txtPassword').removeClass("campoValido");
                        $('#txtPassword').addClass("campoInvalido");
                        $('#txtPassword').css({"border-color": "red"});
                        $('#errPassword').addClass("textoCampoInvalido");
                        $('#errPassword').html("Senha vazia!");
                    } else if (so_letras.test(element.val()) && element.val().length <= 15) {
                        $('#txtPassword').removeClass("campoInvalido");
                        $('#txtPassword').addClass("campoValido");
                        $('#txtPassword').css({"border-color": "green"});
                        $('#errPassword').removeClass("textoCampoInvalido");
                        $('#errPassword').html("");
                    } else {
                        $('#txtPassword').removeClass("campoValido");
                        $('#txtPassword').addClass("campoInvalido");
                        $('#txtPassword').css({"border-color": "red"});
                        $('#errPassword').addClass("textoCampoInvalido");
                        if (element.val().length < 5)
                            $('#errPassword').html("A senha deve conter mais de 8 caracteres!");
                        else if (element.val().length > 15)
                            $('#errPassword').html("O login deve conter menos de 15 caracteres!");
                        else
                            $('#errPassword').html("A senha deve conter apenas letras minúsculas e números!");

                        var valor = element.val().replace(/[^a-z0-9]/, '');
                        element.val(valor);
                    }
                });
            });
        </script>
    </body>
</html>
