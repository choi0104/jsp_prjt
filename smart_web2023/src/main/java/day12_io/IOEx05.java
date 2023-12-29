package day12_io;

import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.Writer;

public class IOEx05 {
	public static void main(String[] args) {
		//문자 단위로 입출력하기
		try (Reader reader = new InputStreamReader(System.in);
			Writer writer = new OutputStreamWriter(System.out);){

			//char 배열을 버퍼처럼 사용해서 입출력하기
			char [] buffer = new char[50];
			System.out.println("주소 입력: ");
			reader.read(buffer);//문자 단위로 데이터를 읽어서 char 배열에 저장함	
			System.out.println("Writer를 통한 출력");
			writer.write(buffer);
			writer.flush();//출력객체에 저장된 값을 강제 출력함
			
		}catch(IOException e) {
			e.printStackTrace();
		}
	}	
}
