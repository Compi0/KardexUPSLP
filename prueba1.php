<?php
    session_start();
    include 'conn.php';
    $conn=new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die ("There was an error ".$conn->connect_error);
    }
    $alumno = $_SESSION["alumno"];
    $op = $_POST["opcion"];
    $sql = "SELECT id,matricula,semestre, materia, seccion, periodo, cfo, ext, reg, cf, creditos, status FROM kardex WHERE matricula='".$alumno."'";
    $result = $conn->query($sql);
    if($op == 1 || $op == 2){
        echo "<h1>TU AVANCE</h1><table border=1>";
        echo"<tr><td bgcolor='#B1B1B1'><font color=black>Materia</td></font>
        <td bgcolor='#B1B1B1 '><font color=black>Estatus</td></font>
        <td bgcolor='#B1B1B1 '><font color=black>Periodo</td></font>	
        <td bgcolor='#B1B1B1 '><font color=black>Seccion</td></font>
        <td bgcolor='#B1B1B1 '><font color=black>Ext</td></font>	
        <td bgcolor='#B1B1B1'><font color=black>Reg</td></font>
        <td bgcolor='#B1B1B1'><font color=black>Cf</td></font>
        <td bgcolor='#B1B1B1'><font color=black>Creditos</td></font></tr>";
        if($op == 1){
           if ($result->num_rows > 0){
            while($row = $result->fetch_assoc()) {
                if($row["status"] === "cursando"){
                    echo"<tr>";
                    echo"<td bgcolor='#DADADA '><font color=black>".$row['materia']."</td></font>";
                    echo "<td bgcolor='#F5F24A'><font color=black>".$row['status']."</td></font>"; 
                    echo"<td bgcolor='#DADADA'><font color=black>".$row['periodo']."</td></font>";
                    echo"<td bgcolor='#DADADA '><font color=black>".$row['seccion']."</td></font>";
                    echo"<td bgcolor='#DADADA '><font color=black>".$row['ext']."</td></font>";
                    echo"<td bgcolor='#DADADA '><font color=black>".$row['reg']."</td></font>";
                    echo"<td bgcolor='#DADADA '><font color=black>".$row['cf']."</td></font>";
                    echo"<td bgcolor='#DADADA '><font color=black>".$row['creditos']."</td></font>";
                    echo"</tr>";
                }
            }
            echo "</table>";
            echo "<form action=logIn2.php>";
                echo "<button>Regresar</button>";
            echo "</form>";
        } 
        }
        else if($op == 2){
            if ($result->num_rows > 0){
                while($row = $result->fetch_assoc()) {
                    if($row["status"] === "Aprobado"){
                        echo"<tr>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['materia']."</td></font>";
                        echo "<td bgcolor='#F5F24A'><font color=black>".$row['status']."</td></font>"; 
                        echo"<td bgcolor='#DADADA'><font color=black>".$row['periodo']."</td></font>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['seccion']."</td></font>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['ext']."</td></font>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['reg']."</td></font>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['cf']."</td></font>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['creditos']."</td></font>";
                        echo"</tr>";
                    }
                }
                echo "</table>";
                echo "<form action=logIn2.php>";
                echo "<button>Regresar</button>";
                echo "</form>";
            }
        }
    }else{
        echo "<h1>TU AVANCE</h1><table border=1>";
        echo"<tr><td bgcolor='#B1B1B1'><font color=black>Materia</td></font>
        <td bgcolor='#B1B1B1 '><font color=black>Veces que se ha cursado la materia</td></font>";
        if ($result->num_rows > 0){ //materia
            
            while($row = $result->fetch_assoc()) {
                    $contar = 0;
                    if($row["status"] == "Aprobado" || $row["status"] == "recursada"){
                        $sql2 = "SELECT materia FROM kardex WHERE matricula='".$alumno."'";
                        $result2 = $conn->query($sql2);
                        while($row2 = $result2->fetch_assoc()){
                            if($row["materia"] == $row2["materia"]){
                                $contar++;
                            }
                        }
                        echo"<tr>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$row['materia']."</td></font>";
                        echo"<td bgcolor='#DADADA '><font color=black>".$contar."</td></font>";
                        echo"</tr>";
                    }
            }
            echo "</table>";
            echo "<form action=logIn2.php>";
            echo "<button>Regresar</button>";
            echo "</form>";
        }
    }    
?>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="estilotabla.css">
    </head>
</html>