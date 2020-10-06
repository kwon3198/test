package org.edu.vo;

public class BrandVO {
	
	private String brdname;
	private String brand;
	private Integer brdsun;
	
	@Override
	public String toString() {
		return "BrandVO [brdname=" + brdname + ", brand=" + brand + ", brdsun=" + brdsun + "]";
	}
	public String getBrdname() {
		return brdname;
	}
	public void setBrdname(String brdname) {
		this.brdname = brdname;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public Integer getBrdsun() {
		return brdsun;
	}
	public void setBrdsun(Integer brdsun) {
		this.brdsun = brdsun;
	}
	
	
}