package com.doget;

public class Bianliang {
	private String username;
	private String mima;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getMima() {
		return mima;
	}
	public void setMima(String mima) {
		this.mima = mima;
	}

	public Bianliang(String username, String mima) {
		super();
		this.username = username;
		this.mima = mima;
	}
	public Bianliang() {
		super();
	}
	@Override
	public String toString() {
		return "Bianliang [username=" + username + ", mima=" + mima + "]";
	}
	

}
