<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);

    }
    else
    {
        ResultSet rs = (ResultSet) request.getAttribute("showVehicle");
%>
        <h2 class="heading">Vehicle Details</h2>

        <div class="layer">

        </div>
        <div class="table">
            <table>

                <tr>
                    <th>Registration Number</th>
                    <th>Vehicle Type</th>
                </tr>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td><%= rs.getString(1) %></td>
                    <td><%= rs.getString(2) %></td>
                </tr>
                <% } %>
            </table>

        </div>

    </div>
</body>

</html>
<% } %>