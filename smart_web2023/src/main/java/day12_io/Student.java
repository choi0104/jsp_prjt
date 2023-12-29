package day12_io;

import java.io.Serializable;

//객체 입출력에 사용되는 클래스는 객체 직렬화 과정을 거치므로
//클래스가 객체직렬화할 수 있는 클래스임을 나타내는 Serializable인터페이스(내용은 없음)를
//상속해야 함
public class Student implements Serializable{
	private static final long serialVersionUID = -9066537019547140912L;
	
	private String name;
	private String id;
	//객체 직렬화 대상에서 필드를 제외시키고자 할 경우 transient 수정자를 붙임
	private transient int age;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
}
