
<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<jsp:useBean id='messageBean' scope='request' class='com.krish.lalwani.hr.beans.MessageBean' />
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
<h2>${messageBean.heading}</h2>
${messageBean.message}<br> <!-- meessageBean Representing an bean that bean representing an address of class for that class getMessage() method runs by this regular expression -->
<kl:If condition='${messageBean.generateButtons}'>
<table>
<tr>
<td>
<form action='/styletwo/${messageBean.buttonOneAction}'>
<button>${messageBean.buttonOneText}</button> <!-- if we not provide type='submit' so it will be by default -->
</form>
</td>

<kl:If condition='${messageBean.generateTwoButtons}'> <!-- searching happened for loaded file .tld(tag library discriptor) by the help of kl prefex -->
<!-- searching for tag If in loaded ds and create object of class which this tag is reffering -->
<!-- and run method set(attribut name which we given (Condition)) and this method calls doStartTag if returns 1 so body of If tag will be processed -->
<td>
<form action='/styletwo/${messageBean.buttonTwoAction}'>
<button>${messageBean.buttonTwoText}</button> <!-- if we not provide type='submit' so it will be by default -->
</form>
</td>
</kl:If> <!-- after processing doEndTag method runs and if return 6 so rest of the jsp will be processed if 6 so not -->
</tr>
</table>
</kl:If>
</div> <!-- right panel ends here -->
</div> <!-- conten-section ends here -->
<!-- footer starts here -->
<div class='footer'>
&copy; Krish Lalwani 2050
</div> <!-- footer ends here -->
</div> <!-- Main Continer ends here -->
</body>
</html>