package day12_io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class IOEx01 {
	public static void main(String[] args) {
		//1byte씩 데이터 입출력하기: 키보드, 모니터
		//입력객체: InputStrean객체 ~ System.in
		//출력객체: OutputStream객체 ~ System.out
		InputStream is = System.in;
		OutputStream os = System.out;
		//try-with-resources 구문으로 정의하기
		try {
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
			
		}finally {//외부자원을 사용할 경우 예외와 관계없이 자원해제 처리를 해줌
			if(is != null) {try {is.close();} catch (IOException e) {}}
			if(os != null) {try {os.close();} catch (IOException e) {}}
		}//OutputStream객체의 close()메소드는 자원을 해제하기 전에 객체에 저장된 데이터를
		//먼저 출력시키고 close 처리함(flush()기능 + close()기능)
		
	}	
}
