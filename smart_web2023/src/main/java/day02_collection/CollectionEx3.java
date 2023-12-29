package day02_collection;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class CollectionEx3 {

	public static void main(String[] args) {
		//Map 자료구조를 구현한 클래스: HashMap, Hashtable, Properties (키(key)와 값(value)의 쌍으로 데이터를 저장, 
		// 키(key)로 값(value)을 구분하기때문에 키는 중복된 값을 허용하지 않음)
		//HashMap객체 생성해서 데이터 저장하기: put()
		HashMap hm = new HashMap();
		hm.put(10, "홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		hm.put(20, 100);//int => Integer => Object
		hm.put(30, 3.14);//double => Double => Object
		hm.put(20, 200);//int => Integer => Object
		hm.put(10, "이순신");//add(Object e)로 정의되어 있으므로 String => Object
		//(주의사항) 중복된 키로 값을 저장하는 경우 예외를 발생시키지 않고 나중에 저장하는 데이터로 교체됨
		
		//회원정보를 저장할 수 있는 Member클래스 정의하기
		//필드: 아이디(member_id:String), 비밀번호(member_pw:String), 
		//     이름(member_name:String), 전화번호(handphone:String), 이메일(email:String)
		//필드의 접근제한자: private
		//필드에 접근할 수 있는 메소드: getter and setter
		hm.put(40, new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		
		//HashMap에 저장된 데이터 가져오기: 키값에 대한 컬렉션을 먼저 얻음(keySet()) => 확장for문, iterator()메소드 이용
		Set keys = hm.keySet();
		//HashSet hs = (HashSet)keys;
		//1. 확장 for문: get(Object key)
	    for(Object obj : keys) {
	    	System.out.println(hm.get(obj));
	    }
	    
	    //2. iterator()메소드 이용
	    Iterator it = keys.iterator();
	    while(it.hasNext()) {
	    	System.out.println(hm.get(it.next()));
	    }
	    
	    
	    //제네릭을 이용한 컬렉션 사용하기
	    HashMap<Integer, String> hm2 = new HashMap<>();
		hm2.put(10, "홍길동");//add(Object e)로 정의되어 있으므로 String => Object
		hm2.put(20, "100");//int => Integer => Object
		hm2.put(30, "3.14");//double => Double => Object
		hm2.put(20, "200");//int => Integer => Object
		hm2.put(10, "이순신");//add(Object e)로 정의되어 있으므로 String => Object
		//(주의사항) 중복된 키로 값을 저장하는 경우 예외를 발생시키지 않고 나중에 저장하는 데이터로 교체됨
		
		//회원정보를 저장할 수 있는 Member클래스 정의하기
		//필드: 아이디(member_id:String), 비밀번호(member_pw:String), 
		//     이름(member_name:String), 전화번호(handphone:String), 이메일(email:String)
		//필드의 접근제한자: private
		//필드에 접근할 수 있는 메소드: getter and setter
		HashMap<Integer, Member> hm3 = new HashMap<>();
		hm3.put(40, new Member("hong","1234","홍길동","010-1111-1111","hong@naver.com"));
		
		//HashMap에 저장된 데이터 가져오기: 키값에 대한 컬렉션을 먼저 얻음(keySet()) => 확장for문, iterator()메소드 이용
		Set<Integer> keys2 = hm2.keySet();
		//1. 확장 for문: get(Integer key)
	    for(Integer i : keys2) {
	    	System.out.println(hm2.get(i));
	    }
	    
	    //2. iterator()메소드 이용
	    Set<Integer> keys3 = hm3.keySet();
	    it = keys3.iterator();
	    while(it.hasNext()) {
	    	System.out.println(hm.get(it.next()));
	    }

		
		
		
		
		
		
		
		
		
		
		
	}

}
