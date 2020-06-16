package helpers;

import models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileHelper {

    public static User processUserProfile(HttpServletRequest request, HttpServletResponse response) {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        User user = (User) request.getSession().getAttribute("username");
        user.setFirstname(firstname);
        user.setLastname(lastname);
        user.setAddress(address);
        user.setPhone(phone);
        user.setDepartment(department);

        return  user;

    }

}
