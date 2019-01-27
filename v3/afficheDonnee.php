<?php
session_start();
include_once('includes.php');
include("barre_de_nav.php");
?>

<!DOCTYPE html>
<html lang="fr">
<header>
	<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
	<link href="bootstrap/js/bootstrap.js" rel="stylesheet" type="text/css"/>
	<link href="style.css" rel="stylesheet" type="text/css" media="screen"/>
	<title>affichage donnée patient</title>
</header>
<body>
	<div class="container-fluid">

		<div class="row">

			<div class="col-xs-1 col-sm-2 col-md-3"></div>
			<div class="col-xs-10 col-sm-8 col-md-6">

				<h1 class="index-h1">Patient pid : <?php $pid = $_POST['pid']; echo $pid?></h1>
				<h1>Patient</h1>
				<table>
					<tr>
						<th>Nom</th>
						<th>Prénom</th>
						<th>Date de naissance</th>
						<th>Age</th>
						<th>Sexe</th>
						<th>Adresse</th>
						<th>Ville</th>
						<th>Code postal</th>
					</tr>
					<?php
					include('conn.php');
					$res = $mysqli->query("SELECT nom,prenom,date_naissance,age,sexe,adresse,ville,Code_Postal FROM patient where pid=".$_POST['pid']);

					for ($row_no = $res->num_rows - 1; $row_no >= 0; $row_no--) {
						$res->data_seek($row_no);
						$row = $res->fetch_assoc();
						?>
						<tr>

							<td>
								<?php echo $row['nom'];?>
							</td>

							<td>
								<?php echo $row['prenom'];?>
							</td>
							<td>
								<?php echo $row['date_naissance'];?>
							</td>
							<td>
								<?php echo $row['age'];?>
							</td>
							<td>
								<?php echo $row['sexe'];?>
							</td>
							<td>
								<?php echo $row['adresse'];?>
							</td>
							<td>
								<?php echo $row['ville'];?>
							</td>
							<td>
								<?php echo $row['Code_Postal'];?>
							</td>
						</tr>
						<?php
					}
					?>
				</table>
				<h1>Rendez-vous</h1>
<table>
					<tr>
						<th>Nom du médecin</th>
						<th>Date</th>
						<th>Heure</th>
					</tr>
					<?php
					include('conn.php');
					$res = $mysqli->query("SELECT nom_du_medecin,dates,heure FROM rendez_vous where pid=".$_POST['pid']);

					for ($row_no = $res->num_rows - 1; $row_no >= 0; $row_no--) {
						$res->data_seek($row_no);
						$row = $res->fetch_assoc();
						?>
						<tr>

							<td>
								<?php echo "Dr ".$row['nom_du_medecin'];?>
							</td>

							<td>
								<?php echo $row['dates'];?>
							</td>
							<td>
								<?php echo $row['heure'];?>
							</td>
						</tr>
						<?php
					}
					?>
				</table>
								<h1>Données collectées</h1>
<table>
					<tr>
						<th>Nom du médecin</th>
						<th>Date</th>
						<th>Heure</th>
					</tr>
					<?php
					include('conn.php');
					$res = $mysqli->query("SELECT Temperature,Frequence_Cardiaque,SpO2,Tension_Arterielle_diastolique,Tension_Arterielle_systolique FROM resultats_capteurs where pid=".$_POST['pid']);

					for ($row_no = $res->num_rows - 1; $row_no >= 0; $row_no--) {
						$res->data_seek($row_no);
						$row = $res->fetch_assoc();
						?>
						<tr>

							<td>
								<?php echo $row['Temperature'];?>
							</td>

							<td>
								<?php echo $row['Frequence_Cardiaque'];?>
							</td>
							<td>
								<?php echo $row['SpO2'];?>
							</td>
							<td>
								<?php echo $row['Tension_Arterielle_diastolique'];?>
							</td>
							<td>
								<?php echo $row['Tension_Arterielle_systolique'];?>
							</td>
						</tr>
						<?php
					}
					?>
				</table>
			</div>
			<div class="col-xs-1 col-sm-2 col-md-3"></div>
		</div>
	</div>
	<script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>