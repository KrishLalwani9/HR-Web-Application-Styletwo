<%@taglib uri='/WEB-INF/mytags/kltags.tld' prefix='kl' %>
<kl:Module name='EMPLOYEE' />
<jsp:useBean id='errorBean' scope='request' class='com.krish.lalwani.hr.beans.ErrorBean' /> 
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styletwo/js/Employees.js'></script>
<script>
var dynamicRow;

function populateEmployeesGridTable()
{
var employeesGridTable=document.getElementById('employeesGridTable');
let employeesGridTableBody=employeesGridTable.getElementsByTagName('tbody')[0];
let employeesGridTableBodyRowTemplate=employeesGridTableBody.getElementsByTagName('tr')[0];
employeesGridTableBodyRowTemplate.remove(); //removed from dom but not from memory
var employeesGridTableColumnsTemplateCollection=employeesGridTableBodyRowTemplate.getElementsByTagName('td');
let cellTemplate;
let dynamicRowCells;
let placeHolderFor;
let employee;
for(let k=0;k<employees.length;k++)
{
dynamicRow=employeesGridTableBodyRowTemplate.cloneNode(true); //for deep cloning write true
employeesGridTableBody.appendChild(dynamicRow); 
//dynamicRow.addEventListener('click',selectEmployee(dynamicRow,employee.employeeId));
dynamicRowCells=dynamicRow.getElementsByTagName('td');
employee=employees[k];
for(let i=0;i<dynamicRowCells.length;i++)
{
cellTemplate=dynamicRowCells[i];
placeHolderFor=cellTemplate.getAttribute('placeHolderId');
if(placeHolderFor==null) continue;
if(placeHolderFor=='serialNumber') cellTemplate.innerHTML=k+1;
else if(placeHolderFor=='employeeId') cellTemplate.innerHTML=employee.employeeId;
else if(placeHolderFor=='name') cellTemplate.innerHTML=employee.name;
else if(placeHolderFor=='designationCode') cellTemplate.innerHTML=employee.designationCode;
else if(placeHolderFor=='designation') cellTemplate.innerHTML=employee.designation;
else if(placeHolderFor=='dateOfBirth') cellTemplate.innerHTML=employee.dateOfBirth;
else if(placeHolderFor=='gender') cellTemplate.innerHTML=employee.gender;
else if(placeHolderFor=='isIndian') cellTemplate.innerHTML=employee.isIndian;
else if(placeHolderFor=='basicSalary') cellTemplate.innerHTML=employee.basicSalary;
else if(placeHolderFor=='panNumber') cellTemplate.innerHTML=employee.panNumber;
else if(placeHolderFor=='aadharCardNumber') cellTemplate.innerHTML=employee.aadharCardNumber;
else if(placeHolderFor=='editOption') cellTemplate.innerHTML="<a href='/styletwo/editEmployee?employeeId="+employee.employeeId+"'>Edit</a>";
else if(placeHolderFor=='deleteOption') cellTemplate.innerHTML="<a href='/styletwo/confirmDeleteEmployee?employeeId="+employee.employeeId+"'>Delete</a>";
}
//dynamicRow.addEventListener('click',selectEmployee(dynamicRow,employee.employeeId));
//onclick='selectEmployee(this,"${employeeBean.employeeId}")'
} //employees loop emds here
alert(employees.length);
}
window.addEventListener('load',populateEmployeesGridTable); <!-- we are saying to window(the global variable) that when whole document is loaded in memory call this function -->
</script>
<link rel='stylesheet' type='text/css' href='/styletwo/css/employees.css' />
<!-- table panel starts here -->
<div class='employeeGrid'>
<h3>Employees</h3>
<table border='1' id='employeesGridTable'>
<thead>
<tr>
<th colspan='6' class='employeeGridHeader'>
<a href='/styletwo/getEmployeeAddForm'>Add Employee</a>
</th>
</tr>
<tr>
<th class='employeeGridSNOColumnTitle'>S.No.</th>
<th class='employeeGridEmployeeIdColumnTitle'>EmployeeId</th>
<th class='employeeGridNameColumnTitle'>Name</th>
<th class='employeeGridDesignationColumnTitle'>Designation</th>
<th class='employeeGridEditOptionColumnTitle'>Edit</th>
<th class='employeeGridDeleteOptionColumnTitle'>Delete</th>
</tr>
</thead>
<tbody>

<tr style='cursor:pointer'>
<td style='text-align:right' placeHolderId='serialNumber'></td>
<td placeHolderId='employeeId'></td>
<td placeHolderId='name'></td>
<td placeHolderId='designation'></td>
<td style='text-align:center' placeHolderId='editOption'></td>
<td style='text-align:center' placeHolderId='deleteOption'></td>
</tr>

</tbody>
</table>
</div><!-- table panel ends here -->
<!-- details panel starts here -->
<div style='height:19vh;marigin:5px;padding:5px;border:1px solid black'>
<lable style='background:gray;color:white;padding-left:5px;padding-right:5px'>Details</lable>
<table border='0' width='100%'>
<tr>
<td>EmployeeId : <span id='detailsPanel_employeeId' style='margin-right:30px'></span></td>
<td>Name : <span id='detailsPanel_name' style='margin-right:30px'></span></td>
<td>Desigantion : <span id='detailsPanel_designation' style='margin-right:30px'></span></td>
</tr>
<tr>
<td>Date of birth : <span id='detailsPanel_dateOfBirth' style='margin-right:30px'></span></td>
<td>Gender : <span id='detailsPanel_gender' style='margin-right:30px'></span></td>
<td>IsIndian : <span id='detailsPanel_isIndian' style='margin-right:30px'></span></td>
</tr>
<tr>
<td>Basic Salary : <span id='detailsPanel_basicSalary' style='margin-right:30px'></span></td>
<td>PAN Number : <span id='detailsPanel_panNumber' style='margin-right:30px'></span></td>
<td>Aadhar Card Number : <span id='detailsPanel_aadharCardNumber' style='margin-right:30px'></span></td>
</tr>
</table>
</div><!-- details panel ends here -->
<jsp:include page='/MasterPageBottomSection.jsp' />
