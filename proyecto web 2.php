<?php
session_start();
?>
<!DOCTYPE html>
<html lang = "es">
<!--
    Nombres: "Dávila Esquivel Arturo de Jesús 177234
    Hernandez Ortiz Diego->177232"
    Materia: Programacion Web II
    Fecha: 04/10/2022
    Descripcion: "proyecto a1"
-->
	<head >
		<title>Proyecto programación web II</title>
        <meta charset="UTF-8">
        <link href="Estilo/estilologin.css" rel="stylesheet" type="text/css" />
        <link href="multimedia/imagenes/favicon-2.jpg" rel="shortcut icon">
    </head>
<body>
    <div class="mat"><br></div>
    <header>
        
    <span class="ima">
       <a href="https://www.upslp.edu.mx/upslp/" target="_blank"><img src="multimedia/imagenes/up.png" alt="poli"></a>
    </span>
    <a href="main.html" target="_self" style ="text-decoration: none;"><h1>Proyecto programaci&oacute;n web II</h1></a>
    </header>
    <div>
        <form autocomplete='off' class='form' action = "logIn2.php" method="post">
            <section class="fin">
            </section>
            <div class='control block-cube block-input'>
                <input name='matricula' placeholder='Matricula' type='text'>
                <div class='bg-top'>
                  <div class='bg-inner'></div>
                </div>
                <div class='bg-right'>
                  <div class='bg-inner'></div>
                </div>
                <div class='bg'>
                  <div class='bg-inner'></div>
                </div>
    </div>
<br>
    <div>
        <button class='btn block-cube block-cube-hover' type='button'>
            <div class='bg-top'>
              <div class='bg-inner'></div>
            </div>
            <div class='bg-right'>
              <div class='bg-inner'></div>
            </div>
            <div class='bg'>
              <div class='bg-inner'></div>
            </div>
            <div class='text'>
              <input type="submit" value="Enviar" class="btn block-cube block-cube-hover">
            </div>
            
          </button>
        </form>
    </div>  
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

