package day02_collection;

public class Member {
	
	private String member_id;
	private String member_pw;
	private String member_name;
	private String handphone;
	private String email;
	
	public Member() {}
	public Member(String member_id, String member_pw, 
			String member_name, String handphone, String email) {
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_name = member_name;
		this.handphone = handphone;
		this.email = email;
	}
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getMember_pw() {
		return member_pw;
	}
	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}
	public String getMember_name() {
		return member_name;
	}
	public void setMember_name(String member_name) {
		this.member_name = member_name;
	}
	public String getHandphone() {
		return handphone;
	}
	public void setHandphone(String handphone) {
		this.handphone = handphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Override
	public String toString() {
		return "아이디:"+member_id+", 비밀번호:"+member_pw+", 이름:"+member_name+", 핸드폰:"+handphone+", 이메일:"+email;
	}
	
	//HashSet에서 동일한 값의 필드가 입력되어 있으면 동일한 데이터로 인식하도록 
	//hashCode(), equals() 메소드를 재정의함
	@Override
	public int hashCode() {
		//String클래스는 주소값이 아니라 내용에 대한 해시코드값을 반환하도록 재정의되어 있음
		return member_id.hashCode()+member_pw.hashCode()+member_name.hashCode()
		       +handphone.hashCode()+email.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		boolean result = false;
		if(obj instanceof Member) {
			Member m = (Member)obj;
			if(member_id.equals(m.getMember_id()) && member_pw.equals(m.getMember_pw()) &&
			   member_name.equals(m.getMember_name()) && handphone.equals(m.getHandphone()) &&
			   email.equals(m.getEmail())) {
				
				result = true;
			}
		}
		
		return result;
	}

}
