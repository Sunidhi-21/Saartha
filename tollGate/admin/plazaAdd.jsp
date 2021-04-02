<%@ page import="com.toll.gate.model.AdminModel" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
%>

        <h2 class="heading">Add Plaza</h2>

        <div class="layer">

        </div>
        <div class="table">
            <form action="${pageContext.request.contextPath}/admin/plaza/add" method="POST">
                <div class="input-div">


                    <label for="fastagId" style="color: white;" class="plazaEdit"> Plaza ID : </label>
                    <input type="text" name="plazaId" class="input fastag" id="plazaId"  /><br><br>
                    <input type="hidden" name="operation" value="add"/>
                    <label for="type" style="color: white;"> Plaza Name : </label>
                    <input type="text" name="plazaName" class="input fastag" id="plazaName"  />
                    <br><br>
                    <label for="type" style="color: white;">Location : </label>
                    <input type="text" name="location" class="input fastag" id="fastagId" />


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