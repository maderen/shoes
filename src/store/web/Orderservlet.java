package store.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import store.dao.OrderInforDao;
import store.dao.jdbc.OrderInforJDBC;

public class Orderservlet extends HttpServlet {

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
		String goodsid=request.getParameter("id");
		//int goodsid=Integer.parseInt(id);
		int max=100,min=1;
		int orderid = (int) (Math.random()*(max-min)+min); 
		//获取session的内容
		HttpSession session = request.getSession();
		String username=(String)session.getAttribute("ip");
		System.out.println(username+goodsid+orderid);
		Date date = new Date();
		SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
		System.out.println(dateFormat.format(date));
		OrderInforDao dao=new OrderInforJDBC();
		dao.addOrderInfor(orderid, dateFormat.format(date),username, goodsid);
		response.sendRedirect("suc.jsp");
		session.setAttribute("orderid", orderid);
		out.flush();
		out.close();
	}

}
