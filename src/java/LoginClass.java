import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class LoginClass extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
          response.setContentType("text/html;charset=UTF-8");
          PrintWriter out = response.getWriter();
          int i;
        
          String Username=request.getParameter("uname");
          String Password=request.getParameter("pswd");
          
              if(validate(Username,Password)){
                  if("admin".equals(Username) && "admin".equals(Password)){
                      RequestDispatcher r=request.getRequestDispatcher("welcome.jsp");
            r.forward(request, response);
                  }
                  else{
                      HttpSession hp = request.getSession();
                      hp.setAttribute("nm", Username);
                      RequestDispatcher r2=request.getRequestDispatcher("uwelcome.jsp");
            r2.include(request, response);
                  }
           }
          
          else{
            out.print("Fill user and pass");
        }
    }
    public  boolean validate(String name,String pass){
         boolean st=false;
        
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/library","root","8600525761");
            PreparedStatement ps=con.prepareStatement("select * from login_table where user_id=? and password=?");
            ps.setString(1,name);
            ps.setString(2, pass);
            ResultSet rs=ps.executeQuery();
            st=rs.next();
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return st;
    }

 }
