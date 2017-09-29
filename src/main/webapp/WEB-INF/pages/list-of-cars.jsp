<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
            <title>Lista dos Times</title>
    </head>
    <body style="position: absolute; top: 50%; left: 50%; transform: translateY(-50%) translateX(-50%)">
        <div class="well" align="center">
            <h1>Lista dos Times</h1>
            <table border="1px" cellpadding="0" cellspacing="0" class="table table-bordered table-striped">
                <thead>
                    <tr>
                        <th width="10%">ID</th>
                        <th width="15%">Nome</th>
                        <th width="10%">Classificação</th>
                        <th width="10%">Acões</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="team" items="${teams}">
                        <tr>
                            <td><b>${team.id}</b></td>
                            <td><b>${team.name}</b></td>
                            <td><b>${team.rating}</b></td>
                            <td align="center">
                                <a href="${pageContext.request.contextPath}/team/edit/${team.id}.html" class="btn btn-primary">Editar</a>
                                <p></p>
                                <a href="${pageContext.request.contextPath}/team/delete/${team.id}.html" class="btn btn-danger">Remover</a>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
                <p><a href="${pageContext.request.contextPath}/index.html" class="btn btn-info">Página Inicial</a></p>
        </div>
    </body>
</html>