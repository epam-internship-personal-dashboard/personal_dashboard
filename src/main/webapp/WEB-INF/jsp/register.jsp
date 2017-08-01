<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create New User | Personal Dashboard</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css" />
    </head>
    <body>
        <header>
            <h1>PERSONAL DASHBOARD</h1>
        </header>
        <main>
            <div class="login-container">
              <f:form action="${pageContext.request.contextPath}/register" method="post" modelAttribute="user">  
                <div>
                    <label for="name">Full Name:</label>
                    <f:input type="text" name="name" path="name" id ="name"/>
                </div>
                <div>
                    <label for="username">Username:</label>
                    <f:input type="text" name="username" path="username" id ="username"/>
                </div>
                <div>
                    <label for="password">Password:</label>
                    <f:input type="password" name="password" path="password" id ="password"/>
                </div>
                <div>
                    <label for="birthday">Birthday:</label>
                    <f:input type="date" name="birthday" path="birthday" id ="birthday"/>
                </div>
                <div>
                    <label for="email">Email: </label>
                    <f:input type="email" name="email" path="email" id="email"/>
                </div>
                <div>
                    <label for="gender">Gender:</label>
                    <f:input type="text" name="gender" path="gender" id ="gender"/>
                </div>
                <div>
                    <label for="role">Role:</label>
                    <f:input type="text" name="role" path="role" id ="role"/>
                </div>
                
            <input type="submit" value="Create Accont"/>
            </f:form>
            <c:if test="${not empty message}">
                <p id="msg">${message}</p>
            </c:if>
            </div>
        </main>
    </body>
</html>