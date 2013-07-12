<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html> 
    <head>
        <title>Break Neck Pizza Delivery</title>
        <link rel="stylesheet" type="text/css" href="breakneck.css" media="screen" />
    </head>
    <body>
        <p><img src="breakneck-logo.gif" alt="Break Neck Pizza" /></p>
        <p>Your order will be delivered to:</p>
        <div class="customer-data">
            <%=request.getParameter("phone")%><br/>
            <%=request.getParameter("address")%> 
        </div>
        <p>We have your order down as:</p>
        <p class="customer-data">
            <%=request.getParameter("order")%> 
        </p>
    </body>
</html>
