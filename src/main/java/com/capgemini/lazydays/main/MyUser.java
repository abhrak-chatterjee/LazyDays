package com.capgemini.lazydays.main;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

@Entity
@Table(name="userlist")
@JsonIgnoreProperties({"hibernateLazyInitializer","handler"})
public class MyUser {
	
	 @NotNull(message="Name must not be empty")
	 @Size(min=6, max=20, message = "Name must be between 6 and 20 characters")
	 @Pattern(regexp = "[a-zA-Z]+",message="Name must contain alphabets only")
	 @Column(name="userName")
	private String userName;
	
	 @NotNull(message="Email ID must not be empty")
	 @Pattern(regexp = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"+ "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$",message="Please enter a valid email ID")
	 @Column(name="userMail")
	private String userMail;
	
	 @NotNull(message="Phone number must not be empty")
	 @Pattern(regexp = "[0-9]{10}",message="Please enter a valid phone Number")
	 @Column(name="phone")
	private String phone;
	
	 @NotEmpty(message="Your password must not be empty")
	 @Pattern(regexp="((?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%]).{8,15})" ,message="Password must contain atleast one number,one upper case letter,one lower case letter and one special character")
	 @Size(min = 8, max = 15, message = "Your password must be between 8 and 15 characters" )
	 @Column(name="password")
	private String password;
	
	String confirmPassword;
	
	public String getConfirmPassword() {
		return confirmPassword;
	}

	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}

	public MyUser()
	{
		super();
	}

	public MyUser(String userName, String userMail, String phone, String password) {
		super();
		this.userName = userName;
		this.userMail = userMail;
		this.phone = phone;
		this.password = password;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserMail() {
		return userMail;
	}

	public void setUserMail(String userMail) {
		this.userMail = userMail;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	

}
