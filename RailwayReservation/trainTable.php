<!DOCTYPE html>
<html>
<head>
	<title>Train Table View</title>
	<link rel="stylesheet" href="style1.css">
</head>
<body>

	

	<table id="t01">
		<tr>
			<th>TRAIN NAME</th>
			<th>TRAIN NUMBER</th>
			<th>TRAIN SOURCE STN</th>
			<th>SOURCE DEP. TIME</th>
			<th>TRAIN DESTINATION STN</th>
			<th>DESTINATION ARRIVAL TIME</th>
		</tr>
		<tr>
			<td>halu</td>
			<td>520</td>
			<td>gouri</td>
			<td>5:00</td>
			<td>himachal</td>
			<td>9:00</td>
		</tr>
		<?php
			include 'db_connection.php';
			$result = $conn->prepare("SELECT * FROM train ORDER BY trainNumber ASC");
			$result->execute();
			for($i=0; $row = $result->fetch(); $i++){
		?>
		<tr>
			<td><<?php echo $row['trainName']; ?></td>
			<td><?php echo $row['trainNumber']; ?></td>
			<td><?php echo $row['trainSrcStn']; ?></td>
			<td><?php echo $row['srcDepTime']; ?></td>
			<td><?php echo $row['trainDestStn']; ?></td>
			<td><?php echo $row['destArrTime']; ?></td>
		</tr>
		<?php } ?>
	</table>
		

</body>
</html>