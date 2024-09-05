<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="./facstyle.css">
</head>
<body>
  <div class="container">
    <form class="signUp"  method="post" action="facultysignup">
      <h3>Create Your Account</h3>
      
      <input class="w100" name="name" type="text" placeholder="Your Name" reqired autocomplete='off' />
      <input class="w100" name="id"   type="text" placeholder="Your ID" reqired autocomplete='off' />
      <input class="w100" name="email"   type="email" placeholder="Insert eMail" reqired autocomplete='off' />
      
      <input type="password" name="password" placeholder="Insert Password" reqired />
      <button class="form-btn sx log-in" type="button">Log In</button>
      <button class="form-btn dx" type="submit">Sign Up</button>
    </form>
    <form class="signIn" method="get" action="facultylogin">
      <h3>Welcome</br>Back !</h3>
     
      <input type="text" name="id" placeholder="Your Id" autocomplete='off' reqired />
      <input type="password" name="password" placeholder="Your Password" reqired />
      <button class="form-btn sx back" type="button">Back</button>
      <button class="form-btn dx" type="submit">Log In</button>
    </form>
  </div>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <script>
    $(".log-in").click(function(){
  $(".signIn").addClass("active-dx");
  $(".signUp").addClass("inactive-sx");
  $(".signUp").removeClass("active-sx");
  $(".signIn").removeClass("inactive-dx");
});

$(".back").click(function(){
  $(".signUp").addClass("active-sx");
  $(".signIn").addClass("inactive-dx");
  $(".signIn").removeClass("active-dx");
  $(".signUp").removeClass("inactive-sx");
});
  </script>
</body>
</html>