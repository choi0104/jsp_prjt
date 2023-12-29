package day12_io;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

public class IOEx06_Data {

	public static void main(String[] args) {
		//파일에 기본 데이터 타입으로 데이터를 출력하고 파일에서 기본 데이터타입으로 데이터 읽어오기
		//파일 경로: D : /Temp/data.dat
		try(FileOutputStream fos = new FileOutputStream("D:/Temp/data.dat");
			DataOutputStream dos = new DataOutputStream(fos);){

			dos.writeUTF("홍길동");
			dos.writeDouble(3.14);
			dos.writeInt(100);
			
			dos.writeUTF("이순신");
			dos.writeDouble(6.28);
			dos.writeInt(200);
			
			dos.flush();
			
			System.out.println("출력 완료");
		}catch(IOException e) {
			System.out.println("기본 데이터타입 출력시 예외 발생");
		}
		
		try(FileInputStream fis = new FileInputStream("D:/Temp/data.dat");
			DataInputStream dis = new DataInputStream(fis);){

			System.out.println(dis.readUTF());
			System.out.println(dis.readDouble());
			System.out.println(dis.readInt());
		
			System.out.println(dis.readUTF());
			System.out.println(dis.readDouble());
			System.out.println(dis.readInt());
				
			System.out.println("출력 완료");
		}catch(IOException e) {
			System.out.println("기본 데이터타입 출력시 예외 발생");
		}

	}
}
