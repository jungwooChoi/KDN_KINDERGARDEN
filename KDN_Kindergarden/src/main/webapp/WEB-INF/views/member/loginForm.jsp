<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<link href="css/bootstrap.css" rel="stylesheet">  
<link href="css/style1.css" rel="stylesheet">  
<script type="text/javascript">
	function index(){
		var frm = document.getElementById("frm");
		frm.action="home.do";
		frm.submit();
	}
</script>
</head>
<body>
	<div class="row">
		<div class="col-lg-3 col-md-3 col-sm-4">
			<a class="list-group-item" href="loginForm.do">�α���</a>
		</div>
		<div class="col-lg-9">
			<form action="login.do" method="post" id="loginfrm">
				<div class="form-group">
					<label for="getId" class="col-lg-2 control-label"><h2>ID</h2></label>
					<div class="col-lg-10" style = "font-size: 20px;font-family: 'Binggrae'; font-weight: bold">
						���̵� &nbsp; <input type="text" name="id" id="id"
							class="form-control"/> ��й�ȣ &nbsp; 
							<input type="password" name="pw" id="pw" class="form-control" /> 
						<input type="submit" id="submit" value="Login" class="btn"/>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>