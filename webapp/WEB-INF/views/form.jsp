<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap 4 Form</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>
<script src="resources/js/postJqueryAjax.js"></script>
</head>
<body>

	<div class="container">

		<h3 style="margin-top: 20px; margin-bottom: 20px">Bootstrap 4
			Form - JQuery + SpringBoot RestAPI</h3>

		<h5>1. Stacked Form</h5>

		<div class="row">
			<div class="col-md-7">
				<form id="stackedForm">
					<div class="form-group">
						<label for="stackedFirstName">FirstName:</label> <input
							type="text" class="form-control" id="stackedFirstName"
							placeholder="Enter FirstName" />
					</div>
					<div class="form-group">
						<label for="stackedLastName">LastName:</label> <input type="text"
							class="form-control" id="stackedLastName"
							placeholder="Enter LastName" />
					</div>
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>


				<br />
				<h5>2. In-line Form</h5>

				<form class="form-inline" id="inlineForm">
					<label for="inlineFirstName">FirstName:</label> <input type="text"
						class="form-control" id="inlineFirstName"
						placeholder="Enter FirstName" /> <label for="inlineLastName">LastName:</label>
					<input type="text" class="form-control" id="inlineLastName"
						placeholder="Enter LastName" />
					<button type="submit" class="btn btn-primary">Submit</button>
				</form>

				<div id="postResultMsg" style="margin-top: 20px"></div>
			</div>
		</div>
	</div>

</body>
</html>