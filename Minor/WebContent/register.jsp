<!DOCTYPE html>
<html lang="en">
<head>
  	<link rel="stylesheet" type="text/css" href="css/bootstrap.css">\
  	<title>REGISTRATION</title>
	<link rel="stylesheet" type="text/css" href="css/animate.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<script type="text/javascript" src="js/jquery.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<link href="https://fonts.googleapis.com/css?family=Poppins" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  <!--	<style>
		body
		{font-family: 'Laila', serif;}
		td
		{	
			padding: 18px;
		}
		#grad1
		{
		  height: 55px;
		  background-image:url(Schreenshot29.png);
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
			margin-top: 3%;
			margin-bottom:3%;
			box-shadow: 5px 5px 7px 2px rgba(255,0,0,0.50);
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
		
		input:hover{box-shadow: 0 4px 16px 0 rgba(255,0,0,0.40), 0 6px 30px 0 rgba(255,0,0, 0.19);}
		
	</style>-->
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
				margin-top: 3%;
				margin-bottom:3%;
				box-shadow: 5px 5px 7px 2px rgba(4,140,227,0.40);
			}
			input ,select,textarea
			{
				border:none;
				box-shadow:  inset 0 0 3px #000000;
				font-size:15px;
			}
			input[type=text], select,textarea
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
			select:focus + i{color:dodgerblue;}
			textarea:focus + i{color:dodgerblue;}
			input:focus + i{color:dodgerblue;}
			
			
			select:focus,textarea:focus,input:focus{
			box-shadow: 0 4px 16px 0 rgba(4,140,227,0.40), 0 6px 30px 0 rgba(4,140,227, 0.19);
			}
			
			select:hover,textarea:hover,input:hover{box-shadow: 0 4px 16px 0 rgba(4,140,227,0.40), 0 6px 30px 0 rgba(4,140,227,0.40);}
			
		</style>
	<script>
	</script>
