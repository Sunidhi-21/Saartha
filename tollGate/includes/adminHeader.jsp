<%--
  Created by IntelliJ IDEA.
  User: mohith
  Date: 28/03/21
  Time: 12:50 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en" dir="ltr">

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
                <li><a class="nav-item" href="" id="name">Hello Mohith,</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/admin/plaza.jsp">plaza</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/admin/tollbooth">tollbooth</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/admin/vehicleDetails">vehicle Details</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/admin/vehicleFare">vehicle fare</a></li>
                <li><a class="nav-item" href="${pageContext.request.contextPath}/admin/transationDetails">transaction</a></li>
                <li id="logoutLi"><button  id="logoutBtn" ><a style="color: black" href="${pageContext.request.contextPath}/logout">Logout</a> </button> </li>
            </ul>

        </nav>
    </div>