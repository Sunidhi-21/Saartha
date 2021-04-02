<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
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
                    <th>Edit</th>
                </tr>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td class="row_data"><%= rs.getInt(1)%></td>
                    <td class="row_data"><%= rs.getString(2)%></td>
                    <td class="row_data"><%= rs.getInt(3)%></td>
                    <td> <a href="${pageContext.request.contextPath}/admin/vehicleFareEdit.jsp?operation=edit&fareId=<%= rs.getString(1)%>&vehicleType=<%= rs.getInt(4)%>&minFare=<%= rs.getString(3).toUpperCase()%>" class="login-btn">
                        Edit
                    </a> </td>
                </tr>
                <% } %>

            </table>

        </div>

    </div>
<script src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script>
    $(document).on('click', '#edit', function (event) {
        event.preventDefault();

        var tbl_row = $(this).closest('tr');

        var row_id = tbl_row.attr('row_id');
        tbl_row.find('.row_data').each(function (index, val) {
            console.log($(this).html());
        });

    });
    $(document).on('click', '#delete', function (event) {
        event.preventDefault();
        var tbl_row = $(this).closest('tr');

        var arr=[];
        tbl_row.find('.row_data').each(function (index, val) {
            arr.push($(this).html());
            console.log($(this).html());
        });
        $.get( "${pageContext.request.contextPath}/admin/tollbooth/Delete?uid="+arr[0], function( data ) {

        });
        $(this).closest('tr').remove();



    });


</script>
</body>

</html>
<% } %>