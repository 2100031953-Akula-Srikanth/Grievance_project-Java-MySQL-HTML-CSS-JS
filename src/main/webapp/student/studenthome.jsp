<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="studenthomestyle.css">
    <title>Student Profile</title>
</head>
<body>
    <div class="container">
        <div class="content"><p>Make sure you complain when you need to!!</p><ul><li><a href="/">home</a></li>
        <li><a href="">copyit</a></li>
        <li><a href="">knowit</a></li>
        <li><a href="">support</a></li></ul></div>

        <div class="profile">
            <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQanlasPgQjfGGU6anray6qKVVH-ZlTqmuTHw&usqp=CAU" alt="no image available">
            <div class="details">
                <p>Details:</p>
                <p>ID: <%= session.getAttribute("studentId") %></p>
                <p>Name: <%= session.getAttribute("studentName") %></p>
				<p>Email: <%= session.getAttribute("studentemail") %></p>
            </div>
        </div>
        <div class="form"> 
        <form action="studentform" method="post" enctype="multipart/form-data">
                    <div class='input-fields'>
                        <label for="complaint_severity">Nature of Complaint</label><br>
                        <select class='input-line full-width' name='nature' required>
                            <option value='discipline'>Disciplinary or behavioral</option>
                            <option value='finance'>Financial or finances</option>
                            <option value='housing'>Housing and Residential Life</option>
                            <option value='wellbeing'>Health and Wellness or Wellbeing</option>
                            <option value='administrative'>Administrative</option>
                            <option value='amenities'>Campus Facilities or Amenities</option>
                            <option value='extracurricular'>Extracurricular</option>
                            <option value='tech'>Technology and IT</option>
                            <option value='communication'>Communication</option>
                        </select>
                        <br><br>                      <label for="level">Previous actions taken</label>

                      <div class="radio">
                          <div class="radiobutton"> <input type="radio" id="yes" name="action" value="yes">
                        <label for="yes">YES</label></div>
                    <div class="radiobutton"><input type="radio" id="no" name="action" value="no">
                     <label for="no">NO</label>
                    </div>
                    </div>
                        <label for="level">Severity Level</label><br>
                        <select class='input-line full-width' name='level' required>
                            <option value='low'>Low</option>
                            <option value='medium'>Medium</option>
                            <option value='high'>High</option>
                            <option value='urgent'>Urgent</option>
                        </select>
                        <label for="description">Description of the Issue</label><br>
                        <textarea placeholder='Description of the Issue' class='input-line full-width' name='description' rows='8' required></textarea>
					<div>
					<label for="box">I agree to the terms and conditions and privacy policy.</label>
	 <input type="checkbox" name="box" required></div><br><br>
                    </div>
                    <button class='ghost-round full-width' type='submit'>Submit</button>
                </form>
        </div>
    </div>
  
</body>
</html>
