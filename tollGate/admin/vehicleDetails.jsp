<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
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
            <a href="${pageContext.request.contextPath}/admin/vehicleDetailsAdd.jsp" class="login-btn">
                Add
            </a><br><br><br><br>
            <table>
                <tr>
                    <th>Registration Number</th>
                    <th>Vehicle Type</th>
                    <th>Delete</th>
                </tr>
                <%
                    while(rs.next())
                    {
                %>
                <tr>
                    <td class="row_data"><%= rs.getString(1) %></td>
                    <td class="row_data"><%= rs.getString(2) %></td>
                    <td> <button class="small-btn1" id="delete">Delete</button> </td>

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
            $.get( "${pageContext.request.contextPath}/admin/vehicleDetails/Delete?regNo="+arr[0], function( data ) {

            });
            $(this).closest('tr').remove();
            // var tbl_row = $(this).closest('tr').remove();


        });


    </script>
</body>

</html>
<% } %>