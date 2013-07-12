<%
  String phone = request.getParameter("phone");
  String address = "no se encontro";
  if (phone.equalsIgnoreCase("57120119")) {
      address = "Calle Leon #51 Jardines de Guadalupe Nezahualcoyotl Estado de Mexico, 57140";
  }
%>
<%=address%>