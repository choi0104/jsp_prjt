package day12_io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class IOEx03 {
	public static void main(String[] args) {
		try (InputStream is = System.in;
			OutputStream os = System.out;){

			//byte 배열을 생성해서 버퍼로 이용하기
			byte [] buffer = new byte [50];
			System.out.println("주소 입력: ");
			is.read(buffer);//1byte를 읽어서 byte배열에 저장해줌
			//read(byte [] buffer): 내부적으로 byte배열에 한 byte씩 읽어서 구현하도록 정의되어져 있음
			//아래와 같은 매개변수로 정의할 수도 있음
			//read(byte [] buffer, 0, buffer.length)
			System.out.println("OutputStream을 통한 출력");
			os.write(buffer);
			os.flush();//출력객체에 저장된 값을 강제 출력함
		}catch(IOException e) {
			e.printStackTrace();
		}
		//OutputStream객체의 close()메소드는 자원을 해제하기 전에 객체에 저장된 데이터를
		//먼저 출력시키고 close 처리함(flush()기능 + close()기능)
	}	
}
