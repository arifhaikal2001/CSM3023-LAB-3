<%-- 
    Document   : ArrayList
    Created on : 22 Apr 2024, 10:46:17 pm
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Use Java ArrayList</title>
    </head>
    <body>
        <h1>Use JSP Page Directive</h1>
       <% 
          ArrayList<String> studentList = new ArrayList<String>();
          
          studentList.add(0, "Mohamad Azam");
          studentList.add(1, "Peter Chong");
          studentList.add(2, "Rahimah Mansor");
          studentList.add(3, "Sri Devi");
          studentList.add(4, "Ng Hue Ween");
          studentList.add(5, "S. Nagarajan");
          
          out.println("<p><font color=\"blue\">The number of records in ArrayList are " + studentList.size() + "</font></p>");
          
          for (int i=0; i< studentList.size(); i++) {
              out.println("<p><font color=\"blue\">Record " + (i+1) + " is " + studentList.get(i) + "</font></p>");
          }

       %>
    </body>
    <footer>&copy2024-ARIF HAIKAL</footer>
</html>