package store.domain;
import store.domain.*;
public class OrderInfor
{
	
	private String orderid;
	private String createtime;
	private String paytime;
	private String deliverytime;
	private String username;
	private String goodsid;
	public OrderInfor() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderInfor(String orderid, String createtime, String paytime, String deliverytime, String username,
			String goodsid) {
		super();
		this.orderid = orderid;
		this.createtime = createtime;
		this.paytime = paytime;
		this.deliverytime = deliverytime;
		this.username = username;
		this.goodsid = goodsid;
	}
	public String getOrderid() {
		return orderid;
	}
	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}
	public String getCreatetime() {
		return createtime;
	}
	public void setCreatetime(String createtime) {
		this.createtime = createtime;
	}
	public String getPaytime() {
		return paytime;
	}
	public void setPaytime(String paytime) {
		this.paytime = paytime;
	}
	public String getDeliverytime() {
		return deliverytime;
	}
	public void setDeliverytime(String deliverytime) {
		this.deliverytime = deliverytime;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getGoodsid() {
		return goodsid;
	}
	public void setGoodsid(String goodsid) {
		this.goodsid = goodsid;
	}
	
	
	
}
