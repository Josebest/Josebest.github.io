<?php
include 'conexion.php';

$sql = "SELECT titulo, artista, album, ruta_archivo, portada FROM canciones";
$result = $conn->query($sql);
echo "uploads/ElevenLabs_2024-11-14T18_11_05_Moon_ivc_s50_sb75_se0_b_m2%20(1).mp3";

if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo $row['ruta_archivo'];
        echo "<div class='cancion'>";
        echo "<img src='" . $row['portada'] . "' alt='Portada' style='width:100px;height:100px;'>";
        echo "<h3>" . $row['titulo'] . "</h3>";
        echo "<p>Artista: " . $row['artista'] . "</p>";
        echo "<p>Álbum: " . $row['album'] . "</p>";
        echo "<audio controls src='" . $row['ruta_archivo'] . "'></audio>";
        echo "</div>";
    }
} else {
    echo "No hay canciones disponibles.";
}
?>
