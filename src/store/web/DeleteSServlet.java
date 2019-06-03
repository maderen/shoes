package store.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.dao.ShoesDao;
import store.dao.jdbc.ShoesDaoJDBCImp;
import store.domain.Shoes;
import store.domain.ShoppingCart;

public class DeleteSServlet extends HttpServlet {

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
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//1
		String strId=request.getParameter("shId");
		System.out.println(strId);
		int id=Integer.parseInt(strId);
		
		//2
		Shoes sh=new Shoes();
		sh.setId(id);
		
		ShoesDao dao=new ShoesDaoJDBCImp();
		
		dao.deleteShoesById(id);
		System.out.println("³É¹¦£¬id="+id);
		response.sendRedirect("preview-data.jsp");
	}

}
