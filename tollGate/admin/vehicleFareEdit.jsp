<%@ page import="com.toll.gate.model.AdminModel" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
%>

        <h2 class="heading">Vehicle Fare Add</h2>

        <div class="layer">

        </div>
        <div class="table">
            <form action="${pageContext.request.contextPath}/admin/vehicleFare/edit" method="POST">
                <div class="input-div">


                    <input type="hidden" name="fareId" value="<%= request.getParameter("fareId")%>"  /><br><br>
                    <label for="type" style="color: white;"> Vehicle Type : </label>
                    <select disabled class="input" id="type">

                        <option value="<%= request.getParameter("vehicleType")%>"><%= request.getParameter("vehicleType")%></option>

                    </select>
                    <input type="hidden" name="vehicleType"  value="<%= request.getParameter("vehicleType")%>"  />
                    <br><br>
                    <label for="type" style="color: white;">Minimum Fare : </label>
                    <input type="number" name="minFare" class="input fastag" value="<%= request.getParameter("minFare")%>" id="fastagId" />


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