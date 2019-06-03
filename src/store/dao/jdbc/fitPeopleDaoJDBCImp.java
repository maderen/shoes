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
			throw new RuntimeException("��������Դʧ�ܣ�" + e.getMessage());
		}
	}

	@Override
	
	/**
	 * ��ȡ�����ʺ���Ⱥ����
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
			throw new RuntimeException("��ȡ�ʺ���Ⱥ����ʧ�ܣ�" + e.getMessage());
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

		return fitname;
	}
	
	
	/**
	 * ��ȡ������Ʒ����
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
			throw new RuntimeException("��ȡ������Ʒ����ʧ�ܣ�" + e.getMessage());
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

		return goosename;
		
		
	}
	/**
	 * ��ȡ������Ʒ����
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
			throw new RuntimeException("��ȡ������Ʒ����ʧ�ܣ�" + e.getMessage());
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

		return goodstype;
		
	}
	

}
