<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:If condition='${username==null}'>
<jsp:forward page='/LoginForm.jsp' />
</kl:If>
<!DOCTYPE HTML>
<html lang='en'>
<head>
<meta charset='utf-8'>
<title>HR Application</title>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css'>
</head>
<body>
<!-- Main Continer starts here -->
<div class='main-container'>
<!-- header starts here -->
<div class='header'>
<a href='/styletwo/index.jsp'><img src='/styletwo/images/logo.png' class='logo' /></a>
<div class='brand-name'>Krish Lalwani</div>
<div class='username'>
<img src='/styletwo/images/usernameicon.png' /><b>${username}</b>&nbsp;
<a href='/styletwo/logout'>Logout</a>
</div>
</div> <!-- header ends here -->
<!-- content-section starts here -->
<div class='content-panel'>
<!-- left panel starts here -->
<div class='content-left-panel'>



<kl:If condition='${module==DESIGNATION}'>
<b>Designations</b><br>
</kl:If>
<kl:If condition='${module!=DESIGNATION}'>
<a href='/styletwo/Designations.jsp'>Designations</a><br>
</kl:If>

<kl:If condition='${module==EMPLOYEE}'>
<b>Employees</b><br>
</kl:If>
<kl:If condition='${module!=EMPLOYEE}'>
<a href='/styletwo/Employees.jsp'>Employees</a><br><br>
</kl:If>

<kl:If condition='${module!=HOME}'>
<a href='/styletwo/index.jsp'>Home</a>
</kl:If>



</div> <!-- left panel ends here -->
<!-- right panel starts here -->
<div class='content-right-panel'>
