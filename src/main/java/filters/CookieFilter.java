package filters;


import Data.UserDao;
import models.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@WebFilter(filterName = "CookieFilter")
public class CookieFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest request = (HttpServletRequest) req;
        Cookie[] cookies = request.getCookies();
        User user = null;

        if(cookies!=null){
            for(Cookie c: cookies){
                if(c.getName().equals("user")){
                    user = UserDao.getInstance().findByUsername(c.getValue());
                }
            }

            if(user!=null){
                request.setAttribute("username", user.getUsername());
            }
        }

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
