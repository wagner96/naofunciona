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
            <title>Página Inicial</title>
    </head>
    <body style="position: absolute; top: 50%; left: 50%; transform: translateY(-50%) translateX(-50%)">
        <div class="well" align="center">

            <h1><font color="#00fc08">SGCAR</font></h1>
            <p>          
                ${message}<br/>
                <a href="${pageContext.request.contextPath}/car/add.html" class="btn btn-primary">Adicionar novo Veículo</a><br/>
                <br>
                <a href="${pageContext.request.contextPath}/car/list.html" class="btn btn-info">Lista de Veículos</a><br/>
            </p>
        </div>
    </body>
</html>