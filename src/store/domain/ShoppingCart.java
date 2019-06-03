package store.domain;

public class ShoppingCart {
	private int id;
	private String pricture;
	private String bz;
	private float price;
	
	public ShoppingCart(){
		
	}

	public ShoppingCart(int id, String pricture, String bz, float price) {
		
		this.id = id;
		this.pricture = pricture;
		this.bz = bz;
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPricture() {
		return pricture;
	}

	public void setPricture(String pricture) {
		this.pricture = pricture;
	}

	public String getBz() {
		return bz;
	}

	public void setBz(String bz) {
		this.bz = bz;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}
	
	
	
	

}
