package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Customerdetail extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String passengername=req.getParameter("passenger");
		String email=req.getParameter("email");
		String mobileno=req.getParameter("mobileno");
		
		HttpSession session=req.getSession();
		session.setAttribute("passengername", passengername);
		session.setAttribute("email", email);
		session.setAttribute("mobileno", mobileno);
		
		res.sendRedirect("Checkout.jsp");
	}


}
