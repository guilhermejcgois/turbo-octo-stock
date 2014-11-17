<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Estoque de Pecas :: Consultar Peças</title>
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
                   <a href=\"/turbo-octo-stock/ConsultarPecas?tipoConsulta=${param['tipoConsulta']}\"><u>Consultar Peças</u></a>
                   " />
    </jsp:include>

    <jsp:include page="WEB-INF/jspf/menu.jspf"></jsp:include>

    <section class = "container" style="margin-top: 10px;">
        <% String tipoConsulta = request.getParameter("tipoConsulta");
        if(tipoConsulta.equals("CODIGO")){
            %>
           <jsp:include page="WEB-INF/jspf/consulta/consultaCodigo.jsp"></jsp:include>     
        <%}%>
        <%
        if(tipoConsulta.equals("NOMEMODELO")){
            %>
          <jsp:include page="WEB-INF/jspf/consulta/consultaNomeModelo.jsp"></jsp:include>
        <%}%>
        <%
        if(tipoConsulta.equals("CATEGORIAMODELO")){
            %>
            
          <jsp:include page="WEB-INF/jspf/consulta/consultaCategoriaModelo.jsp"></jsp:include>
          <%}%>
       
    </section>

    <jsp:include page="WEB-INF/jspf/footer.jspf"></jsp:include>
    </body>
</html>


