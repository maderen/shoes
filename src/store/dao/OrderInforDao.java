package store.dao;
import java.util.List;

import store.domain.*;


public interface OrderInforDao
{

	
		/**
		 * 获取全部订单的鞋类信息
		 */
		List<OrderInfor> finOrder();

		/**
		 * 根据id查询订单信息
		 */
		public List<OrderInfor> findOrderById(String orderid,String shopperid);

		/**
		 * 获取全部订单信息
		 */
		List<OrderInfor> findOrderByContent(String content);

		/**
		 * 删除订单
		 */
	  public void deleteOrderById(int shoesId);

		/**
		 * 添加订单
		 * 
		 * @return
		 */
		public boolean addOrderInfor(int orderid,String createtime,String username,String goodsid);

		/**
		 * 修改商品
		 */
		public void updateOrderInfor(String paytime,String delivertime,String id);

	}


