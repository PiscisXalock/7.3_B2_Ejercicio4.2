<%-- 
    Document   : calculaRetencion.jsp
    Created on : 15-ene-2021, 21:25:47
    Author     : Usuario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            String nombre = request.getParameter("nombre");
            float salarioBruto = Float.parseFloat(request.getParameter("salario"));
            float retencion = 0;
            float cuotaRetencion = 0;
            float salarioNeto = 0;
            if(salarioBruto < 1000){
                retencion = 0;
                salarioNeto = salarioBruto;
            } else if(salarioBruto >= 1000 && salarioBruto <3000){
                retencion = 10;
                cuotaRetencion = ((salarioBruto * retencion)/100);
                salarioNeto = (salarioBruto - cuotaRetencion);
            } else if(salarioBruto >= 3000){
                retencion = 20;
                cuotaRetencion = ((salarioBruto * retencion)/100);
                salarioNeto = (salarioBruto - cuotaRetencion);
            }
        %>
        <h1>Retención de <%= nombre %>.</h1>
        <hr>
        <p>Salario bruto: <%= salarioBruto %>€.</p>
        <p>Retención del: <%= retencion %>%.</p>
        <p>Salario neto: <%= salarioNeto %>€.</p>
    </body>
</html>
