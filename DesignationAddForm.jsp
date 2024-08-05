<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:Module name='DESIGNATION' />
<jsp:useBean id='designationBean' scope='request' class='com.krish.lalwani.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.krish.lalwani.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<h2>Designation (Add Module)</h2>
<script src='/styletwo/js/DesignationAddForm.js'></script>
<span class='error'><jsp:getProperty name='errorBean' property='error' /></span> <!-- Or we can use regular expression as ${errorBean.error} -->
<form method='post' action='/styletwo/AddDesignation.jsp' onsubmit='return validateForm(this)'>
Designation
<input type='text' id='title' name='title' maxlength='35' size='36' value=${designationBean.title}> <!-- We also can write <%=designationBean.getTitle()%> -->
<span id='titleErrorSection' class='error'></span><br> 
<button type='submit'>Add</button> 
<button type='button' onclick='cancelAddition()'>Cancel</button>
</form> 
<form id='cencelAdditionForm' action='/styletwo/Designations.jsp'>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />