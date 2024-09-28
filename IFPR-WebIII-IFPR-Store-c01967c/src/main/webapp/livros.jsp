<%@ page import="java.util.List" %>
<%@ page import="br.edu.ifpr.foz.ifprstore.DateUtils" %>
<%@ page import="br.edu.ifpr.foz.ifprstore.models.Livro" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% List<Livro> livros = (List<Livro>) request.getAttribute("livros"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Administração de Livros</title>
    <!-- Materialize CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" rel="stylesheet">
    <!-- Google Material Icons -->
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <style>
        body {
            background-color: #f5f5f5;
        }
        .navbar {
            background-color: #26a69a;
        }
        .main-content {
            padding: 20px;
        }
        .table-responsive {
            margin-top: 20px;
        }
        .btn-small {
            margin-right: 10px;
        }
        h1 {
            font-size: 2.5rem;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="nav-wrapper container">
        <a href="index.jsp" class="brand-logo">Biblioteca</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="index.jsp">Início</a></li>
            <li><a href="livros">Livros</a></li>
            <li><a href="autores">Autores</a></li>
        </ul>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col s12">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3">
                <h1>Livros Cadastrados</h1>
                <a class="btn waves-effect waves-light teal" href="<%= request.getContextPath() %>/livros/cadastrar">Cadastrar Livro</a>
            </div>

            <!-- Tabela de livros -->
            <div class="table-responsive">
                <table class="striped highlight">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Data</th>
                        <th>Status</th>
                        <th>Autor</th>
                        <th>Ações</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% for (Livro livro : livros) { %>
                    <tr>
                        <td><%= livro.getId() %></td>
                        <td><%= livro.getNome() %></td>
                        <td><%= DateUtils.brazilianDateFormat(livro.getData()) %></td>
                        <td><%= livro.getStatus() %></td>
                        <td><%= livro.getAutor().getNome() %></td>
                        <td>
                            <a href="<%= request.getContextPath() %>/livros/editar?id=<%= livro.getId() %>" class="btn-small waves-effect waves-light blue">Editar</a>
                            <a href="<%= request.getContextPath() %>/livros/excluir?id=<%= livro.getId() %>" class="btn-small waves-effect waves-light red">Excluir</a>
                        </td>
                    </tr>
                    <% } %>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<!-- Materialize JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