</head>
<body id="grad1">

	<div class="container login">
	  <h2>REGISTRATION FORM</h2>
	  <ul class="nav nav-tabs">
		<li class="active"><a data-toggle="tab" href="#home">FOR PATIENT</a></li>
		<li><a data-toggle="tab" href="#menu1">FOR DOCTOR</a></li>
		<li><a data-toggle="tab" href="#menu2">FOR ADMIN</a></li>
	  </ul>

	  <div class="tab-content">
		<div id="menu2" class="tab-pane fade">
		 <form action="admReg.jsp" method="post" > 
		  <table align="center" style="position: relative;">
                <tr>
                        <td>Name : 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <input type="text" name="aNm" id="first_name" placeholder="Name" required>
                            <span id="first_names" class="text-danger" font-weight="bold"></span>
                        </td>
              </tr>
                    <tr>
                        <td>DOB : 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <input type="date"  name="aDob" id="enrol_id" placeholder="Date Of Birth" required> 
                            <span id="enroll_ids" class="text-danger" font-weight="bold"></span>
                        </td>
                      </tr>
                    <tr>
                   <td>Enter Gender:
                     <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
                       <td> <input type="radio" name="aGndr" value="MALE"><span>&nbsp; MALE&nbsp; </span> 
                            <input type="radio" name="aGndr" value="FEMALE" ><span>&nbsp;FEMALE</span> 
                                       <span id="genders" class="text-danger" font-weight="bold"></span>
                  </td>
              </tr>
                    <tr>
                        <td>Qualification : 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <input type="text" name="aQua" id="enrol_id" placeholder="qualification" required> 
                            <span id="enroll_ids" class="text-danger" font-weight="bold"></span>
                        </td>
                      </tr>
                      <tr>
                        <td>Contact Number : 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <input type="text" name="aContct" id="mobile_no" placeholder="contact number" required>
                            <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                        </td>
              </tr>
               <tr>
                        <td>Email : 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <input type="text" name="aEmail" id="mobile_no" placeholder="email" required>
                            <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                        </td>
              </tr>
                    <tr>
                        <td>Address: 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <textarea rows="5" cols="14" name="aAdd" placeholder="full adderss" required></textarea>
                         </td>
                    </tr>
                    <tr>
                        <td>Enter Login ID : 
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                        <td> <input type="text" name="aLog" id="login" placeholder="LOGIN ID" required> 
                            <span id="login_id" class="text-danger" font-weight="bold"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>Enter Password :
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
                        <td> <input type="password" name="aPass" id="pass" placeholder="Password" required> 
                            <span id="loginpasss" class="text-danger" font-weight="bold"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>Confirm Password :
                        <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
                        <td> <input type="password" name="aRpass" id="repass" placeholder="Reenter Password" required> 
                            <span id="repasss" class="text-danger" font-weight="bold"></span>
                        </td>
                    </tr>
                    
		  	<tr>
		  		<td colspan="2" align="center"><input type="submit" value="REGISTER"></td>
		  	</tr>
		  </table> 
			</form>
		</div>
		<div id="menu1" class="tab-pane fade">
		  <form action="docReg.jsp" method="post" >
			  <table align="center" style="position: relative;">
                    <tr>
                            <td>Name : 
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                            <td> <input type="text" name="dNm" id="first_name" placeholder=" Name" required>
                                <span id="first_names" class="text-danger" font-weight="bold"></span>
                             </td>
                        </tr>
                        <tr>
                            <td>DOB : 
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                            <td> <input type="date" name="dDob" id="enrol_id" placeholder="Date of birth" required> 
                                <span id="enroll_ids" class="text-danger" font-weight="bold"></span>
                            </td>
                          </tr>
                          <tr>
                                  <td> Gender:
                                      <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
                                          <td> <input type="radio" name="dGndr" value="MALE"><span>&nbsp; MALE&nbsp; </span> 
                                          <input type="radio" name="dGndr" value="FEMALE" ><span>&nbsp;FEMALE</span> 
                                          <span id="genders" class="text-danger" font-weight="bold"></span>
                               </td>
                       </tr>
                       <tr>
                            <td>Address: 
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                            <td> <textarea rows="5" cols="14" name="dAdd" placeholder="full adderss" required></textarea>
                             </td>
                          </tr>
                          <tr>
                                  <td> Cinic Address(if any): 
                                  <td> <textarea rows="5" cols="14" name="dCliadd" placeholder="full adderss" required></textarea>
                                   </td>
                              </tr>
                              <tr>
                                      <td>Hosptial Address(if any): 
                                      
                                      <td> <textarea rows="5" cols="14" name="dHosadd" placeholder="full adderss" required></textarea>
                                       </td>
                                  </tr>
                        <tr>
                            <td> Experience
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                              <td> 
                                  <select name="dExp" id="area_name" placeholder="experience">
                                      <option value="1">1 years</option>
                                      <option value="2">2 years</option>
                                      <option value="3">3 years</option>
                                      <option value="4">4 years</option>
                                      <option value="more">more than 4 years</option>
                                  </select> 
                                <span id="area_names" class="text-danger" font-weight="bold"></span>
                            </td>
                        </tr>
                        <tr>
                                  <td>Qualification : 
                                  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                  <td> <input type="text" name="dQua" id="qualification" placeholder="qualification" required>
                                      <span id="quals" class="text-danger" font-weight="bold"></span>
                                   </td>
                              </tr>
                              <tr>
                                      <td>Mobile Number : 
                                      <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                      <td> <input type="text" name="dMob" id="mobile_no" placeholder="Mobile Number" required>
                                          <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                                       </td>
                              </tr>
                              <tr>
                                      <td>Landline Number : 
                                      <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                      <td> <input type="text" name="dLand" id="mobile_no" placeholder="Landline Number" required>
                                          <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                                       </td>
                              </tr>
                              <tr>
                                      <td>Email : 
                                      <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                      <td> <input type="text" name="dEmail" id="mobile_no" placeholder="Email" required>
                                          <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                                      </td>
                              </tr>
                              <tr>
                                      <td>Special Achievement : 
                                      <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                      <td> <input type="text" name="dSpe" id="mobile_no" placeholder="Achievement" required>
                                          <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                                      </td>
                              </tr>
                        <tr>
                            <td>Enter Login ID : 
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                            <td> <input type="text" name="dLog" id="login" placeholder="LOGIN ID" required> 
                                <span id="login_id" class="text-danger" font-weight="bold"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Enter Password :
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
                            <td> <input type="password" name="dPass" id="pass" placeholder="Password" required> 
                                <span id="loginpasss" class="text-danger" font-weight="bold"></span>
                            </td>
                        </tr>
                        <tr>
                            <td>Confirm Password :
                            <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
                            <td> <input type="password" name="dRpass" id="repass" placeholder="Re-enter Password" required> 
                                <span id="repasss" class="text-danger" font-weight="bold"></span>
                            </td>
                        </tr>
                        <tr>
                                <td>Fee : 
                                <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                 <td> <input type="text" name="dFee" id="mobile_no" placeholder="fee" required>
                                 <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                                  </td>
                        </tr>
                        <tr>
                                <td>Timing : 
                                <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
                                 <td> <input type="time" name="dTfr" id="mobile_no" required>
                                 <span id="mobile_nos" class="text-danger" font-weight="bold"></span>&nbsp
                                 to &nbsp<input type="time" name="dTto" id="mobile_no" required>
                                 <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
                                  </td>
                        </tr>
		  	
		  	<tr>
		  		<td colspan="2" align="center"><input  type="submit" value="REGISTER"></td>
		  	</tr>
		  </table> 
			</form>
		</div>
		<div id="home" class="tab-pane fade in active">
        <form action="patReg.jsp" method="post" >
		 <table align="center">
	
				<tr>
						<td>Name :
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						<td> <input type="text" name="pNm" id="pass" placeholder="Enter Name" required> 
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					
					<tr>
						<td>Login ID :
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						<td> <input type="text" name="pLog" id="pass" placeholder="Enter Login ID" required> 
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					
					<tr>
						<td>Password :
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						<td> <input type="password" name="pPass" id="pass" placeholder="Enter Password" required> 
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					
					<tr>
						<td>Confirm Password :
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						<td> <input type="password" name="pRpass" id="pass" placeholder="Re-enter Password" required> 
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					
					<tr>
						<td>Age :
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						<td> <input type="text" name="pAge" id="pass" placeholder="Enter Age" required> 
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					<tr>
						<td>Marital Status:
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						  <td> <input type="radio" name="pMar"   id="pass" value="Married"><span>&nbsp;Married&nbsp;</span> 
							  <input type="radio" name="pMar" id="pass" value="Unmarried"><span>&nbsp;Unmarried&nbsp;</span>
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					
					<tr>
						<td>Father/Husband Name :
						<span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span> </td>
						<td> <input type="text" name="pHnm" id="pass" placeholder="Enter name" required> 
							<span id="loginpasss" class="text-danger" font-weight="bold"></span>
						</td>
					</tr>
					<tr>
						  <td>Contact Number : 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="text" name="pContact" id="mobile_no" placeholder="Enter Mobile Number" required>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					<tr>
						  <td>Email : 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="text" name="pEmail" id="mobile_no" placeholder=" Enter Email" required>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					<tr>
						  <td>Emergency Contact Number : 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="text" name="pEmcon" id="mobile_no" placeholder=" Enter Emergency Number" required>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td>Address : 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <textarea rows="5" cols="14" name="pAdd" id="mobile_no" placeholder="Enter Address" required></textarea>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
				  
					<tr>
						  <td>Allergy: 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="radio" name="pAller"   id="pass" value="Yes"><span>&nbsp;Yes&nbsp;</span> 
							  <input type="radio" name="pAller" id="pass" value="NO"><span>&nbsp;No&nbsp;</span>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td> Medication: 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="radio" name="pMed"   id="pass" value="Yes"><span>&nbsp;Yes&nbsp;</span> 
							  <input type="radio" name="pMed" id="pass" value="NO"><span>&nbsp;No&nbsp;</span>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					<tr>
						  <td> Alcohol: 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="radio" name="pAlco"   id="pass" value="Yes"><span>&nbsp;Yes&nbsp;</span> 
							  <input type="radio" name="pAlco" id="pass" value="NO"><span>&nbsp;No&nbsp;</span>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td> Smoke: 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <input type="radio" name="pSmoke"   id="pass" value="Yes"><span>&nbsp;Yes&nbsp;</span> 
							  <input type="radio" name="pSmoke" id="pass" value="NO"><span>&nbsp;No&nbsp;</span>
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td> Medical History(if any): 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <textarea rows="5" cols="14" name="pMedhis"   id="pass" placeholder=" Enter Medical History"></textarea> 
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td> Surgical History(if any): 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <textarea rows="5" cols="14" name="pSurhis"   id="pass" placeholder=" Enter Surgical History"></textarea> 
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td> Family Medical History(if any): 
						  <span style="color:red;position: absolute;top:13px;right: 2Zpx;">*</span></td>
						  <td> <textarea rows="5" cols="14" name="pFammed"   id="pass" placeholder=" Enter Family Medical History"></textarea> 
							  <span id="mobile_nos" class="text-danger" font-weight="bold"></span>
						   </td>
					  </tr>
					  <tr>
						  <td colspan="2" align="center"><input type="submit" value="REGISTER"></td>
				  </tr>
			
		  	  
		  </table> 
		</div>
	  </div>
	</div>

</body>
</html>
