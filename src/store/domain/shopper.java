package store.domain;

public class shopper {

	private int shopperid;
	private String shoppername;
	private String password;
	private int tel;
	private String address;
	private String isplus;
	
	
	public shopper() {
		super();
	}


	public shopper(int shopperid, String shoppername, String password, int tel, String address, String isplus) {
		super();
		this.shopperid = shopperid;
		this.shoppername = shoppername;
		this.password = password;
		this.tel = tel;
		this.address = address;
		this.isplus = isplus;
	}


	public int getShopperid() {
		return shopperid;
	}


	public void setShopperid(int shopperid) {
		this.shopperid = shopperid;
	}


	public String getShoppername() {
		return shoppername;
	}


	public void setShoppername(String shoppername) {
		this.shoppername = shoppername;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getTel() {
		return tel;
	}


	public void setTel(int tel) {
		this.tel = tel;
	}


	public String getAddress() {
		return address;
	}


	public void setAddress(String address) {
		this.address = address;
	}


	public String getIsplus() {
		return isplus;
	}


	public void setIsplus(String isplus) {
		this.isplus = isplus;
	}
	
	
}
