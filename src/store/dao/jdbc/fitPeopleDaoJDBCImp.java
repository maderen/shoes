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

import store.dao.fitPeopleDao;
import store.domain.shoesCatalog;

public  class fitPeopleDaoJDBCImp implements fitPeopleDao {
	
	private DataSource dataSource;
	
	public fitPeopleDaoJDBCImp() {
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
	 * 获取所有适合人群名称
	 */
	public List<String> getFitName() {
		List<String> fitname = new ArrayList<String>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "SELECT  name FROM fitpeople";
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String name=rs.getString(1);
				fitname.add(name);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("获取适合人群名称失败：" + e.getMessage());
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

		return fitname;
	}
	
	
	/**
	 * 获取所有商品分类
	 */
	public List<String> getGoodsName(){
		List<String> goosename = new ArrayList<String>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select distinct  name from adidasCatalog";
			ps = connection.prepareStatement(sql);
			rs = ps.executeQuery();
			while (rs.next()) {
				String name=rs.getString(1);
				goosename.add(name);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("获取所有商品分类失败：" + e.getMessage());
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

		return goosename;
		
		
	}
	/**
	 * 获取所有商品类型
	 */
	public List<shoesCatalog> getGoodsTypeById(int id){
		
		List<shoesCatalog> goodstype = new ArrayList<shoesCatalog>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select distinct  name from shoesCatalog where id=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(id, 1);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				String name=rs.getString(1);
				
				shoesCatalog s=new shoesCatalog();
				s.setName(name);
				goodstype.add(s);
			
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("获取所有商品类型失败：" + e.getMessage());
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

		return goodstype;
		
	}
	

}
