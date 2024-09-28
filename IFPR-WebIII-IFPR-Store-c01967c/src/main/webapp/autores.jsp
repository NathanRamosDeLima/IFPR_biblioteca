<%@ page import="java.util.List" %>
<%@ page import="br.edu.ifpr.foz.ifprstore.models.Autor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% List<Autor> autores = (List<Autor>) request.getAttribute("autores"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Autores Cadastrados</title>
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
        h1 {
            font-size: 2.5rem;
        }
        .table-container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-small {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<!-- Navbar -->
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
            <h1 class="center-align">Autores Cadastrados</h1>

            <div class="table-container">
                <!-- Botão de Cadastrar -->
                <div class="right-align">
                    <a href="<%= request.getContextPath() %>/autores/cadastrar" class="btn waves-effect waves-light teal">
                        <i class="material-icons left">add</i>Cadastrar Autor
                    </a>
                </div>

                <!-- Tabela de Autores -->
                <table class="highlight centered responsive-table">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nome</th>
                        <th>Ações</th>
                    </tr>
                    </thead>
                    <tbody>
                    <% for (Autor autor : autores) { %>
                    <tr>
                        <td><%= autor.getId() %></td>
                        <td><%= autor.getNome() %></td>
                        <td>
                            <a href="<%= request.getContextPath() %>/autores/editar?id=<%= autor.getId() %>" class="btn-small waves-effect waves-light blue">
                                <i class="material-icons">edit</i>
                            </a>
                            <a href="<%= request.getContextPath() %>/autores/excluir?id=<%= autor.getId() %>" class="btn-small waves-effect waves-light red">
                                <i class="material-icons">delete</i>
                            </a>
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
<script>
    // Materialize initializations
    document.addEventListener('DOMContentLoaded', function() {
        // Add any specific JS you need for Materialize components
    });
</script>
</body>
</html>
