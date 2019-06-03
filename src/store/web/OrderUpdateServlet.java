package store.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.dao.OrderInforDao;
import store.dao.jdbc.OrderInforJDBC;

public class OrderUpdateServlet extends HttpServlet {

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
		request.setCharacterEncoding("utf-8");
		String id=request.getParameter("orderid");
		String a=request.getParameter("Paytime");
		String b=request.getParameter("deliverytime");
		System.out.println(id+a+b);
		PrintWriter out = response.getWriter();
		if(a.equals("1900-01-01")){
			Date date = new Date();
			SimpleDateFormat dateFormat= new SimpleDateFormat("yyyy-MM-dd");
			a=dateFormat.format(date);
			System.out.println(a);
			OrderInforDao dao=new OrderInforJDBC();
			dao.updateOrderInfor(a, a, id);
			out.print("<script language='javascript'>alert('修改订单成功！');window.location.href='Admin.jsp';</script>");
		}else{
			out.print("<script language='javascript'>alert('买家已付清，请发货！！');window.location.href='Admin.jsp';</script>");
		}
		out.flush();
		out.close();
	}

}
