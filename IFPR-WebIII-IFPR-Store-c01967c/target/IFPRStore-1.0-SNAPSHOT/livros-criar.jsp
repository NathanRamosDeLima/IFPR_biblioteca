<%@ page import="java.util.List" %>
<%@ page import="br.edu.ifpr.foz.ifprstore.models.Autor" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% List<Autor> autores = (List<Autor>) request.getAttribute("autores"); %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cadastrar Livro</title>
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
        .btn {
            margin-top: 20px;
        }
        h1 {
            font-size: 2.5rem;
        }
        .form-container {
            background: white;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
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
        <div class="col s12 m8 offset-m2">
            <h1 class="center-align">Cadastrar Livro</h1>
            <div class="form-container">
                <form action="<%= request.getContextPath() %>/livros/cadastrar" method="post">

                    <div class="input-field">
                        <input type="text" id="nome" name="campo_nome" class="validate" required>
                        <label for="nome">Nome do Livro</label>
                    </div>

                    <div class="input-field">
                        <input type="date" id="data" name="campo_data" class="validate" required>
                        <label for="data" class="active">Data</label>
                    </div>

                    <div class="input-field">
                        <select name="campo_autor" id="autor" required>
                            <option value="" disabled selected>Selecione o Autor</option>
                            <% for (Autor autor : autores) { %>
                            <option value="<%= autor.getId() %>"><%= autor.getNome() %></option>
                            <% } %>
                            <option value="0">Sem Autor</option>
                        </select>
                        <label for="autor">Autor</label>
                    </div>

                    <div class="input-field">
                        <select name="campo_status" id="status" required>
                            <option value="" disabled selected>Selecione o Status</option>
                            <option value="DISPONIVEL">Disponível</option>
                            <option value="EMPRESTADO">Emprestado</option>
                            <option value="INDISPONIVEL">Indisponível</option>
                        </select>
                        <label for="status">Status</label>
                    </div>

                    <div class="center-align">
                        <button class="btn waves-effect waves-light teal" type="submit">Cadastrar
                            <i class="material-icons right">send</i>
                        </button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<!-- Materialize JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script>
    // Initialize Materialize select and other components
    document.addEventListener('DOMContentLoaded', function() {
        var elems = document.querySelectorAll('select');
        M.FormSelect.init(elems);
    });
</script>
</body>
</html>
