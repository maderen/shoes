package store.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.dao.ShoesDao;
import store.dao.ShoppingCartDao;
import store.dao.jdbc.ShoesDaoJDBCImp;
import store.dao.jdbc.ShoppingCartDaoImp;
import store.domain.Shoes;
import store.domain.ShoppingCart;

public class AddShoesServlet extends HttpServlet {

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
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String color=request.getParameter("color");//color
		String discrib=request.getParameter("bz");//discrib
		String goodspic=request.getParameter("picture");//goodspic
		String id=request.getParameter("goodsid");//ordersid
		int goodsid=Integer.parseInt(id);
		String cataid1=request.getParameter("type");//cataid
		int cataid=Integer.parseInt(cataid1);
		String price1=request.getParameter("price");//price
		float price=Float.parseFloat(price1);
		String audid1=request.getParameter("fitPeople");//audid
		int audid=Integer.parseInt(audid1);
		String discount=request.getParameter("discount");//discount
		String size=request.getParameter("size");//size
		String storage1=request.getParameter("storage");//storage
		int storage=Integer.parseInt(storage1);
		String goodsname=request.getParameter("goodsname");//goodsname
		System.out.println(goodsid+goodsname+storage+cataid+audid+price+size+color+discrib+discount);
		
		
		ShoesDao dao=new ShoesDaoJDBCImp();
		int i=dao.findShoesById2(goodsid);
		if(i==1){
			out.print("<script language='javascript'>alert('添加商品重复，请重新添加！');window.location.href='Admin.jsp';</script>");
		}else {
			
			dao.addShoes(goodsid, goodsname, goodspic, storage, cataid, audid, price, size, color, discrib, discount);
			out.print("<script language='javascript'>alert('添加商品成功！');window.location.href='Admin.jsp';</script>");
		}
	}

}
