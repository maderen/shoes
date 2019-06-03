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

public class AllServlet extends HttpServlet {

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
		String str=request.getParameter("str");
		//System.out.println(str);
		String[] sourceStrArray = str.split(":");
        for (int i = 0; i < sourceStrArray.length; i++) {
            //System.out.println(sourceStrArray[i]);
            String[] StrArray=sourceStrArray[1].split(",");
            for (int j = 0; j < StrArray.length; j++) {
                System.out.println(StrArray[j]);
                ShoesDao dao = new ShoesDaoJDBCImp();
    			List<Shoes> shoes = dao.findShoe(StrArray[1], StrArray[0]);
    			request.setAttribute("result", shoes);
    			RequestDispatcher dispatcher = request.getRequestDispatcher("search6.jsp");
    			dispatcher.forward(request, response);
    			//response.sendRedirect("search6.jsp");
    			return;
            }
        }
        
		out.flush();
		out.close();
	}

}
