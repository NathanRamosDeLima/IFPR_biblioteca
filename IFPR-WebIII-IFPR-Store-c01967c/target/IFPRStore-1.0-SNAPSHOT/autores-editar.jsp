<%@ page import="br.edu.ifpr.foz.ifprstore.models.Autor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% Autor autor = (Autor) request.getAttribute("autor"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Autor</title>
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
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .btn-large {
            width: 100%;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="nav-wrapper container">
        <a href="../livros" class="brand-logo">Biblioteca</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="../livros">Início</a></li>
            <li><a href="../livros">Livros</a></li>
            <li><a href="../autores">Autores</a></li>
        </ul>
    </div>
</nav>

<!-- Main Content -->
<div class="container">
    <div class="row">
        <div class="col s12">
            <h1 class="center-align">Editar Autor</h1>

            <div class="form-container">
                <form action="<%= request.getContextPath() %>/autores/editar" method="post">
                    <!-- Campo oculto com o ID do autor -->
                    <input type="hidden" name="campo_id" value="<%= autor.getId() %>">

                    <div class="input-field">
                        <input id="nome" type="text" name="campo_nome" class="validate" value="<%= autor.getNome() %>" required>
                        <label for="nome">Nome do Autor</label>
                    </div>

                    <!-- Botão de atualizar -->
                    <button class="btn waves-effect waves-light teal btn-large" type="submit">
                        <i class="material-icons left">update</i>Atualizar Autor
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Materialize JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
    // Materialize initializations
    document.addEventListener('DOMContentLoaded', function() {
        // Initialize form validation or other JS
    });
</script>
</body>
</html>
