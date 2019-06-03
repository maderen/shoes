package store.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import store.dao.ShopperDao;
import store.dao.jdbc.ShopperDaoImp;
import store.domain.shopper;

public class LoginServlet extends HttpServlet {

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
		String username=request.getParameter("username");
		String password=request.getParameter("password");
		//int pasw = Integer.parseInt(password);
		System.out.println(username+password);
		shopper shopper=new shopper();
		ShopperDao dao=new ShopperDaoImp();
		
		int i=dao.selectall(username, password);
		if(i==1){
			if(username.equals("admin")&&password.equals("123456")){
				response.sendRedirect("Admin.jsp?usename="+username);
			}else{
				
			response.sendRedirect("Mainpage.jsp");
			
			HttpSession session = request.getSession(true);
			
			session.setAttribute("ip", username);
			}
			
		}
		else {
			out.print("<script language='javascript'>alert('用户名不存在，请先注册！');window.location.href='register.jsp';</script>");
		}
		System.out.println(i);
		out.flush();
		out.close();
	}
	
	

}
