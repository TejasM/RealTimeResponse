package rtr.domain;

public class Receptiveness {
	
	public Receptiveness (){
		this.value1 = 0;
		this.value2 = 0;
	}
	
	public Receptiveness(int value1, int value2) {
		this.value1 = value1;
		this.value2 = value2;
	}
	
	private int value1;
	
	private int value2;

	public int getValue1() {
		return value1;
	}

	public void setValue1(int summary) {
		this.value1 = summary;
	}

	public int getValue2() {
		return value2;
	}
	
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	
	public Receptiveness combine(Receptiveness recpt){
		return new Receptiveness((recpt.getValue1() + this.getValue1())/2, (recpt.getValue2() + this.getValue2())/2);
	}



}
