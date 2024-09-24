<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="<?php echo $_SERVER['PHP_SELF'];?>" method="post">
        <p>Ingrese el usuario a eliminar</p> <br>
        <input type="text" name="letra">
        <input type="submit">
    </form>
<?php
    include 'conn.php';
    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
    }
    echo "<form action=menu_acmin.html>";
                echo "<button>Regresar</button>";
            echo "</form>";
    $us = $_POST["letra"];
    $sql = "DELETE FROM usuarios WHERE usuario=.'$us'.";
    if ($conn->query($sql) === TRUE) {/*Se ejecuta y se comprueba al mismo tiempo */
    echo "Usuario dado de baja exitosamente";
    } else {
    echo "Error borrando usuario, no existe.: " . $conn->error;
    }
    $conn->close();
?>
</body>
</html>