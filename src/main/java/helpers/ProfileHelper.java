package helpers;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ProfileHelper {

    public static boolean isValid(HttpServletRequest request, HttpServletResponse response) {
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");

        if (firstname == null) return false;
        if (lastname == null) return false;
        if (address == null) return false;
        if (phone == null  ) return false;
        if (department == null) return false;

        return true;
    }
}
