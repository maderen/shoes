package store.dao.jdbc;
import java.util.*;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import store.dao.OrderInforDao;
import store.dao.ShoesDao;
import store.dao.ShoppingCartDao;
import store.domain.OrderInfor;
import store.domain.Shoes;
import store.domain.ShoppingCart;
public class OrderInforJDBC implements OrderInforDao
{
	private DataSource dataSource;
      //�������ݿ�ĸ��ô��룬ʹ������Դ�������ݿ�
	public OrderInforJDBC()
	{
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context
					.lookup("java:comp/env/jdbc/Store");
		} catch (NamingException e) {
			e.printStackTrace();
			throw new RuntimeException("��������Դʧ�ܣ�" + e.getMessage());
		}
	}
	@Override
	public List<OrderInfor> finOrder()
	{
		List<OrderInfor> OrderInfor = new ArrayList<OrderInfor>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select*from [dbo].[orderForm]";
			ps = connection.prepareStatement(sql);
			//ps.setInt(shoesID, 1);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				String orderid=rs.getString(1);
				String createtime=rs.getString(2);
				String paytime=rs.getString(3);
				String delivertime=rs.getString(4);
				String username=rs.getString(5);
				String goodsid=rs.getString(6);
				OrderInfor s=new OrderInfor();
				s.setOrderid(orderid);
				s.setCreatetime(createtime);
				s.setPaytime(paytime);
				s.setDeliverytime(delivertime);
				s.setUsername(username);
				s.setGoodsid(goodsid);
				OrderInfor.add(s);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("��ȡȫ��������Ϣʧ�ܣ�" + e.getMessage());
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("�ر�ResultSetʧ�ܣ�" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("�ر�PreparedStatementʧ�ܣ�"
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("�ر�Connectionʧ�ܣ�"
								+ e.getMessage());
					}
				}
			}
		}

		return OrderInfor;
	}
	
	@Override
	public List<OrderInfor> findOrderByContent(String content)
	{
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public boolean addOrderInfor(int orderid,String createtime,String username,String goodsid)
	{
		List<ShoppingCart> cart = new ArrayList<ShoppingCart>();

		Connection connection = null;
		PreparedStatement ps = null;


		try {
			connection = dataSource.getConnection();
			String sql = "insert into orderForm(orderid,createtime,paytime,delivertime,username,goodsid) " +
					"values(?,?,'','',?,?) ";
			ps = connection.prepareStatement(sql);
			ps.setInt(1,orderid);
			ps.setString(2,createtime);
			
			ps.setString(3,username);
			ps.setString(4,goodsid);
			// rs = ps.executeQuery();

			/*
			 * String picture=rs.getString(1);
			 * 
			 * String bz=rs.getString(2);
			 * 
			 * float price=rs.getFloat(3);
			 * 
			 * ShoppingCart shoppingCart=new ShoppingCart();
			 * 
			 * shoppingCart.setPricture(picture); shoppingCart.setBz(bz);
			 * shoppingCart.setPrice(price);
			 * 
			 * cart.add(shoppingCart);
			 */
			ps.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("�򶩵�����Ӷ���ʧ�ܣ�" + e.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("�ر�ResultSetʧ�ܣ�" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("�ر�PreparedStatementʧ�ܣ�"
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("�ر�Connectionʧ�ܣ�"
								+ e.getMessage());
					}
				}
			}
		}
		return false;

	}
	@Override
	public void updateOrderInfor(String paytime,String delivertime,String id)
	{
		Connection connection = null;
		PreparedStatement ps = null;
		

		try {
			connection = dataSource.getConnection();
			String sql = "update orderForm set paytime='"+paytime+"',delivertime='"+delivertime+"' where orderid='"+id+"'";
			ps = connection.prepareStatement(sql);
			
			
			//ps.setFloat(1,price);
			//ps.setInt(2,id);
			
			 ps.executeUpdate();
				
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("�޸Ķ���ʧ�ܣ�" + e.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("�ر�ResultSetʧ�ܣ�" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("�ر�PreparedStatementʧ�ܣ�"
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("�ر�Connectionʧ�ܣ�"
								+ e.getMessage());
					}
				}
			}
		}
		
		
	}
	@Override
	public void deleteOrderById(int shoesId) {
		Connection connection = null;
		PreparedStatement ps = null;
		

		try {
			connection = dataSource.getConnection();
			String sql = "DELETE FROM orderForm WHERE orderid=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(1,shoesId);
			ps.executeUpdate();
		
		    } catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("ɾ������ʧ�ܣ�" + e.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("�ر�ResultSetʧ�ܣ�" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("�ر�PreparedStatementʧ�ܣ�"
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("�ر�Connectionʧ�ܣ�"
								+ e.getMessage());
					}
				}
			}
		}

		
	}
	@Override
	public List<OrderInfor> findOrderById(String orderid, String shopperid) {
		List<OrderInfor> order = new ArrayList<OrderInfor>();
		//int count=0;
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select * from orderForm where orderid=? and username=?";
			ps = connection.prepareStatement(sql);
			ps.setString(1, orderid);
			ps.setString(2, shopperid);
			rs = ps.executeQuery();
			while (rs.next()) {
				String id=rs.getString(1);
				String createtime=rs.getString(2);
				String paytime=rs.getString(3);
				String deliertime=rs.getString(4);
				String username=rs.getString(5);
				String goodid=rs.getString(6);
		
				
				OrderInfor o=new OrderInfor();
				o.setOrderid(id);
				o.setCreatetime(createtime);
				o.setPaytime(paytime);
				o.setDeliverytime(deliertime);
				o.setUsername(username);
				o.setGoodsid(goodid);
				
				order.add(o);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("����id��ѯЬ����Ϣʧ�ܣ�" + e.getMessage());
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("�ر�ResultSetʧ�ܣ�" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("�ر�PreparedStatementʧ�ܣ�"
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("�ر�Connectionʧ�ܣ�"
								+ e.getMessage());
					}
				}
			}
		}

		return order;
	}

	
}
