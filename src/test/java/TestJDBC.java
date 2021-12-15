import java.sql.*;    
public class TestJDBC {
  private final static String DB_URL = "jdbc:mysql://localhost:3306/gestconv?autoReconnect=true&useSSL=false";
  private final static String USER = "demoUser";
  private final static String PASS = "demoUser";

  public static void main(String[] args) {
    Connection conn = null;  
    try {    
      Class.forName("com.mysql.cj.jdbc.Driver");
      System.out.println("Connecting to database...");    
      conn = DriverManager.getConnection(DB_URL,USER,PASS);
      System.out.println("Connected...");
    } catch (Exception e) {    
      e.printStackTrace();    
    } finally {    
      if (conn != null) {    
        try {    
          conn.close();    
        } catch (SQLException e) {    
          // ignore    
        }    
      }    
    }            
  }    
}
