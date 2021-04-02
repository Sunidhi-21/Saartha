<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.toll.gate.managers.PlazaManager" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
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
            <a href="${pageContext.request.contextPath}/admin/plazaAdd.jsp" class="login-btn">
                Add
            </a><br><br><br><br>
            <table>
                <tr>
                    <th>Plaza ID</th>
                    <th>Plaza Name</th>
                    <th>Location</th>
                    <th>Delete</th>
                    <th>Edit</th>
                </tr>
                <% while(prs.next())
                {
                %>
                <tr>
                    <td class="row_data"><%= prs.getString(1)%></td>
                    <td class="row_data"><%= prs.getString(2).toUpperCase()%></td>
                    <td class="row_data"><%= prs.getString(3).toUpperCase()%></td>
                    <td> <button class="small-btn1" id="delete">Delete</button> </td>
                    <td> <a href="${pageContext.request.contextPath}/admin/plazaEdit.jsp?operation=edit&plazaId=<%= prs.getString(1)%>&plazaName=<%= prs.getString(2).toUpperCase()%>&location=<%= prs.getString(3).toUpperCase()%>" class="login-btn">
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
            $.get( "${pageContext.request.contextPath}/admin/plaza/Delete?plazaId="+arr[0], function( data ) {

            });
            $(this).closest('tr').remove();
            // var tbl_row = $(this).closest('tr').remove();


        });


    </script>
</body>

</html>

<% } %>