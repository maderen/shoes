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

import store.dao.ShopperDao;
import store.domain.Shoes;
import store.domain.shopper;


public class ShopperDaoImp implements ShopperDao{
	
	
private DataSource dataSource;
	
	public ShopperDaoImp() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Store");
		} catch (NamingException e) {
			e.printStackTrace();
			throw new RuntimeException("查找数据源失败：" + e.getMessage());
		}
	}

	@Override
	public int selectall(String username, String passward) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count=0;

		try {
			connection = dataSource.getConnection();
			String sql = "SELECT [shopperid],[shoppername] ,[password],[tel],[address],[isplus]FROM [dbo].[shopper] where shoppername='" + username + "'and password='"+passward+"'";
			ps = connection.prepareStatement(sql);
			//ps.setString(1, "%" +content+"%");
			//ps.setString(2, "%" +content+"%");
			//ps.setInt(shoesID, 1);
			rs = ps.executeQuery();

			while (rs.next()) {
				count=1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("利用内容查找鞋子失败：" + e.getMessage());
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

		return count;
	}

	@Override
	public boolean addshopper(String username, String password, int tel, String address, String isplus) {

		List<shopper> list=new ArrayList<shopper>();
		Connection connection = null;
		PreparedStatement ps = null;
		

		try {
			connection = dataSource.getConnection();
			String sql = "DECLARE @IDTest int;EXEC [dbo].Joinmymy @shoppername=N'"+username+"',@password=N'"+password+"',@tel=N'"+tel+"',@address=N'"+address+"',@isplus=N'"+isplus+"',@shopperid=@IDTest;SELECT @IDTest =SCOPE_IDENTITY()--获取刚注册分配的用户idFROM shopper";
			ps = connection.prepareStatement(sql);
			/*ps.setString(1,username);
			ps.setString(2,password);
			ps.setInt(3,tel);
			ps.setString(4,address);
			ps.setString(5,isplus);*/
				
			ps.executeUpdate();
				
			
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("添加商品失败：" + e.getMessage());
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
		return true;
	}

	@Override
	public int selectusername(String username) {
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int count=0;

		try {
			connection = dataSource.getConnection();
			String sql = "SELECT [shopperid],[shoppername] ,[password],[tel],[address],[isplus]FROM [dbo].[shopper] where shoppername='" + username + "'";
			ps = connection.prepareStatement(sql);
			//ps.setString(1, "%" +content+"%");
			//ps.setString(2, "%" +content+"%");
			//ps.setInt(shoesID, 1);
			rs = ps.executeQuery();

			while (rs.next()) {
				count=1;
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("利用内容查找鞋子失败：" + e.getMessage());
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

		return count;
	}

}
