package store.dao;
import java.util.List;

import javax.swing.text.StringContent;

import store.domain.*;
public interface ShoesDao {
	/**
	 * ��ȡȫ��Ь����Ϣ
	 */
	List<Shoes> findShoes();
	
	/**
	 * ����id��ѯЬ����Ϣ
	 */
	List<Shoes> findShoesById(int id);
	/**
	 * ����id��ѯЬ����Ϣ
	 */
	int findShoesById2(int id);
	/**
	 * ��ȡȫ��Ь����Ϣ
	 */
	List<Shoes> findShoesByContent(String content);
	/**
	 * ɾ����Ʒ
	 */
	public void deleteShoesById(int shoesId);
	
	/**
	 * �����Ʒ
	 * @return 
	 */
	public boolean addShoes(int goodsid,String goodsname,String goodspic,int storage,int cataid,int audid,float price,String size,String color,String discrib,String discount);
	/**
	 * �޸���Ʒ
	 */
	public void updateShoes(float price,String color,String discrib,String discount,int id);

	/**
	 * �����Ӹߵ���
	 */
	List<Shoes> findShoestorage(String storage);
	/**
	 * �����ӵ͵���
	 */
	List<Shoes> findShoestorage2(String storage);
	/**
	 * �۸�Ӹߵ���
	 */
	List<Shoes> findShoesprice(String storage);
	/**
	 * �۸�ӵ͵���
	 */
	List<Shoes> findShoesprice2(String storage);
	/*
	 * 
	 */
	List<Shoes> findShoe(String cataname,String audname);
}
