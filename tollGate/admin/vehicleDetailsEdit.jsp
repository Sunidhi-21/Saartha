<%@ page import="com.toll.gate.model.AdminModel" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
%>

        <h2 class="heading">Vehicle Edit</h2>

        <div class="layer">

        </div>
        <div class="table">
            <form action="" method="POST">
                <div class="input-div">


                    <label for="fastagId" style="color: white;" class="plazaEdit">
                        Registration Number : </label>
                    <input type="text" name="regNo" class="input fastag" id="fastagId" value=""
                        disabled /><br><br><br><br>
                    <label for="type" style="color: white;"> Vehicle Type : </label>
                    <select name="vehicleType" class="input" id="type">

                        <option value="1">Two Wheeler</option>
                        <option value="2">Four Wheeler</option>
                        <option value="3">Bus</option>
                        <option value="4">LMV</option>
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