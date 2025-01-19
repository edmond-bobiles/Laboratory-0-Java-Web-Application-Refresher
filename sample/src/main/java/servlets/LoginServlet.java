package servlets;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.Cookie;

public class LoginServlet extends HttpServlet{

    @Override
    public void init(ServletConfig config) throws ServletException {

    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Cookie[] cookies = request.getCookies();
        Cookie cookieUsername = findCookie(cookies,"inputUsername");
        
        if (cookieUsername != null) {
            String inputUsername = cookieUsername.getValue();
            if (inputUsername != null) {
                RequestDispatcher rd = request.getRequestDispatcher("result.jsp");
                rd.forward(request, response);
            }
        } else {
            response.sendRedirect("index.jsp");
        }
        String inputUsername = cookieUsername.getValue();
               
    }
    
    Cookie findCookie(Cookie[] cookies, String name){
        if (cookies != null){
            for (int i=0; i < cookies.length; i++){
                Cookie cookie = cookies[i];
                if (name.equals(cookie.getName())){
                    return cookie;
                }
            }
        }
        return null;
    }

}


