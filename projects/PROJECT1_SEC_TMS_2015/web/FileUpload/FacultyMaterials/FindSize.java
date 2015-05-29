import java.io.*;
import java.util.Scanner;
public class FindSize
{
	public static void main(String args[])
	{
		Scanner ip=new Scanner(System.in);
		String path="";
		double filesize1=0.0;
		double filesize2=0.0;
		double ratio=0.0;
		File f1=new File("J:\\CCNA.pdf");
		File f2=new File("J:\\CCNA.rar");
		if(f1.exists() && f2.exists()){
 
			filesize1 = f1.length();
			filesize2=f2.length();
			ratio=(filesize2/filesize1)*100;
			System.out.print("Compression ratio is ");
			System.out.printf("%.2f ",ratio);
			System.out.print("%.");
		}
		else
		{
		 System.out.println("File does not exists!");
		}
	}
}