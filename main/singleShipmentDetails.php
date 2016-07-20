<?php
/*ob_start();
    session_start();
    $role = $_SESSION['sess_userrole'];
    if(!isset($_SESSION['sess_username']) || $role!="admin"){
      header('Location: login.php?err=2');
    }
*/

include("config.php");
require_once('database.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

	<title>Shipments Management System</title>

	<meta name="description" content="">
	<meta name="author" content="Germany Computer & Telecom Ltd.">


	<!-- Bootstrap core CSS -->
	<link rel="stylesheet" href="assets/css/bootstrap/bootstrap.css" /> 
    
    <!-- Fonts  -->
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,500,600,700,300' rel='stylesheet' type='text/css'>
    
    <!-- Base Styling  -->
    <link rel="stylesheet" href="assets/css/app/app.v1.css" />

	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>
<body>
	<!-- Preloader -->
    <div class="loading-container">
      <div class="loading">
        <div class="l1">
          <div></div>
        </div>
        <div class="l2">
          <div></div>
        </div>
        <div class="l3">
          <div></div>
        </div>
        <div class="l4">
          <div></div>
        </div>
      </div>
    </div>
    <!-- Preloader -->	
        <div class="warper container-fluid col-md-10 col-sm-offset-1">
        	<?php 
						$cons= $_POST['Consignment'];
						?>
            <hr class="no-margn">
            
            <div class="page-header"><h3>Shipment Details of <small><?php echo $cons; ?></small></h3></div>
            
            <div class="row">
            	<div class="col-md-12">
					<?php
						$sql = "SELECT * FROM tbl_courier WHERE cons_no = '$cons'";
						$result = dbQuery($sql);
						$no = dbNumRows($result);
						if($no == 1){
						while($data = dbFetchAssoc($result)) {
						extract($data);
						?>
                	<div class="panel panel-success">
                        <div class="panel-heading">
							<div class="row"><div class="col-md-4">Way Bill: <?php echo $ship_name; ?><br>Recieved by: <?php echo $rev_name; ?></div>
							<div class="col-md-4">
								Date & Time: <?php  $date = date('Y-m-d'); $time = date(' H:i:s'); echo $date.' & '.$time; ?><br>
								Origin Service Area: > <?php echo $s_add; ?><br>
								Destination Service Area: > <?php echo $r_add; ?>
							</div>
							<div class="col-md-4">Goods pieces:<?php echo $qty; ?> </div></div>
						</div>
					</div>
					<?php }//while
						}//if
						else {
						echo 'In else....';
						?>
						<h3 style="font-family:Verdana; font-size:12px;">Consignment Number <font color="#FF0000"><?php echo $cons; ?></font> not found. Please verify the Number.<br/>
						Search Again with your valid Tracking Number.</h3>
						
						<?php 
						}//else
						?>
                        <div class="panel-body">
						
                        	<table class="table table-bordered">
                              <thead>
                                <tr>
                                  <th>Sn</th>
                                  <th>Status</th>
                                  <th>Location</th>
                                  <th>Date & Time</th>
                                </tr>
                              </thead>
                              <tbody>
							   <?php
									$i=0;
									$statement = $db->prepare("SELECT * FROM tbl_statustimeline WHERE cons_no = '$cons' ORDER BY id DESC");
									$statement->execute();
									$result = $statement->fetchAll(PDO::FETCH_ASSOC);
									foreach($result as $row) {
										$i++;
								?>
                                <tr>
                                    <td><?php echo $i; ?></td>
                                    <td><?php echo $row['status']; ?> - <?php echo $row['Location']; ?></td>
                                    <td><?php echo $row['address']; ?></td>
                                    <td> <?php echo $row['date']; ?> & <?php echo $row['time']; ?></td>
                                </tr>
								<?php
								}
								?>
                              </tbody>
                            </table>
                            <div class="row">
								<div class="col-lg-4 col-lg-offset-4">
									<h3 class="text-center">Welcome to <br>Lion Worldwdie Express</h3>
									<p class="text-center">You can easily find your Goods status.</p>
									<hr class="clean">
									<form role="search"  action="singleShipmentDetails.php" method="post">
									  <div class="form-group input-group">
										<span class="input-group-addon"><i class="fa fa-search"></i></span>
										<input type="tex" name="Consignment" id="track" class="form-control"  placeholder="Enter Your Tracking Number">
									  </div>
									  <button type="submit" class="btn btn-green btn-block">Track You Shipment</button>
									</form>
									<hr>
								   
								</div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
        <footer class="container-fluid footer col-md-10 col-sm-offset-1">
        	Copyright &copy; 2014 <a href="http://gctlbd.com/" target="_blank">gctlbd/</a>
            <a href="#" class="pull-right scrollToTop"><i class="fa fa-chevron-up"></i></a>
        </footer>
      
    <!-- JQuery v1.9.1 -->
	<script src="assets/js/jquery/jquery-1.9.1.min.js" type="text/javascript"></script>

    <!-- Bootstrap -->
    <script src="assets/js/bootstrap/bootstrap.min.js"></script>
    
    <!-- NanoScroll -->
    <script src="assets/js/plugins/nicescroll/jquery.nicescroll.min.js"></script>
    
	<!-- Sparkline JS -->
    <script src="assets/js/plugins/sparkline/jquery.sparkline.min.js"></script>
    <!-- For Demo Sparkline -->
    <script src="assets/js/plugins/sparkline/jquery.sparkline.demo.js"></script>
    
    
    <!-- Custom JQuery -->
	<script src="assets/js/app/custom.js" type="text/javascript"></script>
    

    
	<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
    
    ga('create', 'UA-56821827-1', 'auto');
    ga('send', 'pageview');
    
    </script>
</body>
</html>
