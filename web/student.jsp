<%-- 
    Document   : studentlist
    Created on : 6 Jan, 2017, 1:55:40 AM
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
        <style>
            header#page_header nav ul li{
                list-style: none;
            }
            a{
                text-decoration: none;
                float:left;
                height:40px;
                line-height: 40px;
                padding: 0 10px;
                margin: 0 5px;
                border-top-left-radius: 8px;
                border-top-right-radius: 8px;
                background-color: #12aa21;
                font-size: 20px;
                color: #ffffff;
                font-family: arial,verdana,sans-serif;
            }
                a:hover{
                background-color: #432234;
            }
        </style>
    </head>
    <body>
            <header id="page_hrder">
            <nav>
                <ul>
                    <li><a href="welcome.jsp">Home</a></li>
                    <li><a href="#">Student List</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </nav>
                
            </header>
        <table  width="100%">
            <tr>
                <td><hr></td>
                
            </tr>
        </table>
    
        <table align="center" cellpadding="15" cellspacing="15" border="0">
            <tr><td align="center"><b>Student List</b></td></tr>
            <tr>
                 <td><b>Student Name</b></td>
                 <td><b>Student Info</b></td>
                 <td><b>Book Name</b></td>
                 <td><b>Book No</b></td>
                 <td><b>Date</b></td>
                 <td><b>Last Date</b></td>
                 <td><b>Contact</b></td>
                 <td><b>Deposit</b></td>
                 <td><b>Charge</b></td>
                 <td><b>Status</b></td>
             </tr>
        <%
               
             try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","8600525761");
            PreparedStatement ps=con.prepareStatement("select * from admin_table");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
        %>
        
        <tr> 
        <td> <%=rs.getString("student_name")%></td>
        <td><%=rs.getString("student_info")%></td>
        <td><%=rs.getString("book_name")%></td>
        <td> <%=rs.getString("no_of_book")%></td>
        <td><%=rs.getString("assign_date")%></td>
        <td><%=rs.getString("due_date")%></td>
        <td> <%=rs.getString("contact_no")%></td>
        <td><%=rs.getString("deposit_amt")%></td>
        <td><%=rs.getString("due_charge")%></td>
        <td> <%=rs.getString("status")%></td>
        </tr>
    <%
        }

}
        catch(Exception e){
            e.printStackTrace();
        }%>
        
        </table>
        
    </body>
</html>
