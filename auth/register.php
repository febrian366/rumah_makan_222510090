<?php  
session_start();
include '../koneksi.php';

// ambil data dari form
if(isset($_POST['submit'])){

  $nama_user = $_POST['nama_user'];
  $username = $_POST['username'];
  $password = $_POST['password'];
  $id_level = $_POST['id_level'];
  
  // query input data
  $query = "INSERT INTO tb_user VALUES ('', '$username', '$password', '$nama_user', '$id_level')";
  $sql = mysqli_query($kon, $query);
  
// cek
if ($sql) {
  // $_SESSION['pesan'] = '
  // 	<div class="alert alert-success mb-2 alert-dismissible text-small " role="alert">
  // 		<b>Berhasil!</b> Registrasi User berhasil
  // 		<button type="button" class="close" data-dismiss="alert" aria-label="close"><span aria-hidden="true">&times;</span></button>
  // 	</div>
  // ';
  header('location:index.php');
  // } else {
    // 	$_SESSION['pesan'] = '
    // 		<div class="alert alert-danger mb-2 alert-dismissible text-small " role="alert">
    // 			<b>Gagal!</b> Registrasi User gagal
    // 			<button type="button" class="close" data-dismiss="alert" aria-label="close"><span aria-hidden="true">&times;</span></button>
    // 		</div>
      // 	';
      // 	header('location:index.php?user');
  }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Halaman Login</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->  
  <link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->  
  <link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
  <link rel="stylesheet" type="text/css" href="css/util.css">
  <link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
  
  <div class="limiter">
    <div class="container-login100">
      <div class="wrap-login100">
        <form class="login100-form validate-form" action="register.php" method="post">
          <span class="login100-form-title p-b-26">
            Pendaftaran Akun
          </span>

          <div class="wrap-input100">
            <input class="input100" type="text" name="nama_user">
            <span class="focus-input100" data-placeholder="Nama"></span>
          </div>

          <div class="wrap-input100">
            <input class="input100" type="text" name="username">
            <span class="focus-input100" data-placeholder="username"></span>
          </div>

          <div class="wrap-input100">
            <span class="btn-show-pass">
              <i class="zmdi zmdi-eye"></i>
            </span>
            <input class="input100" type="password" name="password">
            <span class="focus-input100" data-placeholder="Password"></span>
          </div>

          <div class="form-group">
            <label for="level">Level</label>
            <select name="id_level" id="level" class="form-control">
              
              <option value="5">Pelanggan</option>
              
            </select>
          </div>

          <div class="container-login100-form-btn">
            <div class="wrap-login100-form-btn">
              <div class="login100-form-bgbtn"></div>
              <button class="login100-form-btn" type="submit" name="submit">
                daftar
              </button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
  

  <div id="dropDownSelect1"></div>
  
<!--===============================================================================================-->
  <script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/bootstrap/js/popper.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
  <script src="vendor/daterangepicker/moment.min.js"></script>
  <script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
  <script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
  <script src="js/main.js"></script>

</body>
</html>