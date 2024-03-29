<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="en">
<head>
<title>Perfect Match Register Form Responsive Widget Template :: w3layouts</title>
<!-- Meta tag Keywords -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Perfect Match Register Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Meta tag Keywords -->
<!-- css files -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/other/style3.css" type="text/css" media="all" /> <!-- Style-CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/static/css/other/jquery-ui.css" />
<!-- //css files -->
<!-- web-fonts -->
<link href="//fonts.googleapis.com/css?family=Tangerine:400,700" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=GFS+Neohellenic:400,400i,700,700i&amp;subset=greek" rel="stylesheet">
<!-- //web-fonts -->
</head>
<body>
	<div class="center-container">
		<!--header-->
		<div class="header-w3l">
			<h1>Perfect Match Register Form</h1>
		</div>
		<!--//header-->
		<!--main-->
	<div class="agileits-register">
		<form action="#" method="post">
				<div class="w3_modal_body_grid">
					<span>Details For:</span>
					<select id="w3_country" onchange="change_country(this.value)" class="frm-field required">
						<option value="null">Select</option>
						<option value="null">Myself</option>   
						<option value="null">Son</option>   
						<option value="null">Daughter</option>   
						<option value="null">Brother</option>   
						<option value="null">Sister</option>  
						<option value="null">Relative</option>
						<option value="null">Friend</option>						
					</select>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Name:</span>
					<input type="text" name="Name" placeholder="Your Name" required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Phone Number</span>
					<input type="text" name="phone Number" placeholder="Your Phone Number" required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>Gender:</span>
					<div class="w3_gender">
						<div class="colr ert">
							<label class="radio"><input type="radio" name="radio" checked=""><i></i>Male</label>
						</div>
						<div class="colr">
							<label class="radio"><input type="radio" name="radio"><i></i>Female</label>
						</div>
						<div class="clear"> </div>
					</div>
					<div class="clear"> </div>
				</div>
				
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Date Of Birth:</span>
					<input class="date" id="datepicker" name="Text" type="text" value="mm/dd/yyyy" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = '2/08/2013';}" required="" />
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>religion:</span>
					<select id="w3_country1" onchange="change_country(this.value)" class="frm-field required"> 
						<option value="null">Select Religion</option>
						<option value="null">Muslim</option>
						<option value="null">Hindu</option>    
						<option value="null">Christian</option>   
						<option value="null">Sikh</option>   
						<option value="null">Jain</option>   
						<option value="null">Buddhist</option>
						<option value="null">No Religious Belief</option>   						
					</select>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid">
					<span>Email:</span>
					<input type="email" name="Email" placeholder="Your E-mail" required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3_modal_body_grid w3_modal_body_grid1">
					<span>Password:</span>
					<input type="password" name="Password" placeholder="Your Password " required=""/>
					<div class="clear"> </div>
				</div>
				<div class="w3-agree">
					<input type="checkbox" id="c1" name="cc">
					<label class="agileits-agree">I agree to the <a href="#">Terms and Conditions</a></label>
					<div class="clear"> </div>
				</div>
				<input type="submit" value="Register Here" />
				<div class="clear"></div>
			</form>
		</div>
		<div class="banner-left">
			<img src="${pageContext.request.contextPath}/resources/static/img/other/2.png" alt="">
		</div>
		
	<div class="clear"></div>
		<!--//main-->
		<!--footer-->
		<div class="footer">
			<h2>&copy; 2017 Perfect Match Register Form. All rights reserved | Design by <a href="http://w3layouts.com">W3layouts</a></h2>
		</div>
		<!--//footer-->
	</div>
	
<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/static/js/other/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- Calendar -->
<script src="${pageContext.request.contextPath}/resources/static/js/other/jquery-ui.js"></script>
	<script>
	  $(function() {
		$( "#datepicker" ).datepicker();
	 });
	</script>
<!-- //Calendar -->		

</body>
</html>