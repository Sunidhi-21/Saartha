<%@ page import="com.toll.gate.model.AdminModel" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
%>

        <h2 class="heading">Edit TollBooth</h2>

        <div class="layer">

        </div>
        <div class="table">
            <form action="${pageContext.request.contextPath}/admin/tollbooth/edit" method="POST">
                <div class="input-div">


                    <label for="fastagId" style="color: white;" class="plazaEdit"> Booth ID : </label>
                    <select name="boothId" class="input" id="type" disabled>

                        <option value="<%= request.getParameter("boothId") %>"><%= request.getParameter("boothId") %></option>

                    </select><br><br>
                    <input type="hidden" name="boothId" value="<%= request.getParameter("boothId") %>">


                    <br><br>
                    <label for="type" style="color: white;">Username : </label>
                    <input type="text"class="input fastag" id="fastagId" value="<%= request.getParameter("user") %>" disabled  />
                    <input type="hidden" name="username"value="<%= request.getParameter("user") %>"  />
                    <br><br>
                    <label for="type" style="color: white;">password : </label>
                    <input type="text" name="password" class="input fastag" id="fastagId" boothId />
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