<%@page import="java.util.Random"%>
<%
    String order = request.getParameter("order");
    String address = request.getParameter("address");


    if (order.length() <= 0) {
        response.setStatus(HttpServletResponse.SC_LENGTH_REQUIRED);
        return;
    }

    if (address.length() <= 0) {
        response.setStatus(HttpServletResponse.SC_LENGTH_REQUIRED);
        return;
    }

    String status = "In Progress";
    Random r = new Random();
    int randomWaitingTime = r.nextInt(50);
    Thread.sleep(randomWaitingTime * 5);

    status = "Cooking";
    randomWaitingTime = r.nextInt(50);
    Thread.sleep(randomWaitingTime * 5);
    status = "Cooked and ready for prepping";

    status = "Preparing for Delivering";
    randomWaitingTime = r.nextInt(50);
    Thread.sleep(randomWaitingTime * 5);
    status = "Prepped for Delivery";




    if (status == "Prepped for Delivery") {
        status = "Delivering Order";
        randomWaitingTime = r.nextInt(50);
        Thread.sleep(randomWaitingTime * 5);
        status = "Pizza Delivered.";
    } else {
        status = "Not prepered yet";
    }

    String deliveryEstimate = String.valueOf(randomWaitingTime = r.nextInt(500));
%>
<%=deliveryEstimate%> 


