<%@ page import="java.util.List" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca - Home</title>
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
        .hero-section {
            background-color: #004d40;
            color: white;
            height: 60vh;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 3.5rem;
            margin-bottom: 20px;
        }
        .hero-section p {
            font-size: 1.5rem;
            margin-bottom: 30px;
        }
        .btn-large {
            padding: 0 30px;
        }
        .btn-group {
            margin-top: 20px;
        }
        .feature-icon {
            font-size: 48px;
            color: #26a69a;
        }
        .section {
            padding: 50px 0;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar">
    <div class="nav-wrapper container">
        <a href="#" class="brand-logo">Biblioteca</a>
        <ul id="nav-mobile" class="right hide-on-med-and-down">
            <li><a href="#">Início</a></li>
            <li><a href="livros">Livros</a></li>
            <li><a href="autores">Autores</a></li>
        </ul>
    </div>
</nav>

<!-- Hero Section -->
<section class="hero-section">
    <h1>Bem-vindo à Biblioteca</h1>
    <p>Explore as opções abaixo para gerenciar livros e autores.</p>
    <div class="btn-group">
        <a href="livros" class="btn-large waves-effect waves-light teal">Gerenciar Livros</a>
        <a href="autores" class="btn-large waves-effect waves-light grey darken-1">Gerenciar Autores</a>
    </div>
</section>

<!-- Features Section -->
<section class="section container">
    <div class="row text-center">
        <div class="col s12 m4">
            <i class="material-icons feature-icon">library_books</i>
            <h5>Grande Acervo</h5>
            <p>Explore um vasto catálogo de livros para todos os gostos.</p>
        </div>
        <div class="col s12 m4">
            <i class="material-icons feature-icon">people</i>
            <h5>Autores</h5>
            <p>Conheça os autores por trás das obras que você ama.</p>
        </div>
        <div class="col s12 m4">
            <i class="material-icons feature-icon">build</i>
            <h5>Gerenciamento Simples</h5>
            <p>Gerencie facilmente o acervo e os autores através de uma interface intuitiva.</p>
        </div>
    </div>
</section>

<!-- Materialize JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
