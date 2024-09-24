<?php
/*---------------------------variables-----------------*/        
    require "conn.php";
    $usuario = $_POST["username"];
    $pass = $_POST["password"];
/*----------------------------conexion-----------------*/                
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error)
    {
        die("Connection failed: " . $conn->connect_error);
    }
/*-----------------------obtencion de datos----------------*/ 
    $sql = "SELECT usuario, pass, tipo FROM usuarios";
    $result = $conn->query($sql);
    while($row = $result->fetch_assoc())
    {
        if($usuario === $row["usuario"] && $pass === $row["pass"]){
            $conn->close();
            if($row["tipo"] === "2"){
                header("Location: menu_acmin.html");
            }else if($row["tipo"] === "3"){
                header("Location: proyecto web 2.php");
            }else{
                session_start();
                $_SESSION['alumno'] = "$usuario";
                header("Location: consulta_alumno.php");
            }
        }
    }
        echo "El usuario o la contraseña son incorrectos";
        $conn->close();
?>