package store.dao;

import java.util.List;
import store.domain.*;

public interface ShoppingCartDao {
	/**
	 * ���ﳵ�������Ʒ
	 */
	public void AddShoesByid(int shoesId,String username,String size);
	/**
	 * ��ʾ���ﳵ����Ʒ
	 */
	public List<ShoppingCart> ShowShoesById();
	/**
	 * ɾ�����ﳵ����Ʒ
	 */
	public void DeleteShoesById(int shoesId);


}
