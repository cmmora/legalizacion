<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="stylesheet" href="../static/styles/normalize.css">
	<link rel="stylesheet" href="../static/styles/design.css">
	</head>
<body>
	<p class="textoConfirma"> Su consecutivo para Legalización de gastos para Gastos Reembolsables es: </p>
<section class="consecutivoConfirma">
<?php
ini_set('display_errors',1);
error_reporting(E_ALL);
$link = mysqli_connect("localhost","usulegal","dxPCAzmmmCVJcPbtBQ5EjJqd");
mysqli_select_db($link,"legal");
// session_start();
// include_once '../config/connection.php';

// $result = mysqli_query($link, "SELECT * FROM documentos WHERE DOC_SIGLA = 'TC' ORDER BY DOC_ID DESC LIMIT1");
$result = mysqli_query($link, "SELECT * FROM documentos WHERE DOC_SIGLA = 'GR' ORDER BY DOC_ID DESC");
mysqli_data_seek($result, 0);
$extraido = mysqli_fetch_array($result);

echo "GR".$extraido['DOC_ID']."<br/> ";

?>
</section>
</body>
</html>