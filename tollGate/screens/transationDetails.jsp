<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        ResultSet rs = (ResultSet) request.getAttribute("transation");
%>
        <h2 class="heading">Transaction Details</h2>

        <div class="layer">

        </div>
        <div class="table">
            <table>
                <tr>
                    <th>Transaction ID</th>
                    <th>Fastag ID</th>
                    <th>Plaza ID</th>
                    <th>Booth ID</th>
                    <th>Amount Paid</th>
                    <th colspan="2">Date</th>
                </tr>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td><%= rs.getInt(1) %></td>
                    <td><%= rs.getString(5).toUpperCase() %></td>
                    <td><%= rs.getString(2).toUpperCase() %></td>
                    <td><%= rs.getString(3).toUpperCase() %></td>
                    <td><%= rs.getInt(6) %></td>
                    <td colspan="2"><%= rs.getString(4).toUpperCase() %></td>
                </tr>
                <% } %>

            </table>

        </div>

    </div>
</body>

</html>
<% } %>