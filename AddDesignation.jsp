<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:Module name='DESIGNATION' />
<jsp:useBean id='designationBean' scope='request' class='com.krish.lalwani.hr.beans.DesignationBean' />
<jsp:setProperty name='designationBean' property='*' />
<jsp:forward page='/addDesignation' />