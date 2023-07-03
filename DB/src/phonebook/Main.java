package phonebook;

import java.util.List;
import java.util.Scanner;

public class Main {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		DAO dao = new DAO();
		List<DTO> list = null;
		int menu = -1, row;
		String name;
		DTO dto = null;
		
		
		
		while(menu != 0) {
			System.out.println("1. 전체 조회");
			System.out.println("2. 추가");
			System.out.println("3. 삭제");
			System.out.println("4. 검색");
			System.out.println("5. 단일 검색");
			System.out.println("6. 수정");
			System.out.println("0. 종료");
			System.out.print("선택 >>>");
			menu = Integer.parseInt(sc.nextLine());
			
			switch(menu) {
			case 1:		// 전체 조회
				list = dao.selectAll();
				list.forEach(s -> System.out.println(s));
				break;
			case 2:		// 추가
				dto = new DTO();
				System.out.print("추가할 이름 입력 :");
				dto.setName(sc.nextLine()); 
				System.out.print("추가할 나이 입력 :");
				dto.setAge(Integer.parseInt(sc.nextLine()));
//				age = Integer.parseInt(sc.nextLine());
				System.out.print("추가할 전화번호 입력 :");
				dto.setPnum(sc.nextLine());
//				pnum = sc.nextLine();
//				dto.setName(name);
//				dto.setAge(age);
//				dto.setPnum(pnum);
				
				row = dao.insert(dto);
				System.out.printf("%d개의 행이 추가되었습니다\n", row);
				break;
				
			case 3:		// 삭제
				System.out.print("삭제할 데이터 이름 입력 : ");
				name = sc.nextLine();
				dto = dao.selectOne(name);
				if(dto.getName() == null) {
					System.out.println("일치하는 정보가 없습니다");
					break;
				}
				System.out.println(dto);					
				
				System.out.print("삭제할 정보가 맞습니까? (y/n) : ");
				if(sc.nextLine().equalsIgnoreCase("y")) {
					row = dao.delete(name);
					System.out.printf("%d개의 행이 삭제되었습니다\n", row);
				}
				break;
				
			case 4: 	// 검색
				System.out.print("검색할 이름 입력 : ");
				name = sc.nextLine();
				list = dao.search(name);
				list.forEach(s -> System.out.println(s));
				break;
			
			case 5: 		// 단일검색
				System.out.println("검색할 이름 입력 : ");
				name = sc.nextLine();
				dto = dao.selectOne(name);
				System.out.println(dto);
				break;
				
			case 6:
				System.out.println("수정할 데이터 입력 : ");
				name = sc.nextLine();
				dto = dao.selectOne(name);
				if(dto.getName() == null) {
					System.out.println("일치하는 정보가 없습니다");
					break;
				}
				System.out.println(dto);
				
				System.out.print("수정할 데이터가 맞습니까? (y/n) : ");
				if(sc.nextLine().equalsIgnoreCase("y")) {
					System.out.print("이름 입력 : ");
					dto.setName(sc.nextLine());
					System.out.print("나이 입력 : ");
					dto.setAge(Integer.parseInt(sc.nextLine()));
					System.out.print("전화번호 입력 : ");
					dto.setPnum(sc.nextLine());
					
					row = dao.update(dto, name);
					System.out.printf("%d개의 행이 수정되었습니다\n", row);
				}	
				break;
				
			case 0:
				sc.close();
			}
			System.out.println();
			
		}
		System.out.println("프로그램 종료");
		
	}
}
