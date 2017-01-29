import java.sql.*;

public class LoginClass {
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
