package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Receiptpage extends HttpServlet{
	
	public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException
	{
		HttpSession session=req.getSession();
		
		String source=(String)session.getAttribute("source");
    	String destination=(String)session.getAttribute("destination");
    	String seats=(String)session.getAttribute("seats");
    	String date=(String)session.getAttribute("date");
    	String day=(String)session.getAttribute("day");
    	String passengername=(String)session.getAttribute("passengername");
    	String email=(String)session.getAttribute("email");
    	String mobileno=(String)session.getAttribute("mobileno"); 
		//System.out.println(source+" "+destination+" "+seats+" "+date+" "+day+" "+passengername+" "+email+" "+mobileno);
		res.sendRedirect("ReceiptPage.jsp?msg="+source+" "+destination+" "+seats+" "+date+" "+day+" "+passengername+" "+email+" "+mobileno+"");
	}

}
