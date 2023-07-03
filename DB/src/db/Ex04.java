package db;

public class Ex04 {
	public static void main(String[] args) throws Exception {
		
		System.out.println("전체 목록 조회");
		Ex01.main(null);
		System.out.println();
		
		System.out.println("삽입 테스트");
		Ex02_Insert.main(null);
		Ex01.main(null);
		System.out.println();
		
		System.out.println("삭제 테스트");
		Ex03_Delete.main(null);
		Ex01.main(null);
		System.out.println();
		
		Ex01.main(null);
	
		
	}
}
