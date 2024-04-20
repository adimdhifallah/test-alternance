<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "teste";
$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("La connexion à la base de données a échoué: " . $conn->connect_error);
}

$sqlModules = "SELECT *, 
                TIMESTAMPDIFF(HOUR, date_ajout, NOW()) AS duree_hour,
                TIMESTAMPDIFF(MINUTE, date_ajout, NOW()) % 60 AS duree_minute
               FROM modules";
$resultModules = $conn->query($sqlModules);

$modules = [];
if ($resultModules->num_rows > 0) {
    while($row = $resultModules->fetch_assoc()) {
        $modules[] = $row;
    }
}

$temperatureData = [];
for ($i = 0; $i < count($modules); $i++) {
    $temperatureData[] = mt_rand(0, 40); 
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tableau et graphe des modules</title>
    <link rel="stylesheet" type="text/css" href="styles.css">

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <h2>Tableau des modules</h2>
    <table>
        <tr>
            <th>Nom du module</th>
            <th>Description</th>
            <th>Durée de fonctionnement</th>
            <th>Température</th>
        </tr>
        <?php foreach ($modules as $key => $module): ?>
            <tr>
                <td><?php echo $module['nom']; ?></td>
                <td><?php echo $module['description']; ?></td>
                <td>
                    <?php
                    echo $module['duree_hour'] . " heures " . $module['duree_minute'] . " minutes";
                    ?>
                </td>
                <td>
                    <?php
                    echo $temperatureData[$key] . " °C";
                    ?>
                </td>
            </tr>
        <?php endforeach; ?>
    </table>

    <h2>Graphe des durées de fonctionnement et des températures</h2>
    <canvas id="myChart" width="400" height="200"></canvas>

    <script>
        var ctx = document.getElementById('myChart').getContext('2d');
        var myChart = new Chart(ctx, {
            type: 'bar',    
            data: {
                labels: [<?php foreach ($modules as $module) echo '"' . $module['nom'] . '",'; ?>],
                datasets: [{
                    label: 'Durée de fonctionnement (en heures)',
                    data: [<?php foreach ($modules as $module) echo '"' . ($module['duree_hour'] + $module['duree_minute'] / 60) . '",'; ?>],
                    backgroundColor: 'rgba(255, 99, 132, 0.2)',
                    borderColor: 'rgba(255, 99, 132, 1)',
                    borderWidth: 1
                }, {
                    label: 'Température (°C)',
                    data: [<?php foreach ($temperatureData as $temp) echo '"' . $temp . '",'; ?>],
                    backgroundColor: 'rgba(54, 162, 235, 0.2)',
                    borderColor: 'rgba(54, 162, 235, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });
    </script>
</body>
</html>
