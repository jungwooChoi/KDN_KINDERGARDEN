<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="UTF-8">
<link href="css/bootstrap.css" rel="stylesheet">    
<title>Insert title here</title>
</head>
<body>
<div class="page-header" id="banner">
      <div class="row">
          <div class="col-lg-3 col-md-3 col-sm-4">
            <div class="list-group table-of-contents">
              <a class="list-group-item" href="#navbar">Navbar</a>
              <a class="list-group-item" href="#typography">Typography</a>
              <a class="list-group-item" href="#tables">Tables</a>
              <a class="list-group-item" href="#forms">Forms</a>
              <a class="list-group-item" href="#navs">Navs</a>
              <a class="list-group-item" href="#indicators">Indicators</a>
              <a class="list-group-item" href="#progress-bars">Progress bars</a>
              <a class="list-group-item" href="#containers">Containers</a>
              <a class="list-group-item" href="#dialogs">Dialogs</a>
            </div>
          </div>
          <div style="margin: 10px auto; width: 50%; background : white; height: 700px">
				<div class="form-group">
					<label class="control-label" for="focusedInput">Focused
						input</label> <input class="form-control" id="focusedInput" type="text"
						value="This is focused...">
				</div>

				<div class="form-group">
					<label class="control-label" for="disabledInput">Disabled
						input</label> <input class="form-control" id="disabledInput" type="text"
						placeholder="Disabled input here..." disabled="">
				</div>

				<div class="form-group has-warning">
					<label class="control-label" for="inputWarning">Input
						warning</label> <input type="text" class="form-control" id="inputWarning">
				</div>

				<div class="form-group has-error">
					<label class="control-label" for="inputError">Input error</label> <input
						type="text" class="form-control" id="inputError">
				</div>

				<div class="form-group has-success">
					<label class="control-label" for="inputSuccess">Input
						success</label> <input type="text" class="form-control" id="inputSuccess">
				</div>

				<div class="form-group">
					<label class="control-label" for="inputLarge">Large input</label> <input
						class="form-control input-lg" type="text" id="inputLarge">
				</div>

				<div class="form-group">
					<label class="control-label" for="inputDefault">Default
						input</label> <input type="text" class="form-control" id="inputDefault">
				</div>

				<div class="form-group">
					<label class="control-label" for="inputSmall">Small input</label> <input
						class="form-control input-sm" type="text" id="inputSmall">
				</div>

				<div class="form-group">
					<label class="control-label">Input addons</label>
					<div class="input-group">
						<span class="input-group-addon">$</span> <input type="text"
							class="form-control"> <span class="input-group-btn">
							<button class="btn btn-default" type="button">Button</button>
						</span>
					</div>
				</div>
			</div>
        </div>
      </div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="js/bootstrap.min.js"></script>      
</body>
</html>