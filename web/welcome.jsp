<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
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
                    <li><a href="#">Home</a></li>
                    <li><a href="student.jsp">Student List</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </nav>
                
            </header>
        <table  width="100%">
            <tr>
                <td><hr></td>
                
            </tr>
        </table>
        
         <table align="center" cellpadding="5" cellspacing="5" border="0">
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
            PreparedStatement ps=con.prepareStatement("select * from book_list");
            ResultSet rs=ps.executeQuery();
            while(rs.next()){
        %>
        
    <tr>
          <td align="center"> <%=rs.getString("id")%></td>
          <td align="center"><%=rs.getString("book_name")%></td>
          <td align="center"> <%=rs.getString("book_qunt")%></td>
          <td align="center"><%=rs.getString("status")%></td>
         
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
