package day01_jdbc;

import java.sql.DriverManager;//import 단축키: ctrl+shift+o
import java.sql.SQLException;

public class DBConnection {

	public static void main(String[] args) {
		/*데이터베이스와 연결하기(JDBC)
		 1. DBMS의 JDBC 드라이버를 프로젝트 폴더로 가져오기
		    - src/main/webapp/WEB-INF/lib폴더에 복사해서 붙여넣기
		    - Oracle 11g XE버전의 JDBC 드라이버가 있는 폴더
		      C:\oraclexe\app\oracle\product\11.2.0\server\jdbc\lib\ojdbc6.jar
		      
		 2. JDBC드라이버 로딩
		    Class.forName("드라이버명"); //드라이버명은 DB마다 고유한 명칭이 있음
		    Class.forName("oracle.jdbc.OracleDriver");    
		 
		 3. DriverManager클래스를 이용해서 DB와 연결하기
		    DriverManager.getConnection("URL", "사용자계정", "비밀번호");
		    //URL: DBMS별로 다름 - jdbc:oracle:thin:@localhost:1521:xe
		    //String url = "jdbc:oracle:thin:@localhost:1521:xe";
		    DriverManager.getConnection(url, "smart_dev", "1234");
		    
		   //getConnection()메소드는 DBMS와 연결이 이루어지면 연결객체를 반환
		   //연결객체: Connection 객체
		    
		 */
		
		try {
			
			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("드라이버 로딩 성공");
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			DriverManager.getConnection(url, "smart_dev", "1234");
			System.out.println("DB연결 성공");
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("DB연결 실패");
			e.printStackTrace();
		} 
		

	}

}
