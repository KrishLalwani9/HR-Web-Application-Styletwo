package com.krish.lalwani.hr.servlets;
import com.krish.lalwani.hr.beans.*;
import com.krish.lalwani.hr.dl.*;
import javax.servlet.*;
import javax.servlet.http.*;
public class DeleteDesignation extends HttpServlet
{
public void doGet(HttpServletRequest request,HttpServletResponse response)
{
try
{
DesignationDAO designationDAO=new DesignationDAO();
DesignationBean designationBean;
designationBean=(DesignationBean)request.getAttribute("designationBean");
int code=designationBean.getCode();
try
{
designationDAO.deleteDesignation(code);
MessageBean messageBean=new MessageBean();
messageBean.setHeading("Designation (Delete Module)");
messageBean.setMessage("Designation Deleted");
messageBean.setGenerateButtons(true);
messageBean.setGenerateTwoButtons(false);
messageBean.setButtonOneText("Ok");
messageBean.setButtonOneAction("Designation.jsp");
request.setAttribute("messageBean",messageBean);
RequestDispatcher requestDispatcher=request.getRequestDispatcher("/Notification.jsp");
requestDispatcher.forward(request,response);
}catch(DAOException daoException)
{
ErrorBean errorBean=new ErrorBean();
errorBean.setError(daoException.getMessage());
request.setAttribute("errorBean",errorBean);
RequestDispatcher requestDispatcher=request.getRequestDispatcher("ConfirmDeleteDesignation.jsp");
requestDispatcher.forward(request,response);
}
}catch(Exception exception)
{
RequestDispatcher requestDispatcher=request.getRequestDispatcher("/ErrorPage.jsp");
try
{
requestDispatcher.forward(request,response);
}catch(Exception e)
{
//do Nothing
}
}
}
public void doPost(HttpServletRequest request,HttpServletResponse response)
{
doGet(request,response);
}
}
