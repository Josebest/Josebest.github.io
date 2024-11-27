<?php
include 'conexion.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $titulo = $_POST['titulo'];
    $artista = $_POST['artista'];
    $album = $_POST['album'];
    $genero = $_POST['genero'];
    $duracion = $_POST['duracion'];
    $fecha_lanzamiento = $_POST['fecha_lanzamiento'];

    // Manejar el archivo de música
    $archivoMusica = $_FILES['archivo_musica'];
    $rutaArchivoMusica = "uploads/" . basename($archivoMusica['name']);
    move_uploaded_file($archivoMusica['tmp_name'], $rutaArchivoMusica);

    // Manejar la portada
    $portada = $_FILES['portada'];
    $rutaPortada = "uploads/" . basename($portada['name']);
    move_uploaded_file($portada['tmp_name'], $rutaPortada);

    $sql = "INSERT INTO canciones (titulo, artista, album, genero, duracion, fecha_lanzamiento, ruta_archivo, portada)
            VALUES ('$titulo', '$artista', '$album', '$genero', '$duracion', '$fecha_lanzamiento', '$rutaArchivoMusica', '$rutaPortada')";

    if ($conn->query($sql) === TRUE) {
        echo "Canción agregada correctamente";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>
