package com.human.dto;

import java.util.Date;

public class EmployeesDto{
	

	int employeeid;
	String lastname;
	String firstname;
	String title;
	String titleofcourtesy;
	Date birthdate;
	Date hiredate;
	String address;
	String city;
	String region;
	String postalcode;
	String country;
	String homephone;
	String extension;
	String photo;
	String notes;
	int reportsto;
	String photopath;
	


	public EmployeesDto() {}
	
	public EmployeesDto(int employeeid, String lastname, String firstname, String title, String titleofcourtesy,
			Date birthdate, Date hiredate, String address, String city, String region, String postalcode,
			String country, String homephone, String extension, String photo, String notes, int reportsto,
			String photopath) {
		this.employeeid = employeeid;
		this.lastname = lastname;
		this.firstname = firstname;
		this.title = title;
		this.titleofcourtesy = titleofcourtesy;
		this.birthdate = birthdate;
		this.hiredate = hiredate;
		this.address = address;
		this.city = city;
		this.region = region;
		this.postalcode = postalcode;
		this.country = country;
		this.homephone = homephone;
		this.extension = extension;
		this.photo = photo;
		this.notes = notes;
		this.reportsto = reportsto;
		this.photopath = photopath;
	}






	public int getEmployeeid() {
		return employeeid;
	}





	public void setEmployeeid(int employeeid) {
		this.employeeid = employeeid;
	}





	public String getLastname() {
		return lastname;
	}





	public void setLastname(String lastname) {
		this.lastname = lastname;
	}





	public String getFirstname() {
		return firstname;
	}





	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}





	public String getTitle() {
		return title;
	}





	public void setTitle(String title) {
		this.title = title;
	}





	public String getTitleofcourtesy() {
		return titleofcourtesy;
	}





	public void setTitleofcourtesy(String titleofcourtesy) {
		this.titleofcourtesy = titleofcourtesy;
	}





	public Date getBirthdate() {
		
		return birthdate;
	}


	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}


	public void setBirthdate(String birthdate) {
		java.text.DateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
		java.util.Date date = null;
		
		try{
			date = (java.util.Date)formatter.parse(birthdate);
		}catch(java.text.ParseException e){
			e.printStackTrace();
		}
		
		this.birthdate = date;
	}





	public Date getHiredate() {
		return hiredate;
	}

	public void setHiredate(Date hiredate) {
		this.hiredate = hiredate;
	}



	public void setHiredate(String hiredate) {
		
		java.text.DateFormat formatter = new java.text.SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
		java.util.Date date = null;
		
		try{
			date = (java.util.Date)formatter.parse(hiredate);
		}catch(java.text.ParseException e){
			e.printStackTrace();
		}
		
		this.hiredate = date;
	}





	public String getAddress() {
		return address;
	}





	public void setAddress(String address) {
		this.address = address;
	}





	public String getCity() {
		return city;
	}





	public void setCity(String city) {
		this.city = city;
	}





	public String getRegion() {
		return region;
	}





	public void setRegion(String region) {
		this.region = region;
	}





	public String getPostalcode() {
		return postalcode;
	}





	public void setPostalcode(String postalcode) {
		this.postalcode = postalcode;
	}





	public String getCountry() {
		return country;
	}





	public void setCountry(String country) {
		this.country = country;
	}





	public String getHomephone() {
		return homephone;
	}





	public void setHomephone(String homephone) {
		this.homephone = homephone;
	}





	public String getExtension() {
		return extension;
	}





	public void setExtension(String extension) {
		this.extension = extension;
	}





	public String getPhoto() {
		return photo;
	}





	public void setPhoto(String photo) {
		this.photo = photo;
	}





	public String getNotes() {
		return notes;
	}





	public void setNotes(String notes) {
		this.notes = notes;
	}





	public int getReportsto() {
		return reportsto;
	}





	public void setReportsto(int reportsto) {
		this.reportsto = reportsto;
	}





	public String getPhotopath() {
		return photopath;
	}





	public void setPhotopath(String photopath) {
		this.photopath = photopath;
	}
	

	@Override
	public String toString() {
		return "EmployeesDto [employeeid=" + employeeid + ", lastname=" + lastname + ", firstname=" + firstname
				+ ", title=" + title + ", titleofcourtesy=" + titleofcourtesy + ", birthdate=" + birthdate
				+ ", hiredate=" + hiredate + ", address=" + address + ", city=" + city + ", region=" + region
				+ ", postalcode=" + postalcode + ", country=" + country + ", homephone=" + homephone + ", extension="
				+ extension + ", photo=" + photo + ", notes=" + notes + ", reportsto=" + reportsto + ", photopath="
				+ photopath + "]";
	}
}
