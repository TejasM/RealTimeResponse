package rtr.domain;

import java.util.Date;

public class Point {
	
	public Point(Date date, int value1, int value2) {
		this.timestamp = date;
		this.value1 = value1;
		this.value2 = value2;
	}
	
	private int value1;
	
	private int value2;
	
	private Date timestamp;

	public int getValue1() {
		return value1;
	}

	public void setValue1(int value1) {
		this.value1 = value1;
	}

	public Date getTimestamp() {
		return timestamp;
	}

	public void setTimestamp(Date timestamp) {
		this.timestamp = timestamp;
	}

	public int getValue2() {
		return value2;
	}

	public void setValue2(int value2) {
		this.value2 = value2;
	}

}
