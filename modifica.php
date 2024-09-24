<html lang = "es" dir = "ltr">
<!--
    Nombres: "Dávila Esquivel Arturo de Jesús 177234
    Hernandez Ortiz Diego->177232"
    Materia: Programacion Web II
    Fecha: 04/10/2022
    Descripcion: "maestros"
-->
	<head >
		<title>modificar</title>
        <meta charset="UTF-8">
        <link href="Estilo/estilologin.css" rel="stylesheet" type="text/css" />
        <link href="multimedia/imagenes/favicon-2.jpg" rel="shortcut icon">
        <meta name="viewport" content="width=device-width, initial-scale=1">  
    </head>
<body>
<div class="mat"><br></div>
      <header>    
            <span class="ima">
            <a href="https://www.upslp.edu.mx/upslp/" target="_blank"><img src="multimedia/imagenes/up.png" alt="poli"></a>
            </span>
            <a href="main.html" target="_self" style ="text-decoration: none;"><h1>Proyecto programaci&oacute;n web II</h1></a>
      </header>
    <p>
        <?php
            include 'conn.php';
            $us = $_POST['usuario'];
            $niu_us = $_POST['niuusuario'];
            $niu_pass = $_POST['niupass'];
/*------------------------------------------------------conexion---------------------*/
            $conn = new mysqli($servername, $username, $password, $dbname);
            if ($conn->connect_error)
            {
                die("Connection failed: " . $conn->connect_error);
            }
/*-----------------------------------modificacion----------------------*/             
            $sql = 'UPDATE usuarios
            SET usuario = $niu_us, password = $niu_pass WHERE usuario = $us';
            if ($conn->query($sql) === TRUE)
              {
                    echo "Usuario modificado con éxito <br>";
              } 
              else 
              {
                    echo "Error: " . $sql . "<br>" . $conn->error;
              }
            $conn->close();           
        ?>
    </p>
    <section class="fin">
            <br>
          </section>
        <div class="mat"><br></div>
        <footer> 
          <div class="izq" style="text-align: center;"> 
              <h4>Devolped by:</h4>
              <p class="nose">
              <a style="color: white;" href="mailto: 177234@upslp.edu.mx">D&aacute;vila Esquivel Arturo de Jes&uacute;s->177234</a><br>
              <a style="color: white;" href="mailto: 177232@upslp.edu.mx">Hern&aacute;ndez Ortiz Diego->177232</a><br>
              <a style="color: white;" href="mailto: 177393@upslp.edu.mx">L&oacute;pez G&oacute;mez Samuel->177393</a>   
              </p>
          </div>
      </footer> 
</body>
</html>