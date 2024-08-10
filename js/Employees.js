function Employee() //this is class 
{
this.employeeId=""; //this is public properties 
this.name="";
this.designation="";
this.dateOfBirth="";
this.gender="";
this.isIndian=true;
this.basicSalary="";
this.panNumber="";
this.aadharCardNumber="";
}
var employees=[];
employee=new Employee();
employee.employeeId="A100001";
employee.name="Ashok Sing";
employee.designation="Supervisor";
employee.dateOfBirth="22/06/2002";
employee.gender="M";
employee.isIndian=true;
employee.basicSalary="500000.00"
employee.panNumber="P1234";
employee.aadharCardNumber="A1234";
employees[0]=employee;
employee=new Employee();
employee.employeeId="A100012";
employee.name="Preeti Lalwani";
employee.designation="Manager";
employee.dateOfBirth="24/05/1980";
employee.gender="F";
employee.isIndian=false;
employee.basicSalary="987978.00"
employee.panNumber="P123466";
employee.aadharCardNumber="A123466";
employees[1]=employee;
employee=new Employee();
employee.employeeId="A100014";
employee.name="Krish Lalwani";
employee.designation="Developer";
employee.dateOfBirth="28/06/2003";
employee.gender="M";
employee.isIndian=true;
employee.basicSalary="1000000.00"
employee.panNumber="P12341";
employee.aadharCardNumber="A12341";
employees[2]=employee;
employee=new Employee();
employee.employeeId="A100015";
employee.name="Anjali Mehra";
employee.designation="Developer";
employee.dateOfBirth="04/05/2004";
employee.gender="F";
employee.isIndian=true;
employee.basicSalary="9000000.00"
employee.panNumber="P12346";
employee.aadharCardNumber="A12346";
employees[3]=employee;
var selectedRow=null;
var i=0;
function selectEmployee(row,employeeId)
{
if(row==selectedRow) return;
if(selectedRow!=null)
{
selectedRow.style.background='white'
selectedRow.style.color='black';
}
row.style.background='#7C7B7B';
row.style.color='white';
selectedRow=row;
for(i=0;i<employees.length;i++)
{
if(employees[i].employeeId==employeeId)
{
document.getElementById('detailsPanel_employeeId').innerHTML=employees[i].employeeId;
document.getElementById('detailsPanel_name').innerHTML=employees[i].name;
document.getElementById('detailsPanel_designation').innerHTML=employees[i].designation;
document.getElementById('detailsPanel_dateOfBirth').innerHTML=employees[i].dateOfBirth;
document.getElementById('detailsPanel_gender').innerHTML=employees[i].gender;
document.getElementById('detailsPanel_isIndian').innerHTML=((employees[i].isIndian) ? 'Yes' : 'No');
document.getElementById('detailsPanel_basicSalary').innerHTML=employees[i].basicSalary;
document.getElementById('detailsPanel_panNumber').innerHTML=employees[i].panNumber;
document.getElementById('detailsPanel_aadharCardNumber').innerHTML=employees[i].aadharCardNumber;
break;
}
}
}
