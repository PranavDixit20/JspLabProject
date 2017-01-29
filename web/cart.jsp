<%-- 
    Document   : cart
    Created on : 29 Jan, 2017, 4:26:04 PM
    Author     : Pranav
--%>

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
                    <li><a href="uwelcome.jsp">Home</a></li>
                    <li><a href="info.jsp">Info</a></li>
                    <li><a href="#">Cart</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </nav>
                
            </header>
        <table  width="100%">
            <tr>
                <td><hr></td>
                
            </tr>
        </table>
    </body>
</html>
