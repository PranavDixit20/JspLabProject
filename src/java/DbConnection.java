import java.io.*;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;


public class DbConnection extends HttpServlet {
        @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
          response.setContentType("text/html;charset=UTF-8");
         // PrintWriter out = response.getWriter();
          int i;
          
         ObjectOutputStream oos =new ObjectOutputStream(response.getOutputStream());
        
          String Username=request.getParameter("name");
          String Password=request.getParameter("pass");
          
              if(validate(Username,Password)){
                  //if("admin".equals(Username) && "admin".equals(Password)){
                      oos.writeObject("success");
                  }
                  else{
                      oos.writeObject("fail");
                  }
          // }
          
          
          
    }
    public static boolean validate(String name,String pass){
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
