<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<style type="text/css">
		
	</style>
</head>
<body>
	<%@page import="java.io.*"%>
	<%@page import="java.util.*"%>
	
	<%!
		String fname, lname, pword;
		int id;
		
		File x = new File("/home/aryan/Desktop/Project/main.txt");
		
		public void writeData() throws IOException 
		{
			FileWriter filewriter = new FileWriter(x, true);
			PrintWriter stream = new PrintWriter(new BufferedWriter(filewriter));
			
			stream.print(id + " ");
			stream.print(fname + " ");
			stream.print(lname + " ");
			stream.print(pword + "\n");

			stream.close();
		}
	%>
	<%
		fname = request.getParameter("fname");
		lname = request.getParameter("lname");
		pword = request.getParameter("pword");
		id = Integer.parseInt(request.getParameter("id"));
		
		writeData();
	%>
	
</body>
</html>
