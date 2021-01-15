<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Retención</h1>
        <hr>
        <form action="calculaRetencion.jsp">
            <p>Empleado/a: </p> <input type="text" name="nombre"><br>
            <p>Salario bruto: </p> <input type="number" name="salario">
            <hr>
            <input type="submit" value="Calcular retención">
        </form>
    </body>
</html>
