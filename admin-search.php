<?php	
	$page_id = 'search';
	session_start();
	include('db.php');
	
	$search = '';
	
	if(!isset($_SESSION['islogin']))
	{
		//go back to login page
		header('location: index.php');
		exit();
	}
	if(isset($_GET['search']))
	{
		$search = trim($_GET['search']);
	}
	
	if($search == '')
	{
		$plotter = list_student_plotter();
	}
	else 
	{
		$plotter = search_student_plotter($search);
	}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OSP</title>
	<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon" />

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/landing-page.css" rel="stylesheet">

    <!-- Custom Fonts -->
    

</head>
<body id="page-top" class="index">
	<?php include('header.php'); ?>	
    <!-- Header -->
    <header>
		<div class="container">
			<div class="search-admin-bg">
				<div class="row">
					<div class="col-xs-offset-9">
						<div class="pull-right">
							<form method="get" class="form-inline">
								<div class="input-group">
								<input type="text" name="search" value="<?php echo htmlentities($search); ?>" class="form-control input-small" placeholder="Search students ID here . . ">
								  <span class="input-group-btn">
									<button class="btn btn-default btn-large" type="submit"> Go</button>
								  </span>					  
								</div>			
							</form>
						</div>
					</div>
				</div>
				<?php if(count($plotter) > 0): ?>
					<div class="table-responsive table subject-table">
						<table class="table table-striped table-condensed table-hover">
							<thead>
								<tr>
									<th width="150">Plotter ID</th>
									<th>Plotter Date</th>
									<th>School Year</th>
									<th>Semester</th>
									<th>Student ID</th>
									<th width="50">Status</th>
								</tr>
							</thead>
							<tbody>
							<?php foreach($plotter as $n): ?>
								<tr>
									<td><?php echo htmlentities($n['plotterid']); ?></td>
									<td><?php echo htmlentities($n['plotterdate']); ?></td>
									<td><?php echo htmlentities($n['plottersy']); ?></td>
									<td><?php echo htmlentities($n['plottersem']); ?></td>
									<td><?php echo htmlentities($n['studentid']); ?></td>														
									<td>
										<?php if($n['status'] == 0): ?>
										    <a href="admin-view.php?id=<?php echo htmlentities($n['plotterid']); ?>">										    	
												<button type="submit" class="btn btn-warning btn-xs" name="login">Pending</button>												
										    </a>
										<?php elseif($n['status'] == 1): ?>											
											<button type="submit" class="btn btn-primary btn-xs" name="login">Approved </button>
										<?php else: ?>
											<button type="submit" class="btn btn-danger btn-xs" name="login">Cancelled </button>
										<?php endif; ?> 
									</td>
								</tr>
							<?php endforeach; ?>
							</tbody>					
						</table>
						<div class="text-info">
							<b><?php echo count($plotter); ?></b> matching record(s) found.
							<?php else: ?>
								<div class="alert alert-danger" role="alert">
									<?php echo "No entries record found!"; ?>
								</div>
							<?php endif; ?>
						</div>
					</div>			
			</div>
		</div>
    </header>

    
   

   
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
