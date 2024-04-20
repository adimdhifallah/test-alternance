<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inscription d'un module</title>
</head>
<body>
    <h2>Ajout d'un nouveau module</h2>
    <form action="ajouter_module.php" method="POST">
        <label for="nom">Nom du module :</label><br>
        <input type="text" id="nom" name="nom"><br>
        <label for="description">Description :</label><br>
        <textarea id="description" name="description"></textarea><br><br>
        <input type="submit" value="Inscrire">
    </form>
</body>
</html>
