package interfaces;

import javax.servlet.http.HttpServletRequest;

public interface IPageName {
    default void setPageName(HttpServletRequest request, String name) {
        request.setAttribute("pageTitle", name.replace("Controller", ""));
    }
}
