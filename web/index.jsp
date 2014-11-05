<%-- 
    Document   : index
    Author     : ggois
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Login</title>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
        
        <link href="css/bootstrap.css" rel="stylesheet" media="screen" />
        <link rel="stylesheet" href="css/login.css" type="text/css">
        <link rel="stylesheet" href="css/normalize.min.css" type="text/css">
        <link rel="stylesheet" href="css/general.min.css" type="text/css">
        
        <!-- jQuery (plugins em JavaScript) -->
        <script type="text/javascript" src="https://code.jquery.com/jquery.js"></script>
        <script type="text/javascript" src="js/bootstrap.min.js"></script>
    </head>

    <body>
        <header class="page-header">
            <h1>ESTOQUE DE PEÇAS || IMAGEM AQUI</h1> 
            <h2><small>Modulo de estoque</small></h2>
            <small>Rastro</small>
        </header>

        <section class="container">
            <div class="container">
                <div class="row">
                    <div class="login">
                        <h1>Acesso ao Sistema</h1>
                        <form role="form" method="post" action="EfetuaLogin">
                            <div class="form-group">
                                <label for="txtLogin">Login</label>
                                <p><input type="text" id="txtLogin" value="" placeholder="Login ou CPF"></p>
                                <label for="txtPassword">Senha</label>
                                <p><input type="password" id="txtPassword" value="" placeholder="Senha"></p>
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
        
        <footer>
            <div class="well well-sm">
                <h5>Concessionárias BLÁBLÁ</h5>
                <a>tchurururu</a>
            </div>
        </footer>
        
        <script>
            $(document).ready(function() {
                var login = document.getElementById('txtLogin');
                var password = document.getElementById('txtPassword');
                
                $('#txtLogin').keyup(function() {
                    var element = $(this);
                    var so_letras = /^[a-z]{5,16}$/;
                    
                    if (so_letras.test(element.val())) {
                        $('#txtLogin').css("border-color", "#f00");
                    } else {
                        $('#txtLogin').css("border-color", "#0f0");
                    }
                });
                
                var valor = element.val().replace(so_letras, '');
                element.val(valor);
            });
        </script>
    </body>
</html>
