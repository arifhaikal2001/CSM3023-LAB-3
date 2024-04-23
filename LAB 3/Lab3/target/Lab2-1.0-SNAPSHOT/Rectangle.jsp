<%-- 
    Document   : Rectangle
    Created on : 23 Apr 2024, 11:35:59 am
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle</title>
    </head>
    <body>
        <h2>Rectangle</h2>
            <form action="<%= request.getContextPath() %>/Rectangle.jsp" method="post">
                Rectangle 1:<br>
                Length: <input type="number" step="any" name="length1" required><br>
                Width: <input type="number" step="any" name="width1" required><br>
                <br>
                Rectangle 2:<br>
                Length: <input type="number" step="any" name="length2" required><br>
                Width: <input type="number" step="any" name="width2" required><br>
                <br>
                <input type="submit" value="Compare Areas">
            </form>

            <%-- Processing form submission and displaying result --%>
            <% if (request.getMethod().equals("POST")) {
                    double length1 = Double.parseDouble(request.getParameter("length1"));
                    double width1 = Double.parseDouble(request.getParameter("width1"));
                    double length2 = Double.parseDouble(request.getParameter("length2"));
                    double width2 = Double.parseDouble(request.getParameter("width2"));

                    double area1 = length1 * width1;
                    double area2 = length2 * width2;

                    String result;
                    if (area1 > area2) {
                        result = "Rectangle 1 has a greater area.";
                    } else if (area1 < area2) {
                        result = "Rectangle 2 has a greater area.";
                    } else {
                        result = "Both rectangles have the same area.";
                    }
            %>
            <p><%= result %></p>
            <% } %>
    </body>
</html>