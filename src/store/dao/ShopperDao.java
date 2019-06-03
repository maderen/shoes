package store.dao;

public interface ShopperDao {
	/*
	 * 根据用户名和密码确认登陆
	 */
	public int selectall(String username,String passward);
	/*
	 * 添加用户
	 */
	public boolean addshopper(String username,String password,int tel,String address,String isplus);
	/*
	 * 根据用户名判断用户名是否重复
	 */
	public int selectusername(String username);

}
