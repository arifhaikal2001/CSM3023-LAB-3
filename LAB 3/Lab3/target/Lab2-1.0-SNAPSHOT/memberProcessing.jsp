<%-- 
    Document   : memberProcessing
    Created on : 17 Apr 2024, 2:59:47 pm
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lab 3 - Task 1</title>
    </head>
    <body>
        <h1>Passing data from main JSP's page to other JSP's page</h1>
            <form id="memberFrm" action="memberProcessing.jsp" method="post" onsubmit="return checkICNo()">
                <fieldset>
                    <%
                        String myIC = null;
                        String myName = null;
                        
                        myIC = request.getParameter("my_icno");
                        myName = request.getParameter("my_name");
                     %>           
                     
                     <p>Thank you for registering in this event..!</p>
                     <p>This is your details:</p>
                     <p>IC No : <%=myIC%></p>
                     <p>Name : <%=myName%></p>
                </fieldset>
            </form>
    </body>
    <footer>&copy2024-ARIF HAIKAL</footer>
</html>