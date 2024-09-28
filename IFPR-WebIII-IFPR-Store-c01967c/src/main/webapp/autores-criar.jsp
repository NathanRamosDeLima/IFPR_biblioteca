<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastro de Autor</title>
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
            <h1 class="center-align">Cadastrar Autor</h1>

            <div class="form-container">
                <form action="<%= request.getContextPath() %>/autores/cadastrar" method="post">
                    <div class="input-field">
                        <input id="nome" type="text" name="campo_nome" class="validate" required>
                        <label for="nome">Nome do Autor</label>
                    </div>

                    <!-- Botão de cadastrar -->
                    <button class="btn waves-effect waves-light teal btn-large" type="submit">
                        <i class="material-icons left">add</i>Cadastrar Autor
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
