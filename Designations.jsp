<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:Module name='DESIGNATION' />
<jsp:useBean id='errorBean' scope='request' class='com.krish.lalwani.hr.beans.ErrorBean' /> 
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styletwo/js/ConfirmDeleteDesignation.js'></script>
<span class='error'><jsp:getProperty name='errorBean' property='error' /></span> <!-- Or we can use regular expression as ${errorBean.error} -->
<h2>Designations</h2>
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
<kl:EntityList populatorClass='com.krish.lalwani.hr.bl.DesignationBL' populatorMethod='getAll' name='dBean'>
<tr>
<td>${serialNumber}</td>
<td>${dBean.title}</td>
<td style='text-align:center'> <a href='/styletwo/editDesignation?code=${dBean.code}'>Edit</a> </td>
<td style='text-align:center'> <a href='/styletwo/confirmDeleteDesignation?code=${dBean.code}'>Delete</a> </td>
</tr>
</kl:EntityList>
</tbody>
</table>
<form id='cancelDeletionForm' action='/styletwo/Designations.jsp'>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />
