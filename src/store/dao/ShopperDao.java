package store.dao;

public interface ShopperDao {
	/*
	 * �����û���������ȷ�ϵ�½
	 */
	public int selectall(String username,String passward);
	/*
	 * ����û�
	 */
	public boolean addshopper(String username,String password,int tel,String address,String isplus);
	/*
	 * �����û����ж��û����Ƿ��ظ�
	 */
	public int selectusername(String username);

}
