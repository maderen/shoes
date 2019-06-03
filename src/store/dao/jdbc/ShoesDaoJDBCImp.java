package store.dao.jdbc;

import java.util.*;

import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import store.dao.ShoesDao;
import store.domain.Shoes;
import store.domain.ShoppingCart;

public class ShoesDaoJDBCImp implements ShoesDao {
	
	private DataSource dataSource;
	
	public ShoesDaoJDBCImp() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/Store");
		} catch (NamingException e) {
			e.printStackTrace();
			throw new RuntimeException("��������Դʧ�ܣ�" + e.getMessage());
		}
	}
	/**
	 * ��ȡȫ��Ь����Ϣ
	 */
	public List<Shoes> findShoes() {
		
		List<Shoes> shoes = new ArrayList<Shoes>();

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select goodsid,goodspic,color,discrib,price,size,discount from goods";
			ps = connection.prepareStatement(sql);
			//ps.setInt(shoesID, 1);
			rs = ps.executeQuery();
			while (rs.next()) {
				
				int id=rs.getInt(1);
				String picture=rs.getString(2);
				String color=rs.getString(3);
				String discrib=rs.getString(4);
				float price=rs.getFloat(5);
				int size=rs.getInt(6);
				int discount=rs.getInt(7);
				Shoes s=new Shoes();
				s.setId(id);
				s.setPricture(picture);
				s.setColor(color);
				s.setDiscrib(discrib);
				s.setPrice(price);
				s.setSize(size);
				s.setDiscount(discount);
				shoes.add(s);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("��ȡȫ��Ь����Ϣʧ�ܣ�" + e.getMessage());
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

		return shoes;
	}
/**
 * ����id��ѯЬ����Ϣ
 */
	@Override
	public List<Shoes> findShoesById(int shoesId) {
		List<Shoes> shoes = new ArrayList<Shoes>();
		//int count=0;
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select goodsid,goodspic ,cataid ,discrib ,price from goods where goodsid=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(1,shoesId);
			rs = ps.executeQuery();
			while (rs.next()) {
				int id=rs.getInt(1);
				String picture=rs.getString(2);
				String type=rs.getString(3);
				String discrib=rs.getString(4);
				float price=rs.getFloat(5);
				
				Shoes s=new Shoes();
				s.setId(id);
				s.setPricture(picture);
				s.setType(type);
				s.setDiscrib(discrib);
				s.setPrice(price);
				
				shoes.add(s);
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

		return shoes;
	}

@Override
public List<Shoes> findShoesByContent(String content) {
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		connection = dataSource.getConnection();
		String sql = "select [goodspic],color,[discrib],price from [goods]";
		if(content!=null&&content.trim().length()>0){
			sql += " WHERE [discrib] LIKE ?";	
		
		}
		ps = connection.prepareStatement(sql);
		ps.setString(1, "%"+content+"%");
		//ps.setInt(shoesID, 1);
		rs = ps.executeQuery();

		while (rs.next()) {
			
			
			String picture=rs.getString(1);
			String color=rs.getString(2);
			String discrib=rs.getString(3);
			float price=rs.getFloat(4);
			Shoes s=new Shoes();
			s.setPricture(picture);
			s.setColor(color);
			s.setDiscrib(discrib);
			s.setPrice(price);
			shoes.add(s);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�������ݲ���Ь��ʧ�ܣ�" + e.getMessage());
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

	return shoes;

}

public void deleteShoesById(int shoesId){
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	

	try {
		connection = dataSource.getConnection();
		String sql = "DELETE FROM goods WHERE goodsid=?";
		ps = connection.prepareStatement(sql);
		ps.setInt(1,shoesId);
		ps.executeUpdate();
	
	    } catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("ɾ����Ʒʧ�ܣ�" + e.getMessage());
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

/**
 * �����Ʒ
 * @return 
 */
@Override
public boolean addShoes(int goodsid,String goodsname,String goodspic,int storage,int cataid,int audid,float price,String size,String color,String discrib,String discount)
{
	List<Shoes> cart = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	

	try {
		connection = dataSource.getConnection();
		String sql = "insert into goods values (?,?,?,?,?,?,?,?,?,?,?)";
		ps = connection.prepareStatement(sql);
		ps.setInt(1,goodsid);
		ps.setString(2,goodsname);
		ps.setString(3,goodspic);
		ps.setInt(4,storage);
		ps.setInt(5,cataid);
		ps.setInt(6,audid);
		ps.setFloat(7,price);
		ps.setString(8,size);
		ps.setString(9,color);
		ps.setString(10,discrib);
		ps.setString(11,discount);
		 ps.executeUpdate();
			
		
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�����Ʒʧ�ܣ�" + e.getMessage());
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
	return true;
	

	
}
@Override
//����ID���¹���
public void updateShoes(float price,String color,String discrib,String discount,int id) {
	List<Shoes> cart = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	

	try {
		connection = dataSource.getConnection();
		String sql = "update goods set price='"+price+"',color='"+color+"', discrib='"+discrib+"',discount='"+discount+"' where goodsid='"+id+"'";
		ps = connection.prepareStatement(sql);
		
		
		//ps.setFloat(1,price);
		//ps.setInt(2,id);
		
		 ps.executeUpdate();
			
		
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�޸���Ʒʧ�ܣ�" + e.getMessage());
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
public List<Shoes> findShoestorage(String storage) {
	//����list���ݣ����ڴ���һ�����ݵ�����
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		connection = dataSource.getConnection();
		String sql = "select [goodspic],color,[discrib],price from [goods] order by "+storage+" desc";
		ps = connection.prepareStatement(sql);
		//ps.setString(1, storage);
		//ps.setInt(shoesID, 1);
		rs = ps.executeQuery();

		while (rs.next()) {
			
			
			String picture=rs.getString(1);
			String color=rs.getString(2);
			String discrib=rs.getString(3);
			float price=rs.getFloat(4);
			Shoes s=new Shoes();
			s.setPricture(picture);
			s.setColor(color);
			s.setDiscrib(discrib);
			s.setPrice(price);
			shoes.add(s);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�������ݲ���Ь��ʧ�ܣ�" + e.getMessage());
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

	return shoes;

}
@Override
public List<Shoes> findShoestorage2(String storage) {
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		connection = dataSource.getConnection();
		String sql = "select [goodspic],color,[discrib],price from [goods] order by "+storage+" asc";
		ps = connection.prepareStatement(sql);
		//ps.setString(1, storage);
		//ps.setInt(shoesID, 1);
		rs = ps.executeQuery();

		while (rs.next()) {
			
			
			String picture=rs.getString(1);
			String color=rs.getString(2);
			String discrib=rs.getString(3);
			float price=rs.getFloat(4);
			Shoes s=new Shoes();
			s.setPricture(picture);
			s.setColor(color);
			s.setDiscrib(discrib);
			s.setPrice(price);
			shoes.add(s);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�������ݲ���Ь��ʧ�ܣ�" + e.getMessage());
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

	return shoes;

}
@Override
public List<Shoes> findShoesprice(String storage) {
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		connection = dataSource.getConnection();
		String sql = "select [goodspic],color,[discrib],price from [goods] order by "+storage+" desc";
		ps = connection.prepareStatement(sql);
		//ps.setString(1, storage);
		//ps.setInt(shoesID, 1);
		rs = ps.executeQuery();

		while (rs.next()) {
			
			
			String picture=rs.getString(1);
			String color=rs.getString(2);
			String discrib=rs.getString(3);
			float price=rs.getFloat(4);
			Shoes s=new Shoes();
			s.setPricture(picture);
			s.setColor(color);
			s.setDiscrib(discrib);
			s.setPrice(price);
			shoes.add(s);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�������ݲ���Ь��ʧ�ܣ�" + e.getMessage());
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

	return shoes;
}
@Override
public List<Shoes> findShoesprice2(String storage) {
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		connection = dataSource.getConnection();
		String sql = "select [goodspic],color,[discrib],price from [goods] order by "+storage+" asc";
		ps = connection.prepareStatement(sql);
		//ps.setString(1, storage);
		//ps.setInt(shoesID, 1);
		rs = ps.executeQuery();

		while (rs.next()) {
			
			
			String picture=rs.getString(1);
			String color=rs.getString(2);
			String discrib=rs.getString(3);
			float price=rs.getFloat(4);
			Shoes s=new Shoes();
			s.setPricture(picture);
			s.setColor(color);
			s.setDiscrib(discrib);
			s.setPrice(price);
			shoes.add(s);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�������ݲ���Ь��ʧ�ܣ�" + e.getMessage());
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

	return shoes;
}
@Override
public List<Shoes> findShoe(String cataname, String audname) {
	List<Shoes> shoes = new ArrayList<Shoes>();

	Connection connection = null;
	PreparedStatement ps = null;
	ResultSet rs = null;

	try {
		connection = dataSource.getConnection();
		String sql = "select [goodspic],color,[discrib],price from goods where cataid in(select cataid from catagory where cataname like '%"+cataname+"%') and  audid in(select audid from audience where audname like '%"+audname+"%')";
		ps = connection.prepareStatement(sql);
		//ps.setString(1, storage);
		//ps.setInt(shoesID, 1);
		rs = ps.executeQuery();

		while (rs.next()) {
			
			
			String picture=rs.getString(1);
			String color=rs.getString(2);
			String discrib=rs.getString(3);
			float price=rs.getFloat(4);
			Shoes s=new Shoes();
			s.setPricture(picture);
			s.setColor(color);
			s.setDiscrib(discrib);
			s.setPrice(price);
			shoes.add(s);
			
		}
	} catch (SQLException e) {
		e.printStackTrace();
		throw new RuntimeException("�������ݲ���Ь��ʧ�ܣ�" + e.getMessage());
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

	return shoes;
}
/**
 * ����id��ѯЬ����Ϣ
 */
	@Override
	public int findShoesById2(int shoesId) {
		//List<Shoes> shoes = new ArrayList<Shoes>();
		int count=0;
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		try {
			connection = dataSource.getConnection();
			String sql = "select goodsid,goodspic ,cataid ,discrib ,price from goods where goodsid=?";
			ps = connection.prepareStatement(sql);
			ps.setInt(1,shoesId);
			rs = ps.executeQuery();
			while (rs.next()) {
				count=1;
				
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

		return count;
	}

}


