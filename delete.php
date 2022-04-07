<?php
//include file config.php
include('config.php');

//if GET id from URL
if(isset($_GET['id_dvd'])){
	//making $id variable that keep the value of $_GET['id']
	$id_dvd = $_GET['id_dvd'];

	//melakukan query ke database, dengan cara SELECT data yang memiliki id yang sama dengan variabel $id
	$cek = mysqli_query($connect, "SELECT * FROM DVD WHERE id_dvd='$id_dvd'") or die(mysqli_error($connect));

	
	if(mysqli_num_rows($cek) > 0){
		// DELETE query to delete data if id=$id
		$del = mysqli_query($connect, "DELETE FROM DVD WHERE id_dvd='$id_dvd'") or die(mysqli_error($connect));
		if($del){
			echo '<script>alert("Successfully delete data."); document.location="index.php?page=display_dvd";</script>';
		}else{
			echo '<script>alert(Data failed to delete."); document.location="index.php?page=display_dvd";</script>';
		}
	}else{
		echo '<script>alert("ID not found."); document.location="index.php?page=display_dvd";</script>';
	}
}else{
	echo '<script>alert("ID not found."); document.location="index.php?page=display_dvd";</script>';
}

?>
