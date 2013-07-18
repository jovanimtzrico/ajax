<%@page import="java.util.Random"%>
<%    //scriptlet
    String name=request.getParameter("name");
    String size=request.getParameter("size");
    String beverage=request.getParameter("beverage");
    String coffeeMaker=request.getParameter("coffeemaker");
    String result = coffeeMaker+name;
    Random r = new Random();
    int randomWaitingTime = r.nextInt(500);
    Thread.sleep(randomWaitingTime*100);
%>
<%=result%>