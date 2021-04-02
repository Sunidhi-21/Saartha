<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        ResultSet trs= (ResultSet) request.getAttribute("tollBooth");
%>
        <h2 class="heading">Available TollBooth</h2>

        <div class="layer">

        </div>
        <div class="table">
            <table>
                <tr>
                    <th>Booth ID</th>
                    <th>Plaza Name</th>
                    <th>Location</th>
                </tr
                <% while(trs.next())
                {
                %>
                <tr>
                    <td><%= trs.getString(1).toUpperCase()%></td>
                    <td><%= trs.getString(2).toUpperCase()%></td>
                    <td><%= trs.getString(3).toUpperCase()%></td>
                </tr>
            <% } %>
            </table>

        </div>

    </div>
</body>

</html>
<% } %>