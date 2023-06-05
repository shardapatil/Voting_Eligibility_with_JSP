<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.bundle.min.js" 
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe" 
	crossorigin="anonymous"></script>
	
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css"
	 rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" 
	 crossorigin="anonymous">
</head>
</head>
<body>

	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		if(age >=18)
		{
		//out.println(name + "\nAllowed to vote");
		out.println("<h1 style=\"color:green;text-align:center\">"+name+"\n allowed to vote</h1>");
		}
		else
		{
		out.println("<h1 style=\"color:red;text-align:center\">"+name+"\n not allowed to vote</h1>");
		}
	%>
	
	<div class="container">
	<h1 class="bg-info text-center">Voting Eligibility</h1>
	<div class="row col-12 border mt-5" >	
	<div >																				
		</div>
		<div class="row box-body">
			<div class="d-flex justify-content-center">
				<Form class="form" action="./checkEligibility.jsp" method="get">
					<div class="form-group">
					<br/>
						<label>Name</label>
						<br/>
						<input type="text" name="name" placeholder="Enter your Name">
						<br/>
						<br/>
					</div>		
					<div class="form-group">
					<br/>
						<label>Age</label>
						<br/>
						<input type="number" name="age" placeholder="Enter your age">
						<br/>
						<br/>
					</div>	
					<br/>
					<input type="submit" class="btn btn-block btn-success" value="Click to Check">
					<br/>
					<br/>
				</Form>
			</div>
		</div>
		</div>
	</div>
</body>
</html>