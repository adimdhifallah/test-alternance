<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page d'accueil</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
    <h1>Bienvenue sur votre application de gestion des modules</h1>
    <h2>Ajout d'un nouveau module</h2>
    <form id="moduleForm" action="#" method="POST">
        <label for="nom">Nom du module :</label><br>
        <input type="text" id="nom" name="nom"><br>
        <label for="description">Description :</label><br>
        <textarea id="description" name="description"></textarea><br><br>
        <input type="submit" value="Ajouter un module">
    </form>

    <div id="message"></div>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "teste";
        
        $conn = new mysqli($servername, $username, $password, $dbname);
        
        if ($conn->connect_error) {
            die("La connexion à la base de données a échoué: " . $conn->connect_error);
        }
        
        $nom = $_POST['nom'];
        $description = $_POST['description'];
        $stmt = $conn->prepare("INSERT INTO modules (nom, description) VALUES (?, ?)");
        
        $stmt->bind_param("ss", $nom, $description);
        
        if ($stmt->execute()) {
            echo "Le module a été ajouté avec succès !";
            echo '<script>window.location.href = "generate_data.php";</script>';
        } else {
            echo "Erreur lors de l'ajout du module : " . $conn->error;
        }
        
        $stmt->close();
        $conn->close();
    }
    ?>
</body>
</html>
