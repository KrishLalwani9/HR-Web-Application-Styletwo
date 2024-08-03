<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>

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
<h2>Designations</h2>
<span class='error'><jsp:getProperty name='errorBean' property='error' /></span> <!-- Or we can use regular expression as ${errorBean.error} -->
<table border='1'>
<thead>
<tr>
<th colspan='4' class='table-heading'>
<a href='/styletwo/DesignationAddForm.jsp'>Add New Designation</a>
</th>
</tr>
<tr>
<th style='width:60px;text-align:center'> S.NO </th>
<th style='width:200px'> Designation </th>
<th style='width:100px'> Edit </th>
<th style='width:100px'> Delete </th>
</tr>
</thead>
<tbody>
<kl:Designations>
<tr>
<td>${serialNumber}</td>
<td>${designationBean.title}</td>
<td style='text-align:center'> <a href='/styletwo/editDesignation?code=${designationBean.code}'>Edit</a> </td>
<td style='text-align:center'> <a href='/styletwo/confirmDeleteDesignation?code=${designationBean.code}'>Delete</a> </td>
</tr>
</kl:Designations>
</tbody>
</table>
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