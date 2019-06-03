package store.dao;
import java.util.List;

import store.domain.*;


public interface OrderInforDao
{

	
		/**
		 * ��ȡȫ��������Ь����Ϣ
		 */
		List<OrderInfor> finOrder();

		/**
		 * ����id��ѯ������Ϣ
		 */
		public List<OrderInfor> findOrderById(String orderid,String shopperid);

		/**
		 * ��ȡȫ��������Ϣ
		 */
		List<OrderInfor> findOrderByContent(String content);

		/**
		 * ɾ������
		 */
	  public void deleteOrderById(int shoesId);

		/**
		 * ��Ӷ���
		 * 
		 * @return
		 */
		public boolean addOrderInfor(int orderid,String createtime,String username,String goodsid);

		/**
		 * �޸���Ʒ
		 */
		public void updateOrderInfor(String paytime,String delivertime,String id);

	}


