package rtr.domain;

public class Receptiveness {
	
	public Receptiveness (){
		this.value1 = 0;
		this.value2 = 0;
	}
	
	public Receptiveness(double value1, double value2) {
		this.value1 = value1;
		this.value2 = value2;
	}
	
	private double value1;
	
	private double value2;

	public double getValue1() {
		return value1;
	}

	public void setValue1(int summary) {
		this.value1 = summary;
	}

	public double getValue2() {
		return value2;
	}
	
	public void setValue2(int value2) {
		this.value2 = value2;
	}
	
	public Receptiveness combine(Receptiveness recpt){
		return new Receptiveness((recpt.getValue1() + this.getValue1())/2, (recpt.getValue2() + this.getValue2())/2);
	}

	public void toPercentage(){
		this.value1 = this.value1*100/4;
		this.value2 = this.value2*100/4;
		this.value1 = Math.floor(this.value1);
		this.value1 = Math.floor(this.value2);
	}

}
