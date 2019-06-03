package store.dao;
import java.util.List;

import javax.swing.text.StringContent;

import store.domain.*;
public interface ShoesDao {
	/**
	 * 获取全部鞋类信息
	 */
	List<Shoes> findShoes();
	
	/**
	 * 根据id查询鞋类信息
	 */
	List<Shoes> findShoesById(int id);
	/**
	 * 根据id查询鞋类信息
	 */
	int findShoesById2(int id);
	/**
	 * 获取全部鞋类信息
	 */
	List<Shoes> findShoesByContent(String content);
	/**
	 * 删除商品
	 */
	public void deleteShoesById(int shoesId);
	
	/**
	 * 添加商品
	 * @return 
	 */
	public boolean addShoes(int goodsid,String goodsname,String goodspic,int storage,int cataid,int audid,float price,String size,String color,String discrib,String discount);
	/**
	 * 修改商品
	 */
	public void updateShoes(float price,String color,String discrib,String discount,int id);

	/**
	 * 销量从高到低
	 */
	List<Shoes> findShoestorage(String storage);
	/**
	 * 销量从低到高
	 */
	List<Shoes> findShoestorage2(String storage);
	/**
	 * 价格从高到低
	 */
	List<Shoes> findShoesprice(String storage);
	/**
	 * 价格从低到高
	 */
	List<Shoes> findShoesprice2(String storage);
	/*
	 * 
	 */
	List<Shoes> findShoe(String cataname,String audname);
}
