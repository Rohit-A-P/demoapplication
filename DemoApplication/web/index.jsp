<%-- 
    Document   : index
    Created on : 4 Jan, 2023, 6:41:42 PM
    Author     : LENOVO
--%>

<%@page import="java.util.List"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="ejb.ListElementsRemote"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%!
   private static ListElementsRemote values;

   public void jspInit() {
        try {
            InitialContext ic = new InitialContext();
            values = (ListElementsRemote)ic.lookup("java:global/EJBStateful-1.0-SNAPSHOT/ListElements");

}
        catch(Exception e) {
            System.out.print(e);
} 

   } 
%>    

<%
    if(request.getParameter("addNum")!=null) {
        int number = Integer.parseInt(request.getParameter("t1"));
        values.addElement(number);
    }    
    if(request.getParameter("remNum")!=null) {
        int number = Integer.parseInt(request.getParameter("t1"));
        values.removeElement(number);
    }
%>    

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello</h1>
        <form name="abc" method="post">
            <input type="text" name="t1"><br>
            <input type="submit" value="Add" name="addNum"><br>
            <input type="submit" value="Remove" name="remNum"><br>
            <%
                if(values!=null){
                    List<Integer> numbers = values.getElements();
                    for(int value : numbers) {
                        out.println("<br>" + value);   
                    }
                    out.println("<br> Size =" + numbers.size());
                }
            %>

        </form>
    </body>
</html>
