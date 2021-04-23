package servlets;


import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Adminservlet extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		try {
			String userid=req.getParameter("userid");
			String password=req.getParameter("password");
			HttpSession session=req.getSession();
			session.setAttribute("userid", userid);
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2DB","root","Mannheim@99");
		//	Connection con=DriverManager.getConnection("jdbc:mysql://remotemysql.com:3306/y8Di6i7cMc","y8Di6i7cMc","UDRMxsodUY");
		//	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/phase2_project1","root","rootraja");
			Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from admin where Userid='"+userid+"' and Password='"+password+"'");
			if(rs.next())
			{
				res.sendRedirect("Admin.jsp");
				
			}
			else
			{
				res.sendRedirect("AdminPage.jsp");
			}
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		
		
	}

}

