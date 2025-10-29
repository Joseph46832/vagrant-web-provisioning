<?php
$host = "192.168.56.11"; // IP de la VM db
$dbname = "mi_base";
$user = "joseph";
$password = "1234";

$conn = pg_connect("host=$host dbname=$dbname user=$user password=$password");

if(!$conn){
    echo "Error de conexión a la base de datos.";
} else {
    echo "<h1>Personas registradas:</h1>";
    $result = pg_query($conn, "SELECT * FROM personas");
    echo "<ul>";
    while($row = pg_fetch_assoc($result)){
        echo "<li>".$row['id'].": ".$row['nombre']."</li>";
    }
    echo "</ul>";
}
?>

