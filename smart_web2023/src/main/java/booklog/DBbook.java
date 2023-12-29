package booklog;

import java.sql.Connection;
import java.sql.DriverManager;//import 단축키: ctrl+shift+o
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

//DB관련 작업을 하는 클래스가 이 클래스를 상속해서 DB에 보다 쉽게 접속해서 
//작업할 수 있도록 정의함

public class DBbook {
	
	//DB작업을 위해 필요한 클래스들: Connection, PreparedStatement, ResultSet
	//-Connection: DB와의 연결 시 생성되는 객체
	//-PreparedStatement: SQL문을 실행할 수 있도록 해주는 객체
	//-ResultSet: select문 실행 후 결과값을 담는 객체
	protected Connection conn2;
	protected PreparedStatement pstmt2;
	protected ResultSet rs2;
	
	//기본생성자에 연결객체가 생성되도록 정의함
	public DBbook() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("드라이버 로딩 성공");
			String url = "jdbc:oracle:thin:@192.168.0.50:1521:xe";
			conn2 = DriverManager.getConnection(url, "smart_dev", "1234");
			System.out.println("DB연결 성공");
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("DB연결 실패");
			e.printStackTrace();
		}
	}
	
	//외부자원 사용 시 사용 후 외부자원과의 연결을 해제시켜줘야함:close()
	//Connection, PreparedStatement, ResultSet 각각의 객체의 유무를 확인하고 close()메소드로
	//자원해제시켜줌
	public void close() {
		try {
			if(conn2 != null) {conn2.close();}
			if(pstmt2 != null) {pstmt2.close();}
			if(rs2 != null) {rs2.close();}
		}catch(SQLException e) {e.printStackTrace(); }
	}
}