<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        ResultSet rs = (ResultSet) request.getAttribute("showVehicleFare");
%>
        <h2 class="heading">Vehicle Fare</h2>

        <div class="layer">

        </div>
        <div class="table">
            <table>
                <tr>
                    <th>Fare ID</th>
                    <th>vehicle Type</th>
                    <th>Minimum Fare</th>
                </tr>

                    <%
                    while(rs.next())
                    {
                    %>
                        <tr>
                            <td><%= rs.getInt(1)%></td>
                            <td><%= rs.getString(2)%></td>
                            <td><%= rs.getInt(3)%></td>
                        </tr>
                    <% } %>


            </table>

        </div>

    </div>
</body>

</html>

<% } %>