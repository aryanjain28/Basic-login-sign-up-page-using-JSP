<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Login page.</title>
</head>
<body>
	
	<%@page import="java.io.*"%>
	<%@page import="java.util.*"%>

	<%!
		String id, pword;
		
		Scanner x;
			
		void readData() throws IOException
		{
			HttpServletResponse res = null;
			
			try
			{
				x = new Scanner(new File("/home/aryan/Desktop/Project/main.txt"));
			}
			catch(Exception e)
			{
				
			}
			
			while(x.hasNext())
			{
				if(x.next().equals(id))
				{
					x.next();
					x.next();
					if(x.next().equals(pword))
					{
						res.getWriter().print("Welcome to the greatest website ever!");
					}
					else
					{
						res.getWriter().print("Password and ID don't match!!");
					}
				}
				else
				{
					res.getWriter().print("Password and ID don't match!!");
				}
			}
		}
	
	%>
	<%
		id = request.getParameter("id");
		pword = request.getParameter("pword");
		
		readData();
	%>

</body>
</html>
