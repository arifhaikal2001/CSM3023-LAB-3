<%-- 
    Document   : TemperatureConvert
    Created on : 23 Apr 2024, 11:35:40 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temperature Convert</title>
    </head>
    <body>
        <h2>Temperature Convert</h2>
            <form action="<%= request.getContextPath() %>/TemperatureConvert.jsp" method="post">
                Enter temperature in Celsius: <input type="number" step="any" name="celsius" required><br>
                <input type="submit" value="Convert to Fahrenheit">
            </form>
            <%
                if (request.getMethod().equals("POST")) {
                    double celsius = Double.parseDouble(request.getParameter("celsius"));
                    double fahrenheit = (9.0/5.0) * celsius + 32;
            %>
            <p><%= String.format("Temperature in Fahrenheit: %.2f", fahrenheit) %></p>
            <%
                }
            %>
    </body>
</html>