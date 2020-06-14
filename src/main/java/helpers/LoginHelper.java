package helpers;

import Data.UserDao;
import models.User;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.text.CollationKey;
import java.util.ArrayList;


public class LoginHelper {
    private static User user;
    private static ArrayList<String> errors = new ArrayList<String>();

    public static ArrayList<String> getErrors() {
        return (ArrayList<String>) errors.clone();
    }

    public static void clearErrors() {
        errors.clear();
    }

    public static boolean processLoginInfo(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        user = UserDao.getInstance().findByUsername(request.getParameter("username"));
        Boolean validation = isValidCredentials(request);

        if (user != null && validation) {
            String rememberString = request.getParameter("remember_me");

            Boolean rememberMe = rememberString != null && rememberString.equals("true");
            Cookie cookie = null;

            if (rememberMe) {
                cookie = new Cookie("user", user.toCookie());
                cookie.setMaxAge(30 * 24 * 60 * 60);

            } else {
                cookie = new Cookie("user", null);
                cookie.setMaxAge(0);
            }
            response.addCookie(cookie);
            session.setAttribute("user", user);
    System.out.println(session.getAttribute("user"));
        } else {
            errors.add("Username or password incorrect.");
        }

        return validation;
    }

    private static boolean isValidCredentials(HttpServletRequest request) {
        String password = request.getParameter("password");
        if (password == null) return false;
        if (user == null) return false;
        if (!user.getPassword().equals(password)) return false;

        return true;
    }

}





