

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>welcome Page</title>
    </head>
    <body background="images/a.jpg">
        <form method="POST" action="DbConnection">
        <table width="30%" height="200px" border="0" align="center">
            <tr align="center"> <td> <font color="black" size="6">  Login </font> </td> </tr>
            <tr><td height="20"></td></tr>
            <tr> <td> <font color="black" size="4"> Username </font> </td> </tr>
            <td> <input type="text" name="uname" patterns="[a-z,A-Z,0-9]" style="width:120%"/></td>
            <tr><td height="10"></td></tr>
            <tr>  <td> <font color="black" size="4"> Password </font> </td> </tr>
            <td> <input type="password" name="pswd" style="width:120%"/> </td> 
            <tr>  <td align="center"><font color="green"><input type="submit" value="login" style="width:100%"/></font> </td> </tr>
        </table>
        </form>
    </body>
</html>
