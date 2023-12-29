package day12_io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class IOEx02 {
	public static void main(String[] args) {
		//1byte씩 데이터 입출력하기: 키보드, 모니터
		//입력객체: InputStrean객체 ~ System.in
		//출력객체: OutputStream객체 ~ System.out
		//try-with-resources 구문으로 정의하기
		//외부자원을 사용 후 finally 구문(외부자원 해제 구문)을 자동으로 처리해줌
		try (InputStream is = System.in;
			OutputStream os = System.out;){

			//영어나 숫자 1개 입력받기
			System.out.println("영어나 숫자 1개 입력하시오.");
			int input = is.read();//1byte를 읽어서 0~255 사이의 아스키코드값 반환
			System.out.println("입력 아스키코드값: " + input);
			System.out.println("입력 문자값: " + (char)input);

			System.out.println("OutputStream을 통한 출력");
			os.write(input);
			os.flush();//출력객체에 저장된 값을 강제 출력함
		}catch(IOException e) {
			e.printStackTrace();
		}
		//OutputStream객체의 close()메소드는 자원을 해제하기 전에 객체에 저장된 데이터를
		//먼저 출력시키고 close 처리함(flush()기능 + close()기능)
	}	
}
