
<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<jsp:useBean id='messageBean' scope='request' class='com.krish.lalwani.hr.beans.MessageBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
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
<jsp:include page='/MasterPageBottomSection.jsp' />
