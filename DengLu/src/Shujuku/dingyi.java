package Shujuku;

public class dingyi {
	private int id;
	private String xinghao;
	private String tupian;
	private double jiage;
	private int shuliang;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getXinghao() {
		return xinghao;
	}

	public void setXinghao(String xinghao) {
		this.xinghao = xinghao;
	}

	public String getTupian() {
		return tupian;
	}

	public void setTupian(String tupian) {
		this.tupian = tupian;
	}

	public double getJiage() {
		return jiage;
	}

	public void setJiage(double jiage) {
		this.jiage = jiage;
	}

	public int getShuliang() {
		return shuliang;
	}

	public void setShuliang(int shuliang) {
		this.shuliang = shuliang;
	}
	

	public dingyi(int id, String xinghao, String tupian, double jiage, int shuliang) {
		super();
		this.id = id;
		this.xinghao = xinghao;
		this.tupian = tupian;
		this.jiage = jiage;
		this.shuliang = shuliang;
	}
	

	public dingyi() {
		super();
	}

	@Override
	public String toString() {
		return "dingyi [id=" + id + ", xinghao=" + xinghao + ", tupian=" + tupian + ", jiage=" + jiage + ", shuliang="
				+ shuliang + "]";
	}

}
