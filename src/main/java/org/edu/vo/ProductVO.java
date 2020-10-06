package org.edu.vo;

import java.util.Arrays;
import java.util.Date;

import org.hibernate.validator.constraints.NotBlank;

public class ProductVO {
	private Integer bno;
	@NotBlank(message="게시물 제목은 필수 입력사항 입니다!")
	private String name;
	@NotBlank(message="게시물 내용은 필수 입력사항 입니다!")
	private String content;
	private String brand;
	private int price;
	private String category;
	private int sales;
	private int stock;
	private Date regdate;
	private Date update_date;
	private int view_count;
	private int reply_count;
	private String img;
	private String thumbimg;
	
	
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getBrand() {
		return brand;
	}
	public void setBrand(String brand) {
		this.brand = brand;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getSales() {
		return sales;
	}
	public void setSales(int sales) {
		this.sales = sales;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public int getReply_count() {
		return reply_count;
	}
	public void setReply_count(int reply_count) {
		this.reply_count = reply_count;
	}
	
	@Override
	public String toString() {
		return "ProductVO [bno=" + bno + ", name=" + name + ", content=" + content + ", brand=" + brand + ", price="
				+ price + ", category=" + category + ", sales=" + sales + ", stock=" + stock + ", regdate=" + regdate
				+ ", update_date=" + update_date + ", view_count=" + view_count + ", reply_count=" + reply_count
				+ ", img=" + img + ", thumbimg=" + thumbimg + "]";
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getThumbimg() {
		return thumbimg;
	}
	public void setThumbimg(String thumbimg) {
		this.thumbimg = thumbimg;
	}
	
	
	
}