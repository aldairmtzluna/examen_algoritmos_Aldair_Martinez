<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comparar Puntos</title>
    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <form action="/comparar" method="post">
            @csrf
	    <div class="container center">
		<h4>Alice</h4>
            </div>
            <div class="form-group">
                <label for="puntos_a_0">Claridad:</label>
                <input type="number" class="form-control" name="puntos_a_0" required>
            </div>

            <div class="form-group">
                <label for="puntos_a_1">Originalidad:</label>
                <input type="number" class="form-control" name="puntos_a_1" required>
            </div>

            <div class="form-group">
                <label for="puntos_a_2">Dificultad:</label>
                <input type="number" class="form-control" name="puntos_a_2" required>
            </div>
            <div class="container center">
		<h4>Bob</h4>
            </div>
            <div class="form-group">
                <label for="puntos_b_0">Claridad:</label>
                <input type="number" class="form-control" name="puntos_b_0" required>
            </div>

            <div class="form-group">
                <label for="puntos_b_1">Originalidad:</label>
                <input type="number" class="form-control" name="puntos_b_1" required>
            </div>

            <div class="form-group">
                <label for="puntos_b_2">Dificultad:</label>
                <input type="number" class="form-control" name="puntos_b_2" required>
            </div>

            <button type="submit" class="btn btn-primary">Comparar</button>
        </form>
    </div>

    <!--Scripts de Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>