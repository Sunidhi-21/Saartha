<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.toll.gate.managers.PlazaManager" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        ResultSet prs = PlazaManager.fetchPlaza();
%>
<h2 class="heading">Available Plaza</h2>

        <div class="layer">

        </div>
        <div class="table">
            <table>
                <tr>
                    <th>Plaza ID</th>
                    <th>Plaza Name</th>
                    <th>Location</th>
                </tr>
                <% while(prs.next())
                {
                %>
                <tr>
                    <td><%= prs.getString(1).toUpperCase()%></td>
                    <td><%= prs.getString(2).toUpperCase()%></td>
                    <td><%= prs.getString(3).toUpperCase()%></td>
                </tr>
                <% } %>

            </table>

        </div>

    </div>
</body>



</html>
<% } %>