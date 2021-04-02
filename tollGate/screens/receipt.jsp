<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
%>
        <h2 class="heading">Receipt</h2>

        <div class="layer">

        </div>
        <div class="table">
            <table>
                <tr>
                    <th colspan="4">Nationl Highway Authority of India : </th>
                </tr>
                <tr>
                    <th>Plaza ID</th>
                    <th>Booth ID</th>
                    <th>Fastag ID</th>
                    <th>Amount</th>
                </tr>

                <tr>
                    <td><%= request.getParameter("plazaId") %></td>
                    <td><%=  request.getParameter("boothId")  %></td>
                    <td><%=  request.getParameter("fastagId") %></td>
                    <td><%=  request.getParameter("amt")  %></td>

                </tr>


            </table>

        </div>

    </div>
</body>

</html>
<% } %>