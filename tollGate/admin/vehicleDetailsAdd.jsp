<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="com.toll.gate.managers.VehicleManager" %>
<%@ page import="com.toll.gate.managers.VehicleOperation" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        VehicleOperation vo = new VehicleOperation();
        ResultSet rs= vo.showVehicleType();
%>

        <h2 class="heading">Vehicle Add</h2>

        <div class="layer">

        </div>
        <div class="table">
            <form action="${pageContext.request.contextPath}/admin/vehicleDetails/add" method="POST">
                <div class="input-div">


                    <label for="fastagId" style="color: white;" class="plazaEdit">
                        Registration Number : </label>
                    <input type="text" name="regNo" class="input fastag" id="fastagId" value="" /><br><br><br><br>
                    <label for="type" style="color: white;"> Vehicle Type : </label>
                    <select name="vehicleType" class="input" id="type">
                        <%
                        while(rs.next())
                            {

                        %>
                        <option value="<%=rs.getInt(1)%>"><%= rs.getString(2)%></option>
                        <% } %>>
                    </select>
                    <br><br>




                    <br><br>
                    <input type="submit" value="Done" name="done" class="login-btn"><br><br>
                </div>
            </form>
        </div>

    </div>
    <script src="../js/jquery.js"></script>
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

            var tbl_row = $(this).closest('tr').remove();


        });


    </script>
</body>

</html>
<% } %>