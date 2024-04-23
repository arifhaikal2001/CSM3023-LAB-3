<%-- 
    Document   : processCalculateCarLoan
    Created on : 19 Apr 2024, 9:55:01 pm
    Author     : ARIF HAIKAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Car Loan Result</title>
</head>
<body>
     <h1>Perform Car Loan Calculation</h1>
    <%  
        // Retrieve parameters from the request
        String loanAmountStr = request.getParameter("loanAmount");
        String loanPeriodStr = request.getParameter("loanPeriod");
        
        // Parse parameters to integers
        int loanAmount = Integer.parseInt(loanAmountStr);
        int loanPeriod = Integer.parseInt(loanPeriodStr);
        
        // Calculate annual interest rate based on loan period
        double annualInterestRate;
        if (loanPeriod < 5) {
            annualInterestRate = 0.028; // 2.8% annual interest rate for loan period less than 5 years
        } else {
            annualInterestRate = 0.045; // 4.5% annual interest rate for loan period 5 years or more
        }
        
        double monthlyInterestRate = annualInterestRate / 12;
        int totalMonths = loanPeriod * 12;
        
        // Calculate monthly payment
        double monthlyPayment = (loanAmount * monthlyInterestRate) / (1 - Math.pow(1 + monthlyInterestRate, -totalMonths));
        
        // Calculate total loan with interest
        double totalLoan = monthlyPayment * totalMonths;
        
        // Display result
    %>
    
    <fieldset>
        <h1 style="color: blue;">Details of car loan:</h1>   
        <p>Loan Request: RM <%= loanAmount %></p>
        <p>Period of payment: <%= loanPeriod %> years</p>
        <p>Total Loan (+interest): RM <%= String.format("%.2f", totalLoan) %></p>
    </fieldset>
</body>
<footer>&copy2024-ARIF HAIKAL</footer>
</html>
