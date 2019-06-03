package store.web;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import store.dao.OrderInforDao;
import store.dao.ShoesDao;
import store.dao.ShopperDao;
import store.dao.jdbc.ShoesDaoJDBCImp;
import store.dao.jdbc.ShopperDaoImp;
import store.dao.jdbc.OrderInforJDBC;
import store.domain.OrderInfor;
import store.domain.ShoppingCart;
import store.domain.shopper;

public class OrderInforServlet extends HttpServlet
{
	private DataSource dataSource;

	public OrderInforServlet()
	{
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context
					.lookup("java:comp/env/jdbc/Store");
		} catch (NamingException e) {
			e.printStackTrace();
			throw new RuntimeException("查找数据源失败：" + e.getMessage());
		}
	}

	/**
	 * The doGet method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		doPost(request, response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 * 
	 * This method is called when a form has its tag value method equals to
	 * post.
	 * 
	 * @param request
	 *            the request send by the client to the server
	 * @param response
	 *            the response send by the server to the client
	 * @throws ServletException
	 *             if an error occurred
	 * @throws IOException
	 *             if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException
	{
		//1、获取数据库的列项
		request.setCharacterEncoding("utf-8");
		int oid = Integer.parseInt(request.getParameter("orderid"));
		String createtime = request.getParameter("createtime");
		String paytime = request.getParameter("paytime");
		String deliverytime = request.getParameter("deliverytime");
		int sid = Integer.parseInt(request.getParameter("shopperid"));
	    int  gid = Integer.parseInt(request.getParameter("goodsid"));
		String tel = request.getParameter("tel");
	
		//2、
		/*
		OrderInfor orderinfor = new OrderInfor();
		orderinfor.setOid(oid);
		orderinfor.setCreatetime(createtime);
		orderinfor.setPaytime(paytime);
		orderinfor.setDelivertime(deliverytime);
		orderinfor.setSid(sid);
		orderinfor.setGid(gid);
		orderinfor.setTel(tel);*/
		
		//3、dao层的接口
		OrderInforDao dao = new OrderInforJDBC();
		// dao.addShoes(picture, color, bz, pr, si, type, fitPeople);
		// out.println("添加成功");
		/*if(dao.addOrderInfor(, sid, gid, createtime, paytime, deliverytime, tel)){
			// 成功
			request.setAttribute("str", "true");
			request.getRequestDispatcher("suc.jsp").forward(request, response);
		} else {
			request.setAttribute("str", "false");
			request.getRequestDispatcher("lostcid.jsp").forward(request,
					response);
		}
		//最后转向的JSP页面
		response.sendRedirect("OrdeInfor.jsp");
		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
	
*/
		}
	
}