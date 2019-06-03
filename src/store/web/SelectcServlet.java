package store.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.dao.ShoesDao;
import store.dao.jdbc.ShoesDaoJDBCImp;
import store.domain.Shoes;

public class SelectcServlet extends HttpServlet {

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
		String method = request.getParameter("method");
		String type = request.getParameter("type");
		System.out.println(method+type);
		if (type.equals("1")) {
			ShoesDao dao = new ShoesDaoJDBCImp();
			List<Shoes> shoes = dao.findShoestorage(method);
			request.setAttribute("result", shoes);
			RequestDispatcher dispatcher = request.getRequestDispatcher("search2.jsp");
			dispatcher.forward(request, response);
		} else if (type.equals("2")) {
			ShoesDao dao = new ShoesDaoJDBCImp();
			List<Shoes> shoes = dao.findShoestorage2(method);
			request.setAttribute("result", shoes);
			RequestDispatcher dispatcher = request.getRequestDispatcher("search3.jsp");
			dispatcher.forward(request, response);
		}else if (type.equals("3")) {
			ShoesDao dao = new ShoesDaoJDBCImp();
			List<Shoes> shoes = dao.findShoesprice(method);
			request.setAttribute("result", shoes);
			RequestDispatcher dispatcher = request.getRequestDispatcher("search4.jsp");
			dispatcher.forward(request, response);
		}
		else if (type.equals("4")) {
			ShoesDao dao = new ShoesDaoJDBCImp();
			List<Shoes> shoes = dao.findShoesprice2(method);
			request.setAttribute("result", shoes);
			RequestDispatcher dispatcher = request.getRequestDispatcher("search5.jsp");
			dispatcher.forward(request, response);
		}
		
		out.flush();
		out.close();
	}

}
