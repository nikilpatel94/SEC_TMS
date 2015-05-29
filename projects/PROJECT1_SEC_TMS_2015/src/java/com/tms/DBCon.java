/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package com.tms;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.Part;
/**
 *
 * @author Stellans TechnoSoft
 */

@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class DBCon {
      Connection con=null;
    Statement st=null;
    PreparedStatement statement=null;
    ResultSet rs=null;
    String str=null;
    PreparedStatement pstmt=null;

     void connection1()
    {
        try
        {
          //  Properties prop = new Properties();  
           //     InputStream inputStream = DBCon.class.getClassLoader().getResourceAsStream("/db.properties");  
            //    prop.load(inputStream);  
                Class.forName("com.mysql.jdbc.Driver");
                String ConnectionUrl="jdbc:mysql://localhost/db_sec_tms";
                con = DriverManager.getConnection(ConnectionUrl,"root", "root");
        }catch(SQLException ex)
         {
                str=(ex.getMessage().toString());
         }
        catch(ClassNotFoundException ce)
        {
            str=(ce.getMessage().toString());
        }catch(Exception e)
        {
            str=(e.getMessage().toString());
        }
    }
     
     public String INSUPDEL(String qry)
    {
        try
        {
            connection1();
            st=con.createStatement();
            st.executeUpdate(qry);
                str="Success";
       //       pstmt = con.prepareStatement(qry);
      // pstmt.execute();
            con.close();
        }catch(SQLException ex)
        {
            str=(ex.getMessage().toString());
        }
        catch(Exception e)
        {
            str=(e.getMessage().toString());
            }
        return str;
    }
      
      
      public List<Object[]>  FetchData (String  qry)
      {
          List<Object[]> result =new ArrayList<Object[]>();
          try
          {
              connection1();
              st=con.createStatement();
              rs=st.executeQuery(qry);
              while(rs.next())
              {
                  ResultSetMetaData meta= rs.getMetaData();
                  int col=meta.getColumnCount();
                  Object[] row= new Object[col];
                  for(int i=1;i<=col;i++)
                  {
                      row[i-1]=rs.getString(i);
                  }
                  result.add(row);
              }
              con.close();
              
              
              
          }catch(Exception e)
          {
              str=(e.getMessage().toString());
          }
          return result;
      }
      
      
      
      public String uploadPhoto(Part filePart) throws IOException
      {     
        FileInputStream inputStream = null; // input stream of the upload file
        int rows;
        // obtains the upload file part in this multipart request
        if (filePart != null) {
            
          
            inputStream = (FileInputStream) filePart.getInputStream();
        }
         
        try {
            // connects to the database
            connection1();
            // constructs SQL statement
            String sql = "INSERT INTO studentmaster_temp (StudentPhoto) values (?)";
            statement = con.prepareStatement(sql);
              rows =statement.executeUpdate();
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(1, inputStream);
            }
 
            // sends the statement to the database server
            if (rows > 0) {
                str = "Success";
            }
        }catch(Exception e)
          {
              str=(e.getMessage().toString());
          } finally {
            if (con != null) {
                // closes the database connection
                try {
                    con.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            
        }
    return str;
}
}
