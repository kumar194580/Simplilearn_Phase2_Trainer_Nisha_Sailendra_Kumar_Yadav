package servlets;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Ticketbooking extends HttpServlet{
	
	public void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException
	{
		String source=req.getParameter("source");
		String destination=req.getParameter("destination");
		String seats=req.getParameter("seats");
		String date=req.getParameter("date");
		
		
		
		
		String year=date.substring(0,4);
		String month=date.substring(5,7);
		String date1=date.substring(8,10);
		System.out.println(source+" "+destination+" "+seats+" "+date);
		System.out.println(year+" "+month+" "+date1);
		
		int lasttwoofyear=Integer.parseInt(year.substring(2,4));
		int divbyfour=lasttwoofyear/4;
		int date2=Integer.parseInt(date1);
		int year2=6;
		int month1=Integer.parseInt(month);
		int month2=0;
		int total=0;
		int resultday=0;
		String Day=null;
		switch(month1)
		{
			case 1:
			{
				month2=0;
				break;
			}
			case 2:
			{
				month2=3;
				break;
			}
			case 3:
			{
				month2=0;
				break;
			}
			case 4:
			{
				month2=6;
				break;
			}
			case 5:
			{
				month2=1;
				break;
			}
			case 6:
			{
				month2=4;
				break;
			}
			case 7:
			{
				month2=6;
				break;
			}
			case 8:
			{
				month2=2;
				break;
			}
			case 9:
			{
				month2=5;
				break;
			}
			case 10:
			{
				month2=0;
				break;
			}
			case 11:
			{
				month2=3;
				break;
			}
			case 12:
			{
				month2=5;
				break;
			}
		}
		
		total=lasttwoofyear+divbyfour+date2+year2+month1;
		resultday=(total+2)%7;
		System.out.println(resultday);
		switch(resultday)
		{
			case 0:
			{
				Day="SUNDAY";
				break;
			}
			case 1: 
			{
				Day="MONDAY";
				break;
			}
			case 2:
			{
				Day="TUESDAY";
				break;
			}
			case 3:
			{
				Day="WEDNESDAY";
				break;
			}
			case 4:
			{
				Day="THURSDAY";
				break;
			}
			case 5:
			{
				Day="FRIDAY";
				break;
			}
			case 6:
			{
				Day="SATURDAY";
				break;
			}
		}
		HttpSession session=req.getSession();
		session.setAttribute("source", source);
		session.setAttribute("destination", destination);
		session.setAttribute("seats", seats);
		session.setAttribute("date", date);
		session.setAttribute("day", Day);
		System.out.print(Day);
		res.sendRedirect("ResultFlights.jsp?day="+Day+" "+source+" "+destination+" "+seats+" "+date+"");
	}


}
