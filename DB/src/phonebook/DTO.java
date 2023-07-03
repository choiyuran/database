package phonebook;

/*
 	NAME    VARCHAR2(100) 
	AGE     NUMBER        
	PNUM    VARCHAR2(20)  
 
*/

public class DTO {
	private String name;
	private int age;
	private String pnum;
	
	@Override
	public String toString() {
		return String.format("%s\t%s\t%s", name, age, pnum);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getPnum() {
		return pnum;
	}

	public void setPnum(String pnum) {
		this.pnum = pnum;
	}
	
	
	
	
}
