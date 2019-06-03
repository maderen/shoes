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
public class UserExitServlet extends HttpServlet {

	

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

		
        HttpSession session = request.getSession();
       
        String shopper = (String)session.getAttribute("ip");
        System.out.println(shopper+"�˳�");
        
        if(shopper != null){
          
            session.removeAttribute("shopper");
            request.getSession().invalidate();
            
            System.out.println(shopper+"�˳���������");
         // ������ʾ��Ϣ
            request.setAttribute("info", shopper + " �ѳɹ��˳���");
        }
        // ת����message.jspҳ��
        //request.getRequestDispatcher("Mainpage.jsp").forward(request, response);
        response.sendRedirect("Mainpage.jsp");

	}


}
