package store.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.dao.ShoesDao;
import store.dao.jdbc.ShoesDaoJDBCImp;

public class UpdateShoes2Servlet extends HttpServlet {

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
		PrintWriter out = response.getWriter();
		String a=request.getParameter("a");
		int id=Integer.parseInt(a);
		String b=request.getParameter("b");
		float price=Float.parseFloat(b);
		String c=request.getParameter("c");
		String d=request.getParameter("d");
		String e=request.getParameter("e");
		System.out.println(b+c+d+e);
		ShoesDao dao=new ShoesDaoJDBCImp();
		dao.updateShoes(price, c, d, e, id);
		out.print("<script language='javascript'>alert('更新商品成功！');window.location.href='Admin.jsp';</script>");
		out.flush();
		out.close();
	}

}
