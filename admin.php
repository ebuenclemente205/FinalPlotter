<?php	
	session_start();
	include('db.php');
		
	$edpcode = '';	
	$subject = '';	
	$stime = '';	
	$etime = '';	
	$days = '';		
	$room = '';
	$units = '';
	$message = '';
	$error = '';
	$search = '';
	
	if(!isset($_SESSION['islogin']))
	{
		//go back to login page
		header('location: index.php');
		exit();
	}
	else 
	{
		if(isset($_POST['add']))
		{
			$edpcode = trim($_POST['edpcode']);
			$subject = strtoupper(trim($_POST['subject']));	
			$stime = trim($_POST['stime']);	
			$etime = trim($_POST['etime']);	
			$days = trim($_POST['days']);		
			$room = trim($_POST['room']);
			$units = trim($_POST['units']);
				
			$f_edpcode = find_duplicate($edpcode);
			
				if($f_edpcode['edpcode'] == $edpcode)
				{
					$error = 1;
					$message = 'EDP code already exist';
				}
				elseif(($etime-$stime)<1)
				{
					$error = 1;
					$message = 'Scheduled time should be greater than 1 hour';
				}
				elseif($stime > $etime)
				{
					$error = 1;
					$message = 'Invalid time';
				}
				elseif($units > 10 || $units < 1) 
				{
					$error = 1;
					$message = 'Invalid unit';
				}
				else 
				{
					add_subject($edpcode, $subject, $stime, $etime, $days, $room, $units);
					$message = 'Successfully Added';				
					$edpcode = '';	
					$subject = '';	
					$stime = '';	
					$etime = '';	
					$days = '';		
					$room = '';
					$units = '';
					$prereq = '';
				}
		}				
		
		if(isset($_GET['search']))
		{
			$search = trim($_GET['search']);
		}
		
		if($search == '')
		{
			$plotter = list_subject();
		}
		else 
		{
			$plotter = search_subject($search);
		}
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
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
</head>
<body id="page-top" class="index">
	<?php include('header.php'); ?>
	
    <!-- Header -->
    <header>
        <div class="container">			
			<div class="plotter-admin-bg">
				<form class="form" method="post">
					<h3>2ND SEMESTER 2014 - 2015</h3><br>
					<label id="admin-lbl"> 
						<?php echo date("Y/m/d");?> 
					</label>
					<div class="table-responsive">
						<div class="table">
							<table class="table">
								<tr>							
									<th>EDP Code</th>
									<th>Subject</th>
									<th>Start Time</th>
									<th>End Time</th>
									<th>Days</th>
									<th>Room</th>
									<th>Units</th>
								</tr>						
								<tr>
									<td><input type="text" class="form-control" name="edpcode" pattern=".{5,5}" value="<?php echo htmlentities($edpcode); ?>" placeholder="EDP Code" maxlength="5" required /></td>
									<td><input type="text" class="form-control" name="subject" pattern=".{3,15}" value="<?php echo htmlentities($subject); ?>" placeholder="Subject" maxlength="15" required /></td>							
									<td><input type="time" class="form-control" name="stime" value="<?php echo htmlentities ($stime); ?>" placeholder="Start Time" maxlength="7" required /></td>
									<td><input type="time" class="form-control" name="etime" value="<?php echo htmlentities($etime); ?>" placeholder="End Time" maxlength="7" required /></td>
									<!--<td><input type="text" class="form-control" name="days" value="<?php echo htmlentities($days); ?>" placeholder="Days" maxlength="5" required/></td>-->
									<td>
										<select name="days" class="form-control">
											<optgroup label="Options"> Choose</option>
											<option value="M-F"> M-F </option>
											<option value="MW"> MW </option>
											<option value="MWF"> MWF </option>
											<option value="TTH"> TTH </option>
											<option value="TTH"> S </option>
										</select>
									</td>
									<td><input type="text" class="form-control" name="room" pattern=".{3,4}" value="<?php echo htmlentities($room); ?>" placeholder="Room" maxlength="4" required/></td>
									<td><input type="text" class="form-control" name="units" value="<?php echo htmlentities($units); ?>" placeholder="Units" maxlength="2" required/></td>
								</tr>								
							</table>							
							<?php if($error == 0 and $message != ''): ?>
									<div class="alert alert-success" role="alert">
										<?php echo $message; ?>
									</div>
							<?php elseif($error != 0 and $message != ''): ?>
									<div class="alert alert-danger" role="alert">
										<?php echo $message; ?>
									</div>
							<?php endif; ?>
							<div class="form-group">
								<center>
									<input type="submit" name="add" value="Add" class="btn btn-primary btn-lg">&nbsp;&nbsp;&nbsp;
									<input type="reset" name="submit" value="Cancel" class="btn btn-warning btn-lg">
								</center>
							</div>
						</div>
					</div>						
				</form>
			</div>	
				<div class="search-admin-bg">
					<h3> Subject Lists</h3>
					<div class="row">
						<div class="col-xs-offset-8">
							<div class="pull-right">
								<form method="get" class="form-inline">
									<div class="input-group">
									<input type="text" name="search" value="<?php echo htmlentities($search); ?>" class="form-control input-small" placeholder="Search subjects here . . ">
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
										<th width="150">EDP Code</th>
										<th>Subject</th>
										<th>Start Time</th>
										<th>End Time</th>
										<th>Days</th>
										<th>Room</th>
										<th>Units</th>
										<th width="50"> </th>
										<th width="50"> </th>
									</tr>
								</thead>
								<tbody>
								<?php foreach($plotter as $n): ?>
									<tr>
										<td><?php echo htmlentities($n['edpcode']); ?></td>
										<td><?php echo htmlentities($n['subject']); ?></td>
										<td><?php echo htmlentities($n['stime']); ?></td>
										<td><?php echo htmlentities($n['etime']); ?></td>
										<td><?php echo htmlentities($n['days']); ?></td>
										<td><?php echo htmlentities($n['room']); ?></td>
										<td><?php echo htmlentities($n['units']); ?></td>
										<td>
											<a href="admin-edit.php?id=<?php echo htmlentities($n['subjNo']); ?>">
												<i class="glyphicon glyphicon-pencil"> </i>
											</a>
										</td>
										<td>
											<a href="admin-delete.php?id=<?php echo htmlentities($n['subjNo']); ?>"  onclick="return confirm('Are you sure?');">
												<i class="glyphicon glyphicon-trash"> </i>
											</a>
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
		</div>
	</header>
   
    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="js/freelancer.js"></script>

</body>
</html>
