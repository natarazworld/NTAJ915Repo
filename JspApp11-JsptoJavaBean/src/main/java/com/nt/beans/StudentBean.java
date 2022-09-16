//StudentBean.java
package com.nt.beans;

import java.io.Serializable;

public class StudentBean implements Serializable {
	private int sno;
	private String sname;
	private String sadd;
	private float avg;
	
	public StudentBean() {
		System.out.println("StudentBean: 0-param constructor");
	}

	// setters and getters (alt+shift+s, r)
	public int getSno() {
		System.out.println("StudentBean.getSno()");
		return sno;
	}

	public void setSno(int sno) {
		System.out.println("StudentBean.setSno()");
		this.sno = sno;
	}

	public String getSname() {
		System.out.println("StudentBean.getSname()");
		return sname;
	}

	public void setSname(String sname) {
		System.out.println("StudentBean.setSname()");
		this.sname = sname;
	}

	public String getSadd() {
		System.out.println("StudentBean.getSadd()");
		return sadd;
	}

	public void setSadd(String sadd) {
		System.out.println("StudentBean.setSadd()");
		this.sadd = sadd;
	}

	public float getAvg() {
		System.out.println("StudentBean.getAvg()");
		return avg;
	}

	public void setAvg(float avg) {
		System.out.println("StudentBean.setAvg()");
		this.avg = avg;
	}
	//toString  (alt+shift+s,r)

	@Override
	public String toString() {
		return "StudentBean [sno=" + sno + ", sname=" + sname + ", sadd=" + sadd + ", avg=" + avg + "]";
	}
	

}
