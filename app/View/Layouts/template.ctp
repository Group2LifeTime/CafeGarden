<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?php echo $title_for_layout ?></title>
<?php echo $this->Html->css("bootstrap.min");?> 

<!-- Bootstrap -->
<?php echo $this->Html->css("bootstrap.min");?> 

<!-- Bootstrap Theme -->
<?php echo $this->Html->css("cosmo-theme");?> 

<!-- Custom style -->
<?php echo $this->Html->css("css-index");?>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<div class="container-fluid wapper">
		<div class="navbar navbar-default topnav">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-responsive-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Cafe Garden</a>
			</div>
			<div class="navbar-collapse collapse navbar-responsive-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">Active</a></li>
					<li><a href="#">Link</a></li>
					<li class="dropdown"><a href="#" class="dropdown-toggle"
						data-toggle="dropdown">Dropdown <b class="caret"></b></a>
						<ul class="dropdown-menu">
							<li><a href="#">Action</a></li>
							<li><a href="#">Another action</a></li>
							<li><a href="#">Something else here</a></li>
							<li class="divider"></li>
							<li class="dropdown-header">Dropdown header</li>
							<li><a href="#">Separated link</a></li>
							<li><a href="#">One more separated link</a></li>
						</ul></li>
				</ul>
				<form class="navbar-form navbar-right">
					<select class="form-control">
					  <option>Tìm quán</option>
					  <option>Đồ uống</option>				
					</select>
					<input type="text" class="form-control col-lg-8"
						placeholder="Từ khóa">
					<input type="text" class="form-control col-lg-8"
						placeholder="Khu vực">
					<button type="button" class="btn btn-primary">Search</button>
				</form>	
			</div>
		</div><!-- End .topnav -->
		
		<!-- Content for view -->
        	<?php echo $this->fetch('content') ?>;
    	
    	
    	<div id="footer" class="col-md-12">
			<blockquote>
			  <p>Made by bacuong</p>
			  <small>Group 2 <cite title="Source Title">Lifetime tech</cite></small>
			</blockquote>
		</div><!-- End #footer -->
	</div><!-- End wapper -->

	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed 
	<script src="js/bootstrap.min.js"></script> -->
	<?php echo $this->Html->script("bootstrap.min");?> 
</body>
</html>