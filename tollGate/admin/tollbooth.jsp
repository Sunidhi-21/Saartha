<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        ResultSet trs= (ResultSet) request.getAttribute("AdminTollBooth");
%>

        <h2 class="heading">Available TollBooth</h2>

        <div class="layer">

        </div>
        <div class="table">
            <a href="${pageContext.request.contextPath}/admin/tollboothAdd.jsp" class="login-btn">
                Add
            </a><br><br><br><br>
            <table>
                <tr>
                    <th>User ID</th>
                    <th>Booth ID</th>
                    <th>Plaza Id</th>
                    <th>User</th>
                    <th>Location</th>
                    <th>Delete</th>
                    <th>Edit</th>
                    <th></th>
                </tr>
                <% while(trs.next())
                {
                %>
                <tr>
                    <td class="row_data"><%= trs.getString(5).toUpperCase()%></td>
                    <td class="row_data"><%= trs.getString(1).toUpperCase()%></td>
                    <td class="row_data"><%= trs.getString(2).toUpperCase()%></td>
                    <td class="row_data"><%= trs.getString(4).toUpperCase()%></td>
                    <td class="row_data"><%= trs.getString(3).toUpperCase()%></td>
                    <td class="row_data"> <button class="small-btn1" id="delete">Delete</button> </td>

                    <td> <a href="${pageContext.request.contextPath}/admin/tollboothEdit.jsp?operation=edit&boothId=<%= trs.getString(1)%>&user=<%= trs.getString(4)%>" class="login-btn">
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