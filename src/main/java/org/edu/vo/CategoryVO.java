package org.edu.vo;

public class CategoryVO {
	
	private String catename;
	private String category;
	private Integer catesun;
	
	@Override
	public String toString() {
		return "CategoryVO [catename=" + catename + ", category=" + category + ", catesun=" + catesun + "]";
	}
	public String getCatename() {
		return catename;
	}
	public void setCatename(String catename) {
		this.catename = catename;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Integer getCatesun() {
		return catesun;
	}
	public void setCatesun(Integer catesun) {
		this.catesun = catesun;
	}
	
	
}