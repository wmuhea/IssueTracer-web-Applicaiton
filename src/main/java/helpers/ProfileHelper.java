package helpers;

import models.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;

public class ProfileHelper {
    private static ArrayList<String> errors = new ArrayList<String>();

    public static ArrayList<String> getErrors() {
        ArrayList<String> clone = (ArrayList<String>) errors.clone();
        errors.clear();
        return clone;
    }

    public static void clearErrors() {
        errors.clear();
    }

    public static User processUserProfile(HttpServletRequest request) {
        Boolean isValid = isValid(request);

        if(isValid) {
            String firstname = request.getParameter("firstname");
            String lastname = request.getParameter("lastname");
            String address = request.getParameter("address");
            String phone = request.getParameter("phone");
            String department = request.getParameter("department");
            User user = (User) request.getSession().getAttribute("user");
            user.setFirstname(firstname);
            user.setLastname(lastname);
            user.setAddress(address);
            user.setPhone(phone);
            user.setDepartment(department);

            return user;
        }
        return null;

    }

    private static boolean isValid(HttpServletRequest request) {
        String firstname = request.getParameter("firstname");
        String address = request.getParameter("address");
        String phone = request.getParameter("phone");
        String department = request.getParameter("department");
        if(firstname == null) errors.add("Firstname field cannot be empty");
        if(address == null) errors.add("Address cannot be empty");
        if(phone == null) errors.add("Phone field cannot be empty");
        if(department == null) errors.add("Department field cannot be empty");

        if(!errors.isEmpty()) return false;

        return true;
    }

}
