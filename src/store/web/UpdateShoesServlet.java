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

public class UpdateShoesServlet extends HttpServlet {

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

				//1
		        response.setContentType("text/html;charset=utf-8");
		        //request.setCharacterEncoding("UTF-8");
		       request.setCharacterEncoding("utf-8");
		        //response.setCharacterEncoding("UTF-8"); 
				String strId=request.getParameter("goodsid");
				System.out.println(strId);
				int id=Integer.parseInt(strId);
				String strPrice=request.getParameter("price");//color discrib discount
				System.out.println(strPrice);
				float price=Float.parseFloat(strPrice);
				////String color=new String(request.getParameter("color").getBytes("iso-8859-1"),"utf-8");
				String color=request.getParameter("color");
				System.out.println(color);
				//String discrib=new String(request.getParameter("discrib").getBytes("iso-8859-1"),"utf-8");
				String discrib=request.getParameter("discrib");
				System.out.println(discrib);
				String discount=request.getParameter("discount");
				System.out.println(discount);
				PrintWriter out=response.getWriter();
				out.println("<html>");
				out.println("<head><title>修改商品信息</title> <meta name='content-type' content='text/html; charset=UTF-8'></head>");
				out.println("<body align='center'>");
				out.println("<form action='update2' method='post'><table align='center'><tr><td>商品编号</td><td><input type='text' name='a' value='"+strId+"' /></td></tr>");
				out.println("<tr><td>商品价格</td><td><input type='text' name='b' value='"+price+"'/></td></tr>");
				out.println("<tr><td>商品颜色</td><td><input type='text'  name='c' value='"+color+"'/></td></tr>");
				out.println("<tr><td>商品描述</td><td><textarea  name='d'>"+discrib+"</textarea></td></tr>");
				out.println("<tr><td>商品数量</td><td><input type='text'  name='e' value='"+discount+"'/></td>");
				out.println("<tr><td><input type='submit'  value='更改'/></td><td><input type='reset'  value='取消'/></td></table>");
				out.println("</form></body>");
				out.println("</html>");
				
	}

}
