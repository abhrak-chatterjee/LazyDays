package com.capgemini.lazydays.main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class UserDaoImpl {
Connection connection = null;
public void connectDB() throws ClassNotFoundException, SQLException
{
Class.forName("oracle.jdbc.driver.OracleDriver");
connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "abhrak", "abhrak");
}  
public int findByUserMail(String userMail)
{  
try
    {
connectDB();
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery("SELECT userMail FROM USERLIST");
        while (resultSet.next())
        {
            if((userMail.equals(resultSet.getString("userMail"))) )
            {
            return 1;
            }  

        }
        return -1;
        
    }        
    catch(Exception exception)
    {
        System.out.println("Error!!");

    }
return -1;
}  
public int findByPhone(String phone)
{  
try
    {
connectDB();
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery("SELECT phone FROM USERLIST");
        while (resultSet.next())
        {
            if((phone.equals(resultSet.getString("phone"))) )
            {
            return 1;
            }  

        }
        return -1;
        
    }        
    catch(Exception exception)
    {
        System.out.println("Error!!");

    }
return -1;
}  
public int findByPassword(String password)
{  
try
    {    connectDB();
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery("SELECT password FROM USERLIST");
       while (resultSet.next())
        {
            if((password.equals(resultSet.getString("password"))) )
            {
            return 1;
            }  

        }
        return -1;        
    }        
    catch(Exception exception)
    {
        System.out.println("Error!!");
    }
return -1;
}
public int save(String userName,String userMail,String phone,String password)
{
try
{
connectDB();
Statement statement = connection.createStatement();
String query = "INSERT INTO userlist " +
                "VALUES ('"+userName+"','"+userMail+"','"+phone+"','"+password+"')";
if(findByUserMail(userMail)==1 || findByPhone(phone)==1)
return -1;
statement.executeUpdate(query);
return 1;
        
    }
catch(Exception exception)
    {
        System.out.println("Error!!");
    }
return -1;
 
}
public boolean isUserExist(String userMail,String phone)
{
if(findByUserMail(userMail)==1 || findByPhone(phone)==1)
return true;
else 
return false;
}
public String findByUserName(String userMail) {
try
    {

  connectDB();
Statement statement = connection.createStatement();
ResultSet resultSet = statement.executeQuery("SELECT userMail,userName FROM USERLIST");
       
        while (resultSet.next())
             {
                 if((userMail.equals(resultSet.getString("usermail"))))
                 {
                  return resultSet.getString("userName");
                 }  

             }
         
           return null;
       }
        catch(Exception exception)
    {
        System.out.println("Error!!");
    }
return null;
}

}


