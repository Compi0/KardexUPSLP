<?php
session_start(); 
include 'conn.php';
$conn=new mysqli($servername,$username,$password,$dbname);
if($conn->connect_error){
    die ("There was an error ".$conn->connect_error);
}
$alumno = $_SESSION['alumno'];
$sql = "SELECT alumnos.matricula,alumnos.nombre,alumnos.carrera, kardex.periodo FROM alumnos,kardex where alumnos.matricula=".$alumno;
$result = $conn->query($sql);
if ($result->num_rows > 0) {

    //$result = $conn->query($sql);
    echo "<form action='prueba1.php' method='post'> <br>";
    echo "<label> Opcion: ";
    echo "<select name='opcion'>";
    echo "<option value ='1'>"."Mostrar materias que se estan cursando"."</option>";
    echo "<option value ='2'>"."Mostrar materias que se aprobaron"."</option>";
    echo "<option value ='3'>"."Mostrar numero de veces que curso la materia"."</option>";
    echo "</select></label><br>";
    echo "<input type='submit' name='enviar'>";
    echo "</form>";

    echo "<form action='tutorial/imprimirFinal.php' method='post'>";
    echo "<input type='submit' name='boton' value=Imprimir avance>";
    echo "</form>";
     echo "<form action=estadisticas.php>";
                echo "<button>Estadisticas</button>";
    echo "</form>";
    echo "<form action=login.html>";
    echo "<button>Cerrar sesion</button>";
echo "</form>";
$row = $result->fetch_assoc();
 echo "<table border=2>";
 echo "<tr>";
 echo "<th></th>";
 echo "<th>Matricula</th>";
 echo "<th>Nombre</th>";
 echo "<th>Carrera</th>";
 echo "<th>Periodo</th>";
 echo "</tr>";
 echo"<tr>";
 echo "<td bgcolor=white>'<img src=https://external-content.duckduckgo.com/iu/?u=http%3A%2F%2Fwww.prsindia.org%2Fsites%2Fdefault%2Ffiles%2Fdefault_images%2Ficon-user-default_0.png&f=1&nofb=1&ipt=a62dc959248e263621804350d582de45765b9e4906d49b9a6b0ed85d5693951f&ipo=images alt=icono width=100px height=100px'";
 echo"<td>";
 echo"<td bgcolor=white><font color=black>".$row["matricula"]."</td></font>";
 echo"<td bgcolor=white><font color=black>".$row["nombre"]."</td></font>";
 echo"<td bgcolor=white><font color=black>".$row["carrera"]."</td></font>";
 echo"<td bgcolor=white><font color=black>"."20223S"."</td></font>";
 echo"</tr>";
 echo "</table>";
} else {    
 echo "No existen datos para ese usuarios";
}
if (isset($_SESSION['alumno'])) {
    $sql2="SELECT id,matricula,semestre, materia, seccion, periodo, cfo, ext, reg, cf, creditos, status FROM kardex WHERE matricula='".$alumno."'";
    $result2 = $conn->query($sql2);
    if ($result->num_rows > 0){
        echo "<h1>TU AVANCE</h1><table border=1>";
        echo"<tr><td bgcolor='#B1B1B1'><font color=black>Materia</td></font>
	<td bgcolor='#B1B1B1 '><font color=black>Estatus</td></font>
	<td bgcolor='#B1B1B1 '><font color=black>Periodo</td></font>	
	
    <td bgcolor='#B1B1B1 '><font color=black>Cfo</td></font>
	<td bgcolor='#B1B1B1 '><font color=black>ext</td></font>	
	<td bgcolor='#B1B1B1'><font color=black>reg</td></font>
    <td bgcolor='#B1B1B1'><font color=black>cf</td></font>
    <td bgcolor='#B1B1B1'><font color=black>creditos</td></font></tr>
    ";
    
    
        while($row = $result2->fetch_assoc()) {
            echo"<tr>";
            echo"<td bgcolor='#DADADA '><font color=black>".$row['materia']."</td></font>";
            if($row['status']==="Aprobado"){
                echo "<td bgcolor='#8DFF33'><font color=black>".$row['status']."</td></font>"; 
            }else if($row['status']==="cursando"){
                echo "<td bgcolor='#F5F24A'><font color=black>".$row['status']."</td></font>"; 
            }else {
                echo "<td bgcolor='#FF5630 '><font color=black>".$row['status']."</td></font>"; 
            }
            echo"<td bgcolor='#DADADA'><font color=black>".$row['periodo']."</td><td bgcolor='#DADADA '><font color=black>".$row['seccion']."</td></font></font>";
            echo"<td bgcolor='#DADADA '><font color=black>".$row['cfo']."</td></font>";
            echo"<td bgcolor='#DADADA '><font color=black>".$row['ext']."</td></font>";
            echo"<td bgcolor='#DADADA '><font color=black>".$row['reg']."</td></font>";
            echo"<td bgcolor='#DADADA '><font color=black>".$row['cf']."</td></font>";
            echo"<td bgcolor='#DADADA '><font color=black>".$row['creditos']."</td></font>";
            echo"</tr>";
        }
        echo "</table>";
    }else{
        echo "<p>Alumno no encontrado</p>";
    }
}
$conn->close();
?>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="estilotabla.css">
    </head>
</html>