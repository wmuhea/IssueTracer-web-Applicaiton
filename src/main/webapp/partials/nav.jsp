<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light site-navbar-target" id="ftco-navbar">
    <div class="container">
        <a class="navbar-brand" href="/">Issue<span>Tracer</span></a>
        <button class="navbar-toggler js-fh5co-nav-toggle fh5co-nav-toggle" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav nav ml-auto">
<%--                <li class="nav-item"><a href="/" class="nav-link"><span>Home</span></a></li>--%>
<%--                <li class="nav-item"><a href="#services-section" class="nav-link"><span>Services</span></a></li>--%>
<%--                <li class="nav-item"><a href="#projects-section" class="nav-link"><span>Projects</span></a></li>--%>
<%--                <li class="nav-item"><a href="/#about-section" class="nav-link"><span>About</span></a></li>--%>
<%--                <li class="nav-item"><a href="#testimony-section" class="nav-link"><span>Testimony</span></a></li>--%>
<%--                <li class="nav-item"><a href="#blog-section" class="nav-link"><span>Blog</span></a></li>--%>
                <c:if test="${user != null}">
                    <li class="nav-item"><a href="/app" class="nav-link"><span>Dashboard</span></a></li>
                    <li class="nav-item"><a href="/app/profile" class="nav-link"><span>Profile</span></a></li>
                </c:if>

                <li class="nav-item"><a href="/createIssue" class="nav-link"><span>Create Issue</span></a></li>


                <c:if test="${user != null}">
                    <li class="nav-item"><a href="/logout" class="nav-link"><span>Logout</span></a></li>
                </c:if>

                <c:if test="${user == null}">
                    <li class="nav-item"><a href="/login" class="nav-link"><span>Login</span></a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>