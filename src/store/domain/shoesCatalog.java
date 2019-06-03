package store.domain;

public class shoesCatalog {
	
	private int id;
	private String name;
	private String fitPeople;
	
	public shoesCatalog(){
		
	}

	public shoesCatalog(int id, String name, String fitPeople) {
		
		this.id = id;
		this.name = name;
		this.fitPeople = fitPeople;
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

	public String getFitPeople() {
		return fitPeople;
	}

	public void setFitPeople(String fitPeople) {
		this.fitPeople = fitPeople;
	}
	

}
