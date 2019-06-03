package store.dao;

import java.util.List;

import store.domain.shoesCatalog;


public interface fitPeopleDao {
	/**
	 * 获取所有适合人群名称
	 */
	public List<String> getFitName();
	/**
	 * 获取所有商品分类
	 */
	public List<String> getGoodsName();
	/**
	 * 获取所有商品类型
	 */
	public List<shoesCatalog> getGoodsTypeById(int id);
	
	

}
