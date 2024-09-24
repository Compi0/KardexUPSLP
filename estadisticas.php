<?php
    include 'conn.php';
    $conn=new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die ("There was an error ".$conn->connect_error);
    }
    //, marcando el % de avance,los créditos aprobados, los créditos faltantes
    //407 creditos  48 materias
    $alumnos = array(); $i=0;
    $sql = "SELECT DISTINCT matricula FROM kardex";
    $result = $conn->query($sql);
    if($result->num_rows > 0){
        $sql2 = "SELECT matricula, creditos FROM kardex";   //CHECAR CON EL STAUTS
        //
       
        while($row = $result->fetch_assoc()) {
            $creditos = 0;
            $materias = 0;
            $result2 = $conn->query($sql2);
            while ($row2 = $result2->fetch_assoc()){
                if($row["matricula"] = $row2["matricula"]){
                    $creditos += $row2["creditos"];
                    if($row2["creditos"]>0){
                        $materias++;
                    }
                }else if($row["matricula"] != $row2["matricula"]){
                    echo "no jala";
                    break;
                }
            }
            
                }
            echo "Materias cursadas: $materias";
            $materias = $materias*100/48;
            echo " con un avance en materias de: $materias%";
            echo "<br>";    
            echo "Creditos obtenidos: $creditos <br>";
            $creditos = 407 - $creditos ;
            echo "Creditos restantes: $creditos";
    }else{
        
        echo"No hay alumnos que mostrar";
    }
?>