<%@ page import="com.toll.gate.model.UserModel" %><%--
  Created by IntelliJ IDEA.
  User: mohith
  Date: 27/03/21
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>

<!DOCTYPE html>
<html lang="en" dir="ltr">
    <%
        UserModel user = (UserModel) session.getAttribute("user");

        if(user.getuId()==0) {
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }

%>

<head>
    <meta charset="utf-8">
    <title>Plaza</title>
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/gradient.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home/styling.css">

</head>

<body>

<div class="gradient">
    <div>


        <div class="nav">

        </div>

        <nav>
            <ul class="ul">
                <li><a class="nav-item" href="" id="name">Hello <%= user.getUsername()%> ,</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/screens/plaza.jsp">plaza</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/screens/tollbooth">tollbooth</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/screens/vehicleDetails">vehicle Details</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/screens/vehicleFare">vehicle fare</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/screens/transationDetails">transaction</a></li>

                <li><a class="nav-item" href="${pageContext.request.contextPath}/screens/makeTransation.jsp">Make transaction</a></li>
                <li id="logoutLi"><button  id="logoutBtn" ><a style="color: black" href="${pageContext.request.contextPath}/logout">Logout</a> </button> </li>
            </ul>

        </nav>
    </div>
