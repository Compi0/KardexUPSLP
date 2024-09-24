<?php
    require('../fpdf.php');
    class PDF extends FPDF	/* Le agrega al pdf otros elementos */
{
function Footer()
{
	// Posici�n: a 1,5 cm del final
	$this->SetY(-15);
	// Arial italic 8
	$this->SetFont('Arial','I',8);
	// N�mero de p�gina
	$this->Cell(0,10,'Pagina '.$this->PageNo(),0,0,'C');	//Funcion para poner el numero d pag
}
}
    include 'conn.php';
    $conn=new mysqli($servername,$username,$password,$dbname);
    if($conn->connect_error){
        die ("There was an error ".$conn->connect_error);
    }
    $user = "177232";
    $sql="SELECT id,matricula,semestre, materia, seccion, periodo, cfo, ext, reg, cf, creditos status FROM kardex WHERE matricula='".$user."'";
    $result = $conn->query($sql);
    $pdf = new PDF();
    //$pdf->AliasNbPages();	//Para q paginas nuevas se numericen
    $pdf->AddPage();/*COMO ES CLASE EXTENDIDA SE ASIGNAN HEADER Y FOOTER CUANDO SE CREAN LAS PAGINAS */
    $pdf->SetFont('Times','',12);	//Se agrega estilo
    while($row = $result->fetch_assoc()) {
        
        $pdf->Cell(0,12,''.$row["materia"].'      '.$row["periodo"].'         '. $row["cfo"].'',0,1);
        /*
        echo"<td bgcolor='#DADADA '><font color=black>".$row['materia']."</td></font>";
        echo"<td bgcolor='#DADADA'><font color=black>".$row['periodo']."</td><td bgcolor='#DADADA '><font color=black>".$row['seccion']."</td></font></font>";
        echo"<td bgcolor='#DADADA '><font color=black>".$row['cfo']."</td></font>";
        echo"<td bgcolor='#DADADA '><font color=black>".$row['ext']."</td></font>";
        echo"<td bgcolor='#DADADA '><font color=black>".$row['reg']."</td></font>";
        echo"<td bgcolor='#DADADA '><font color=black>".$row['cf']."</td></font>";
        echo"<td bgcolor='#DADADA '><font color=black>".$row['creditos']."</td></font>";*/
    }
    $pdf->Output();
?>