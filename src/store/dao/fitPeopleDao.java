package store.dao;

import java.util.List;

import store.domain.shoesCatalog;


public interface fitPeopleDao {
	/**
	 * ��ȡ�����ʺ���Ⱥ����
	 */
	public List<String> getFitName();
	/**
	 * ��ȡ������Ʒ����
	 */
	public List<String> getGoodsName();
	/**
	 * ��ȡ������Ʒ����
	 */
	public List<shoesCatalog> getGoodsTypeById(int id);
	
	

}
