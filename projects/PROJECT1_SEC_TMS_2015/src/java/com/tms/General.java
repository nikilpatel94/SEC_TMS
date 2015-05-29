/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.tms;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author Nikil's Delly
 */
public class General {
    
 public void generateReport(String type,String path)
 {
     try{
         
               Connection con=null;
                Class.forName("com.mysql.jdbc.Driver");
                String ConnectionUrl="jdbc:mysql://localhost/db_sec_tms";
                con = DriverManager.getConnection(ConnectionUrl,"root", "root");
         
         
     if(path==null || path.equals(""))
     {
         path="F:\\project\\SEC\\mid sem\\PROJECT1_SEC_TMS_2015\\web\\FileUpload\\AttendanceReport\\"+"attendace."+type;
     }
     else
         path+=new Date()+"."+type;
     System.out.println("Path is:"+path);
     InputStream ip=new FileInputStream(new File("F:\\project\\SEC\\mid sem\\PROJECT1_SEC_TMS_2015\\src\\java\\com\\tms\\newDesign.jrxml"));
     JasperDesign jdesign=JRXmlLoader.load(ip);
     JasperReport jreport=JasperCompileManager.compileReport(jdesign);
     
     Map<String,String> map=new HashMap<String,String>();
     map.put("jasper Report","employee report");
     
     JasperPrint jprint=JasperFillManager.fillReport(jreport, null, con);
     OutputStream os=new FileOutputStream(new File(path));
     
     if(type.equals("pdf"))
         JasperExportManager.exportReportToPdfStream(jprint,os);
     con.close();
     ip.close();
     os.close();
     }catch(Exception ex)
     {
         System.out.print("Something is wrong!; "+ex.toString());
     }
 }
    
public String dateCon(String date)
    {

        String chunks[]=date.split("/");
        //Because if no spliting symbol found then it will store whole string in chunks[0], so the condition!
        if(chunks.length>1)
        {
        String newDate="";
        newDate+=chunks[2]+"-"+chunks[0]+"-"+chunks[1];
        System.out.println("New Date is:"+newDate);
        return newDate;
        }
        else
            return date;
    }    
    public double calculateFees(long  stid)
    {
            double totalfees=0.0;
            double subfee=0.0;
            String sid="";
            String stdfee="";
            DBCon conobj= new DBCon();
            
            List<Object[]> rs1=null;
            rs1= conobj.FetchData("SELECT StudentIdFK,TotalAmount FROM studentfeesdetail where StudentIdFK='"+stid+"' "); 
            for(Object rowObject:rs1)
            {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                        sid=row[0].toString();
                    if(row[1]!=null)
                    stdfee=row[1].toString();
            }
            
            double fees=0.0;
            String sub="";
            List<Object[]> rs2=null;
            rs2=conobj.FetchData("SELECT subjectmaster.SubjectFees FROM subjectmaster,subjectchoicedetails where subjectchoicedetails.StudentIdFK='"+stid+"' AND subjectmaster.SubjectId=SubjectIdFK"); 
            for(Object rowObject:rs2)
            {
                    Object[] row2=(Object[]) rowObject;
                    if(row2[0]!=null)
                        subfee=Double.parseDouble(row2[0].toString());
                   totalfees+=subfee;
            }
            
            
           if( sid.equals("")|| subfee==0)
           {
               String str=conobj.INSUPDEL("INSERT INTO studentfeesdetail(TotalAmount) VALUES('"+totalfees+"')where StudentIdFK='"+stid+"' ");
           }
           else
           {
               String str=conobj.INSUPDEL("UPDATE `db_sec_tms`.`studentfeesdetail` SET `TotalAmount` = '"+totalfees+"' StudentIdFK='"+stid+"' " );
           }
           return totalfees;
    }

    
    
    public String sendMail(String to,String sub,String content,String user,String id)
    {
        String uname="";
        String pass="";
        String sign="";
                
        try {
            
         DBCon conobj =new DBCon();
                List<Object[]> rs1=null;
                if(id.equals(""))
                 
                    rs1= conobj.FetchData("SELECT mailUserName, mailPassword, mailSign from adminsettings;"); 
                else if(id!=null)
                    rs1= conobj.FetchData("SELECT FMailUserName, FMailPassword, FMailSign from facultysettings where UserNameFK='"+id+"';"); 
                for(Object rowObject:rs1)
                {
                    Object[] row=(Object[]) rowObject;
                    if(row[0]!=null)
                    uname=row[0].toString();
                    pass=row[1].toString();
                    sign=row[2].toString();
                }
                
                final String username = uname;
                final String password = pass;
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
                
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
                
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(to));
			message.setSubject(sub);
			message.setText(content+sign );
			Transport.send(message);
                        return "Success";
		} 

            catch (MessagingException e) {
                     return e.toString();
			
		}
        
    }
    
//    /**
//     *
//     * @param args
//     */
//    public static void main(String args[])
//    {
//        new General().generateReport("pdf","");
//        //System.out.println("New Date from main:"+d);
//    }

}
