package store.dao.jdbc;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import store.dao.ShoppingCartDao;
import store.domain.Shoes;
import store.domain.ShoppingCart;

public class ShoppingCartDaoImp implements ShoppingCartDao {
		
		private DataSource dataSource;
		
		public ShoppingCartDaoImp() {
			try {
				Context context = new InitialContext();
				dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Store");
			} catch (NamingException e) {
				e.printStackTrace();
				throw new RuntimeException("查找数据源失败：" + e.getMessage());
			}
		}
	@Override
	
	/**
	 * 向购物车中添加商品
	 */
	public void AddShoesByid(int shoesId,String username,String size) {
		
		List<ShoppingCart> cart = new ArrayList<ShoppingCart>();

		Connection connection = null;
		PreparedStatement ps = null;
		

		try {
			connection = dataSource.getConnection();
			String sql = "insert into shoppingCart(username,goodsid,size,price,goodspic,goodsinfor,quanlity) select '"+username+"'as username,goodsid,'"+size+"'as size,price,goodspic,discrib,'1'as quanlity from goods where goodsid=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(1,shoesId);
				//rs = ps.executeQuery();
			
				
				/*String picture=rs.getString(1);
				
				String bz=rs.getString(2);
				
				float price=rs.getFloat(3);
				
				ShoppingCart shoppingCart=new ShoppingCart();
				
				shoppingCart.setPricture(picture);
				shoppingCart.setBz(bz);
				shoppingCart.setPrice(price);
				
				cart.add(shoppingCart);*/
			 ps.executeUpdate();
				
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("向购物车中添加商品失败：" + e.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("关闭ResultSet失败：" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("关闭PreparedStatement失败："
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("关闭Connection失败："
								+ e.getMessage());
					}
				}
			}
		}

		
	}
	
	/**
	 * 显示购物车中商品
	 */
	@Override
	public List<ShoppingCart> ShowShoesById() {
		List<ShoppingCart> cart = new ArrayList<ShoppingCart>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select goodspic,goodsinfor,price,goodsid  from shoppingcart";
			ps = connection.prepareStatement(sql);
			//ps.setInt(1,shoesId);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				
				String picture=rs.getString(1);
				String bz=rs.getString(2);
				
				float price=rs.getFloat(3);
				int id=rs.getInt(4);
				ShoppingCart shoppingCart=new ShoppingCart();
				
				shoppingCart.setPricture(picture);
				shoppingCart.setBz(bz);
				shoppingCart.setPrice(price);
				shoppingCart.setId(id);
				cart.add(shoppingCart);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("显示购物车中商品失败：" + e.getMessage());
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("关闭ResultSet失败：" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("关闭PreparedStatement失败："
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("关闭Connection失败："
								+ e.getMessage());
					}
				}
			}
		}

		
		return cart;
	}
	@Override
	public void DeleteShoesById(int shoesId) {
		List<ShoppingCart> cart = new ArrayList<ShoppingCart>();

		Connection connection = null;
		PreparedStatement ps = null;
		

		try {
			connection = dataSource.getConnection();
			String sql = "DELETE FROM shoppingcart WHERE goodsid=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(1,shoesId);
			ps.executeUpdate();
		
		    } catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("删除购物车商品失败：" + e.getMessage());
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
				throw new RuntimeException("关闭ResultSet失败：" + e.getMessage());
			} finally {
				try {
					if (ps != null) {
						ps.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
					throw new RuntimeException("关闭PreparedStatement失败："
							+ e.getMessage());
				} finally {
					try {
						if (connection != null) {
							connection.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
						throw new RuntimeException("关闭Connection失败："
								+ e.getMessage());
					}
				}
			}
		}

		
	}
	

}
