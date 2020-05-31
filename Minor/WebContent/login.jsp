<!DOCTYPE html>
<html lang="en">
<head>
  	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
  	<title>LOGIN</title>
	<link rel="stylesheet" type="text/css" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="utf-8">
 	<link href="https://fonts.googleapis.com/css?family=Laila" rel="stylesheet"> 
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<style>
		
		body
		{font-family: 'Laila', serif;}
		td
		{	
			padding: 18px;
		}
		#grad1
		{
		  height: 55px;
		  background-image:url(images/Screenshot29.png);
			background-size:cover;
			background-repeat: no-repeat;
		}
		.container
		{
			width: 669px;
			margin-top: 15px;
			margin-bottom: 15px;
		}
		.login
		{
			background-color: white;
			margin-top: 7%;
			box-shadow: 5px 5px 7px 2px rgba(4,140,227,0.40);
		}
		input
		{
			border:none;
			box-shadow:  inset 0 0 3px #000000;
			font-size:15px;
		}
		input[type=text]
		{
			padding-left:40px;
		}
		input[type=password]
		{
			padding-left:40px;
		}
		td
		{
			position:relative;
		}
		td i
		{
			position:absolute;
			left: 25px;
			top:22px;
			padding: 0px 5px;
			color: grey;
		}
		
		input:focus + i{color:dodgerblue;}
		
		input:focus{
		box-shadow: 0 4px 16px 0 rgba(4,140,227,0.40), 0 6px 30px 0 rgba(4,140,227, 0.19);
		}
		
		input:hover{box-shadow: 0 4px 16px 0 rgba(4,140,227,0.40), 0 6px 30px 0 rgba(4,140,227,0.40);}
		
	</style>
	<script>
		
	</script>
</head>
<body id="grad1">

	<div class="container login">
	  <h2>LOGIN FORM</h2>
	  <ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#home">FOR PATIENT</a></li>
		<li><a data-toggle="tab" href="#menu1">FOR DOCTOR</a></li>
		  <li><a data-toggle="tab" href="#menu2">FOR ADMIN</a></li>
		
	  </ul>

	  <div class="tab-content">
		<div id="home" class="tab-pane fade in active">
		 <form action="patLog.jsp" method="post">
	  	 <table align="center">
		  	<tr>
		  		<td>Enter Login ID : </td>
		  		<td> <input type="text" name="pid" id="login_id" autocomplete="off" placeholder="LOGIN ID"><i class="fa fa-user"></i>
		  			<span id="login_ids" class="text-danger" font-weight="bold"></span>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>Enter Password : </td>
		  		<td> <input type="password" name="ppwd" id="login_pass" autocomplete="off" placeholder="Password"><i class="fa fa-lock"></i>
		  		<span id="login_passs" class="text-danger" font-weight="bold"></span> </td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"></td>
		  	</tr>
		  	
		  	<tr>
		  		<td colspan="2" align="center"><input onClick="javascript:validate();" type="submit" value="LOGIN"></td>
		  	</tr>
		  </table> 
		 </form>
		</div>
		<div id="menu1" class="tab-pane fade">
		<form action="docLog.jsp" method="post">
			<table align="center">
		  	<tr>
		  		<td>Enter Login ID : </td>
		  		<td> <input type="text" name="did" id="login_id" placeholder="LOGIN ID"><i class="fa fa-user"></i>
		  			<span id="login_ids" class="text-danger" font-weight="bold"></span>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>Enter Password : </td>
		  		<td> <input type="password" name="dpwd" id="login_pass" placeholder="Password"><i class="fa fa-lock"></i>
		  		<span id="login_passs" class="text-danger" font-weight="bold"></span> </td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"></td>
		  	</tr>
		  	
		  	<tr>
		  		<td colspan="2" align="center"><input onClick="javascript:validate();" type="submit" value="LOGIN"></td>
		  	</tr>
		  </table>
		  </form> 
		</div>
		<div id="menu2" class="tab-pane fade">
		<form action="admLog.jsp" method="post">
			 <table align="center">
		  	<tr>
		  		<td>Enter Login ID : </td>
		  		<td> <input type="text" name="aid" id="login_id" placeholder="LOGIN ID"><i class="fa fa-user"></i>
		  			<span id="login_ids" class="text-danger" font-weight="bold"></span>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>Enter Password : </td>
		  		<td> <input type="password" name="apwd" id="login_pass" placeholder="Password"><i class="fa fa-lock"></i>
		  		<span id="login_passs" class="text-danger" font-weight="bold"></span> </td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"></td>
		  	</tr>
		  	
		  	<tr>
		  		<td colspan="2" align="center"><input onClick="javascript:validate();" type="submit" value="LOGIN"></td>
		  	</tr>
		  </table> 
		</div>
		<%-- <div id="menu3" class="tab-pane fade">
			 <table align="center">
		  	<tr>
		  		<td>Enter Login ID : </td>
		  		<td> <input type="text" name="login_id" id="login_id" placeholder="LOGIN ID"><i class="fa fa-user"></i>
		  			<span id="login_ids" class="text-danger" font-weight="bold"></span>
		  		</td>
		  	</tr>
		  	<tr>
		  		<td>Enter Password : </td>
		  		<td> <input type="password" name="pass" id="login_pass" placeholder="Password"><i class="fa fa-lock"></i>
		  		<span id="login_passs" class="text-danger" font-weight="bold"></span> </td>
		  	</tr>
		  	<tr>
		  		<td colspan="2"></td>
		  	</tr>
		  	
		  	<tr>
		  		<td colspan="2" align="center"><input onClick="javascript:validate();" type="submit" value="LOGIN"></td>
		  	</tr>
		  </table> 
		</div> --%>
		
	  </div>
	</div>

</body>
</html>
