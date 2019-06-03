package store.dao;

import java.util.List;
import store.domain.*;

public interface ShoppingCartDao {
	/**
	 * 向购物车中添加商品
	 */
	public void AddShoesByid(int shoesId,String username,String size);
	/**
	 * 显示购物车中商品
	 */
	public List<ShoppingCart> ShowShoesById();
	/**
	 * 删除购物车中商品
	 */
	public void DeleteShoesById(int shoesId);


}
