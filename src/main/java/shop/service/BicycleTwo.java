package shop.service;

import shop.entity.Bicycle;

public class BicycleTwo {
	private Bicycle f1;
	private Bicycle f2;
	public BicycleTwo(Bicycle f1, Bicycle f2) {
		super();
		this.f1 = f1;
		this.f2 = f2;
	}
	public BicycleTwo() {
		super();
	}
	public Bicycle getF1() {
		return f1;
	}
	public void setF1(Bicycle f1) {
		this.f1 = f1;
	}
	public Bicycle getF2() {
		return f2;
	}
	public void setF2(Bicycle f2) {
		this.f2 = f2;
	}
}
