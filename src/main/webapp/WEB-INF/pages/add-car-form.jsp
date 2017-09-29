<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<?xml version="1.0" encoding="ISO-8859-1" ?>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
            <title>Novo Time</title>
    </head>
    <body style="position: absolute; top: 50%; left: 50%; transform: translateY(-50%) translateX(-50%)">
        <div class="well" align="center">
            <div class="form-horizontal">

                <h1>Adicionar Time</h1>
                <p>Preencha o formulário abaixo!!!</p>
                <form:form method="POST" commandName="team" action="${pageContext.request.contextPath}/team/add.html">
                    <div class="form-group">
                        Nome
                        </br>
                        <form:input path="name" />
                    </div>
                    <div class="form-group">
                        Classificação
                        </br>
                        <form:input type="number" path="rating" />
                    </div>
                    <input class="btn btn-success" type="submit" value="Salvar" />        
                </form:form>
                </br>

                <p><a href="${pageContext.request.contextPath}/index.html" class="btn btn-info">Página inicial</a></p>
            </div>
        </div>
    </body>
</html>