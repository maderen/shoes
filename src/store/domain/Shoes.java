package store.domain;

public class Shoes {
	private int id;
	private String name;
	private String pricture;
	private int storage;
	private String discrib;
	private String color;
	private float price;
	private int size;
	private String audi;
	private String type;
	private float discount;
	
	
	public Shoes(){
		
	}

	public Shoes(int id,String name, String pricture, int storage,String discrib, String color, float price,
			int size, String audi,String type, float discount) {

		this.id = id;
		this.name=name;
		this.pricture = pricture;
		this.storage=storage;
		this.discrib=discrib;
		this.color = color;
		this.price = price;
		this.size = size;
		this.audi=audi;
		this.type = type;
		this.discount=discount;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPricture() {
		return pricture;
	}

	public void setPricture(String pricture) {
		this.pricture = pricture;
	}

	public int getStorage() {
		return storage;
	}

	public void setStorage(int storage) {
		this.storage = storage;
	}

	public String getDiscrib() {
		return discrib;
	}

	public void setDiscrib(String discrib) {
		this.discrib = discrib;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public int getSize() {
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public String getAudi() {
		return audi;
	}

	public void setAudi(String audi) {
		this.audi = audi;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public float getDiscount() {
		return discount;
	}

	public void setDiscount(float discount) {
		this.discount = discount;
	}

	
	

}
