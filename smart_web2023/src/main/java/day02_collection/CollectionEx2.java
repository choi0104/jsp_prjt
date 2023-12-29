package day02_collection;

import java.util.HashSet;
import java.util.Iterator;

public class CollectionEx2 {

	public static void main(String[] args) {
		//Set 자료구조를 구현한 클래스: HashSet (인덱스를 사용하지 않음, 데이터의 중복 허용하지 않음)
		//HashSet객체 생성해서 데이터 저장하기
		//동일한 데이터 여부를 판단하는 기분: hashCode() -> equals() 메소드의 실행결과로 판단
		HashSet hs = new HashSet();
		hs.add("홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		hs.add(100);//int => Integer => Object
		hs.add(3.14);//double => Double => Object
		hs.add(100);//int => Integer => Object
		hs.add("홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		
		//회원정보를 저장할 수 있는 Member클래스 정의하기
		//필드: 아이디(member_id:String), 비밀번호(member_pw:String), 
		//     이름(member_name:String), 전화번호(handphone:String), 이메일(email:String)
		//필드의 접근제한자: private
		//필드에 접근할 수 있는 메소드: getter and setter
		hs.add(new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		hs.add(new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		
		//HashSet에 저장된 데이터 가져오기: 확장for문(for-each문), iterator():Iterator객체
		
		//1. 확장for문(for-each문): for(데이터타입 변수명 : 배열이나 컬렉션의 참조변수)
		for(Object obj : hs) {
			System.out.println(obj);
		}
		
		//2. iterator()메소드를 이용한 방법: Iterator객체를 반환, hasNext(), next()
		Iterator it = hs.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		//제네릭을 이용해서 컬렉션 사용하기
		HashSet<String> hs2 = new HashSet<>();
		hs2.add("홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		hs2.add("100");//int => Integer => Object
		hs2.add("3.14");//double => Double => Object
		hs2.add("100");//int => Integer => Object
		hs2.add("홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		
		//회원정보를 저장할 수 있는 Member클래스 정의하기
		//필드: 아이디(member_id:String), 비밀번호(member_pw:String), 
		//     이름(member_name:String), 전화번호(handphone:String), 이메일(email:String)
		//필드의 접근제한자: private
		//필드에 접근할 수 있는 메소드: getter and setter
		HashSet<Member> hs3 = new HashSet<>();
		hs3.add(new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		hs3.add(new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		
		//HashSet에 저장된 데이터 가져오기: 확장for문(for-each문), iterator():Iterator객체
		
		//1. 확장for문(for-each문): for(데이터타입 변수명 : 배열이나 컬렉션의 참조변수)
		for(String s : hs2) {
			System.out.println(s);
		}
		
		//2. iterator()메소드를 이용한 방법: Iterator객체를 반환, hasNext(), next()
		it = hs3.iterator();
		while(it.hasNext()) {
			System.out.println(it.next());
		}
		
		
		
		
		
		
		
		
		
		
		
	}

}
