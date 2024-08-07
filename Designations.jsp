<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:If condition='${username==null}'>
<jsp:forward page='/LoginForm.jsp' />
</kl:If>
<kl:Module name='DESIGNATION' />
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styletwo/js/ConfirmDeleteDesignation.js'></script>
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
<form id='cancelDeletionForm' action='/styletwo/Designations.jsp'>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />
