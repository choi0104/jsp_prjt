package day02_collection;

import java.util.ArrayList;
import java.util.Iterator;

public class CollectionEx {

	public static void main(String[] args) {
		/*컬렉션
		 - 일반적인 자료구조를 쉽게 사용할 수 있도록 지원해주는 자바 API
		 - java.util 패키지
		 - 웹 프로그램에서 주로 사용하는 컬렉션: List, Set, Map (모두 인터페이스로 정의)
		 - List: 인덱스를 이용한 데이터 저장, 데이터의 중복저장 허용
		         구현 클래스: ArrayList, Vector(동기화 처리, 멀티 스레드 프로그램에 안정적으로 사용 가능)
		 - Set : 인덱스를 이용하지 않고 데이터 저장, 중복된 데이터 저장 불가
		         구현 클래스: HashSet
		 - Map : 키(key)와 값(value)의 쌍으로 데이터 저장, 키값을 이용해서 
		         데이터를 얻으므로 키값은 중복될 수 없음
		         구현 클래스: HashMap, Hashtable(동기화 처리, 멀티 스레드 프로그램에 안정적으로 사용 가능), 
		         Properties
		 - 공통된 특징: 여러 개의 데이터 저장 가능, 여러 개의 데이터형 저장 가능, 가변적인 크기       
		 */
		
		//ArrayList객체 생성해서 데이터 저장하기
		ArrayList al = new ArrayList();
		al.add("홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		al.add(100);//int => Integer => Object
		al.add(3.14);//double => Double => Object
		
		//회원정보를 저장할 수 있는 Member클래스 정의하기
		//필드: 아이디(member_id:String), 비밀번호(member_pw:String), 
		//     이름(member_name:String), 전화번호(handphone:String), 이메일(email:String)
		//필드의 접근제한자: private
		//필드에 접근할 수 있는 메소드: getter and setter
		al.add(new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		
		//ArrayList에 저장된 데이터 가져오기: 인덱스를 이용한 방법(for문), 확장for문(for-each문), iterator():Iterator객체
		//1. 인덱스를 이용한 방법(for문): get(int index), 컬렉션에 저장된 데이터의 개수: size()
		for(int i=0; i<al.size(); i++) {
			System.out.println(al.get(i));
		}
		
		//2. 확장for문(for-each문): for(데이터타입 변수명 : 배열이나 컬렉션의 참조변수)
		for(Object obj : al) {
			System.out.println(obj);
		}
		
		//3. iterator()메소드를 이용한 방법: Iterator객체를 반환, hasNext(), next()
		Iterator it = al.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		
		//제네릭을 이용한 컬렉션 사용하기
		
		//ArrayList객체 생성해서 데이터 저장하기
		ArrayList<String> al2 = new ArrayList<>();//참조변수의 제네릭 타입이 생성자의 제네릭 타입과 같은 경우 
		//생성자의 제네릭 타입을 생략할 수 있음
		al2.add("홍길동");
		al2.add("100");
		al2.add("3.14");
		
		//회원정보를 저장할 수 있는 Member클래스 정의하기
		//필드: 아이디(member_id:String), 비밀번호(member_pw:String), 
		//     이름(member_name:String), 전화번호(handphone:String), 이메일(email:String)
		//필드의 접근제한자: private
		//필드에 접근할 수 있는 메소드: getter and setter
		ArrayList<Member> al3 = new ArrayList<>();
		al3.add(new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		
		//ArrayList에 저장된 데이터 가져오기: 인덱스를 이용한 방법(for문), 확장for문(for-each문), iterator():Iterator객체
		//1. 인덱스를 이용한 방법(for문): get(int index), 컬렉션에 저장된 데이터의 개수: size()
		for(int i=0; i<al2.size(); i++) {
			System.out.println(al2.get(i));
		}
		
		//2. 확장for문(for-each문): for(데이터타입 변수명 : 배열이나 컬렉션의 참조변수)
		for(Member m : al3) {
			System.out.println(m);
		}
		
		//3. iterator()메소드를 이용한 방법: Iterator객체를 반환, hasNext(), next()
		it = al2.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		
		
		
		
		
		
		
		
		
		
		
	}

}
