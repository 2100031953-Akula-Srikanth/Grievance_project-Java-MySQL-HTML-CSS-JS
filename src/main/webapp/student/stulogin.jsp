<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
		<!DOCTYPE html>
	<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>admin login/signup</title>
		<link rel='stylesheet'
			href='https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css'>
		<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css'>
		<link rel="stylesheet" href="./style.css">
	</head>
	<body>
		<div class="section">
            <a href="/"><button class="custom-btn btn-3" ><span>Home</span></button></a>
			<div class="container">
				<div class="row full-height justify-content-center">
					<div class="col-12 text-center align-self-center py-5">
						<div class="section pb-5 pt-5 pt-sm-2 text-center">
							<h6 class="mb-0 pb-3"><span>Log In </span><span>Sign Up</span></h6>
							<input class="checkbox" type="checkbox" id="reg-log" name="reg-log" />
							<label for="reg-log"></label>
							<div class="card-3d-wrap mx-auto">
								<div class="card-3d-wrapper">
									<div class="card-front">
										<div class="center-wrap">
											<div class="section text-center">
												<h4 class="mb-4 pb-3">Log In</h4>
												<form action="studentlogin" method="post">
												<div class="form-group">
													<input type="text" name="id" class="form-style"
														placeholder="Your Student id" id="logemail" autocomplete="off">
													<i class="input-icon uil uil-at"></i>
												</div>
												<div class="form-group mt-2">
													<input type="password" name="password" class="form-style"
														placeholder="Your Password" id="logpass" autocomplete="off">
													<i class="input-icon uil uil-lock-alt"></i>
												</div>
											<input type="submit" value="Submit" class="btn mt-4">
												</form>

											</div>
										</div>
									</div>
									
									<div class="card-back">
										
											<div class="center-wrap">
												<div class="section text-center">
													<h4 class="mb-4 pb-3">Sign Up</h4>	
													<form action="studentsignup" method="post">
													<div class="form-group">
													
														<input type="text" name="name" class="form-style"
															placeholder="Your Full Name" id="logname"
															autocomplete="off">
														<i class="input-icon uil uil-user"></i>
													</div>
													<div class="form-group mt-2">
														<input type="text" name="id" class="form-style"
															placeholder="Your Student id" id="logid" autocomplete="off">
														<i class="input-icon uil uil-ankh"></i>
													</div>
													<div class="form-group mt-2">
														<input type="email" name="email" class="form-style"
															placeholder="Your Email" id="logemail" autocomplete="off">
														<i class="input-icon uil uil-at"></i>
													</div>
													<div class="form-group mt-2">
														<input type="password" name="password" class="form-style"
															placeholder="Your Password" id="logpass" autocomplete="off">
														<i class="input-icon uil uil-lock-alt"></i>
													</div>
													<input type="submit" value="Submit" class="btn mt-4">
												</form>
												</div>
											</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>

	</html>