package day12_io;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;

public class IOEx04 {
	public static void main(String[] args) {
		//문자 단위로 입출력하기
		try (Reader reader = new InputStreamReader(System.in);
			Writer writer = new OutputStreamWriter(System.out);){

			//키보드를 통해서 한 문자씩 읽고 모니터에 출력하기
			System.out.println("한글 한 글자 입력: ");
			int input = reader.read();//문자 단위로 읽어서 유니코드값으로 반환
			System.out.println("입력된 유니코드값: " + input);
		
			System.out.println("OutputStream을 통한 출력");
			writer.write(input);
			writer.flush();//출력객체에 저장된 값을 강제 출력함
			
		}catch(IOException e) {
			e.printStackTrace();
		}
	}	
}
