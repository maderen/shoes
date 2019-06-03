package store.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import store.dao.OrderInforDao;
import store.dao.ShoppingCartDao;
import store.dao.jdbc.OrderInforJDBC;
import store.dao.jdbc.ShoppingCartDaoImp;
import store.domain.OrderInfor;

public class selectOrderServlet extends HttpServlet
{
		/**
		 * The doGet method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to get.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doPost(request, response);
	}
	
	/**
		 * The doPost method of the servlet. <br>
		 *
		 * This method is called when a form has its tag value method equals to post.
		 * 
		 * @param request the request send by the client to the server
		 * @param response the response send by the server to the client
		 * @throws ServletException if an error occurred
		 * @throws IOException if an error occurred
		 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("utf-8");
		
		String orderid=request.getParameter("orderid");
		String shopperid=request.getParameter("shoppid");
		HttpSession session =request.getSession();
		session.setAttribute("orderid", orderid);
		session.setAttribute("shopperid", shopperid);
		System.out.println("111"+orderid);
		System.out.println("111"+shopperid);
		//OrderInforDao dao=new OrderInforJDBC();
		//dao.findOrderById(orderid,shopperid);
		response.sendRedirect("selectorder.jsp");
		/*RequestDispatcher dispatcher =request.getRequestDispatcher("selectorder.jsp");

	    dispatcher.forward(request, response);*/
	
		out.flush();
		out.close();
	}

}	
