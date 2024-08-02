<jsp:useBean id='designationBean' scope='request' class='com.krish.lalwani.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.krish.lalwani.hr.beans.ErrorBean' /> 
<!DOCTYPE HTML>
<html lang='en'>
<head>
<meta charset='utf-8'>
<title>HR Application</title>
<script src='/styletwo/js/ConfirmDeleteDesignation.js'></script>
<link rel='stylesheet' type='text/css' href='/styletwo/css/styles.css' />
</head>
<body>
<!-- Main Continer starts here -->
<div class='main-container'>
<!-- header starts here -->
<div class='header'>
<a href='/styletwo/index.html'><image src='/styletwo/images/logo.png' class='logo'></a><div class='brand-name'>Krish Lalwani</div>
</div> <!-- header ends here -->
<!-- content-section starts here -->
<div class='content-panel'>
<!-- left panel starts here -->
<div class='content-left-panel'>
<b>Designations</b><br>
<a href='/styletwo/Employees.jsp'>Employees</a><br><br>
<a href='/styletwo/index.html'>Home</a>
</div> <!-- left panel ends here -->
<!-- right panel starts here -->
<div class='content-right-panel'>
<h2>Designation (Delete Module)</h2>
<span class='error'><jsp:getProperty name='errorBean' property='error' /></span> <!-- Or we can use regular expression as ${errorBean.error} -->
<form method='post' action='/styletwo/DeleteDesignation.jsp' onsubmit='return validateForm(this)'>
Designation :&nbsp;&nbsp;
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
<b>${designationBean.title}</b><br><br> <!-- We also can write <%=designationBean.getTitle()%> -->
Are you sure, you want to delete ?
<span id='titleErrorSection' class='error'></span><br> 
<button type='submit'>Yes</button> 
<button type='button' onclick='cancelDeletion()'>No</button>
</form> 
</div> <!-- right panel ends here -->
</div> <!-- conten-section ends here -->
<!-- footer starts here -->
<div class='footer'>
&copy; Krish Lalwani 2050
</div> <!-- footer ends here -->
</div> <!-- Main Continer ends here -->
<form id='cancelDeletionForm' action='/styletwo/Designations.jsp'>
</form>
</body>
</html>