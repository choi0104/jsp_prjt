package day12_io;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;

public class IOEx07_Object {
	public static void main(String[] args) {
		//객체 입출력 하기
		try(FileOutputStream fos = new FileOutputStream("D:/Temp/Student.ser");
			ObjectOutputStream oos = new ObjectOutputStream(fos);
			FileInputStream fis = new FileInputStream("D:/Temp/Student.ser");
			ObjectInputStream ois = new ObjectInputStream(fis);){
			
			//직렬화 가능한 클래스를 객체 생성함
			Student student = new Student();
			student.setName("홍길동");
			student.setId("hong");
			student.setAge(20);
			
			oos.writeObject(student);
			oos.flush();
			
			//출력된 객체를 프로그램으로 가져오기
			Object obj = ois.readObject();
			Student student2 = (Student)obj;
			System.out.println("이름: " + student2.getName() + ", 아이디: " + student2.getId() + 
					", 나이: " + student2.getAge());
		}catch(Exception e) {
			System.out.println("객체 입출력시 예외 발생");
		}
	}
}