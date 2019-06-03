package store.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.dao.ShopperDao;
import store.dao.jdbc.ShopperDaoImp;

public class RegisterServlet extends HttpServlet {

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
		//String userid=request.getParameter("userid");
		//int id = Integer.parseInt(userid);
		String tel=request.getParameter("tel");
		int tel1 = Integer.parseInt(tel);
		String address=request.getParameter("address");
		String isplus=request.getParameter("isplus");
		//int plus = Integer.parseInt(isplus);
		System.out.println(username+password+tel+address+isplus);
		ShopperDao dao=new ShopperDaoImp();
		int i=dao.selectusername(username);
		if(i==1){
			out.print("<script language='javascript'>alert('用户名存在，请重新注册！');window.location.href='register.jsp';</script>");
		}else{
		dao.addshopper(username,password,tel1,address,isplus);
		out.print("<script language='javascript'>alert('用户名注册成功，请登录！');window.location.href='login.jsp';</script>");
		}
	}

}
