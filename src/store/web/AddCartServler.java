package store.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import store.dao.ShoppingCartDao;
import store.dao.jdbc.ShoppingCartDaoImp;
import store.domain.ShoppingCart;

public class AddCartServler extends HttpServlet {

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
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html;charset=utf-8");
		request.setCharacterEncoding("utf-8");
		//1
		String strId=request.getParameter("scId");
		int id=Integer.parseInt(strId);
		String username=request.getParameter("username");
		//获取session的内容
		HttpSession session = request.getSession();
		String name=(String)session.getAttribute("ip");
		String size=request.getParameter("size");
		System.out.println(id+username+size);
		PrintWriter pw=response.getWriter();
		//2\
		if(name!=null){
		ShoppingCart sh=new ShoppingCart();
		sh.setId(id);
		
		ShoppingCartDao dao=new ShoppingCartDaoImp();
		dao.AddShoesByid(id,username,size);
		//out.println("添加成功");
		
		pw.write("<script language='javascript'>alert('添加购物车成功！');window.location.href='originals.jsp'</script>");
		//response.sendRedirect("originals.jsp");
		//RequestDispatcher dispatcher = request.getRequestDispatcher("originals.jsp");
		//dispatcher.forward(request, response);
		}else{
			pw.print("<script language='javascript'>alert('请先登陆！');window.location.href='login.jsp';</script>");
		}
		
		
	}

}
