<%-- 
    Document   : temp
    Created on : 29 Jan, 2017, 5:17:26 PM
    Author     : Pranav
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table align="center" width="100%" cellpadding="15" cellspacing="15" border="0">
             <tr>
                 <td><b>ID</b></td>
                 <td><b>BooK NamE</b></td>
                 <td><b>BooK QunT</b></td>
                 <td><b>StatuS</b></td>
             </tr>
        <%
              
             try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","8600525761");
            PreparedStatement ps=con.prepareStatement("select * from book_list where book_name = ?");
            ps.setString(1, request.getParameter("srch"));
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
        %>
        
    <tr>
        <td align="center"> <%= rs.getString("id")%></td>
          <td align="center"><%=rs.getString("book_name")%></td>
          <td align="center"> <%=rs.getString("book_qunt")%></td>
          <td align="center"><%=rs.getString("status")%></td>
    </tr>
    <%
        }

}
        catch(Exception e){
            e.printStackTrace();
        }
        
        
    %>
    
        
        </table>
    </body>
</html>
