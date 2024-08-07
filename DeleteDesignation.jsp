<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:If condition='${username==null}'>
<jsp:forward page='/LoginForm.jsp' />
</kl:If>
<kl:FormResubmitted>
<kl:Module name='Home' />
<jsp:forward page='/notifyFormResubmission' />
</kl:FormResubmitted>
<kl:Module name='DESIGNATION' />
<jsp:useBean id='designationBean' scope='request' class='com.krish.lalwani.hr.beans.DesignationBean' />
<jsp:setProperty name='designationBean' property='*' />
<jsp:forward page='/deleteDesignation' />
