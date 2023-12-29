package day12_io;

import java.io.File;
import java.io.IOException;

public class FIleEx {

	public static void main(String[] args) {
		//java.io.File클래스에 있는 메소드들 사용해보기
		//자바에서는 File클래스 객체에 파일(child)과 디렉토리(parent)를 모두 포함시킴
		
		//File f1 = new File("test.txt");//파일 객체 생성
		//try {f1.createNewFile();}catch(IOException e) {e.printStackTrace();}
		//디렉토리 파일 객체 생성
		/*
		 * File f2 = new File("aaa"); f2.mkdir();//실제 디렉토리를 시스템에 생성함
		 */		
		//bbb폴더에 test2.txt파일 생성하기
		
		/*
		 * File f3 = new File("aaa/test2.txt"); try { f3.createNewFile(); } catch
		 * (IOException e) { e.printStackTrace(); }
		 */	
		
		File f4 = new File("bbb");
		f4.mkdir();
		File f5 = new File("bbb/test3.txt");
		try {
			f5.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		
		
		System.out.println("실행 완료");
	}
}
