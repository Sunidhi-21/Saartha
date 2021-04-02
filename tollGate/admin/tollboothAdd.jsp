<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="com.toll.gate.managers.PlazaManager" %>
<%@ page import="java.sql.ResultSet" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
%>

        <h2 class="heading">Add TollBooth</h2>

        <div class="layer">

        </div>
        <div class="table">
            <form action="${pageContext.request.contextPath}/admin/tollbooth/add" method="POST">
                <div class="input-div">


                    <label for="fastagId" style="color: white;" class="plazaEdit"> Booth ID : </label>
                    <select name="boothId" class="input" id="type">

                        <option value="a">a</option>
                        <option value="b">b</option>
                        <option value="c">c</option>
                        <option value="d">d</option>
                        <option value="e">e</option>
                        <option value="f">f</option>
                        <option value="g">g</option>
                        <option value="h">h</option>
                        <option value="i">i</option>
                        <option value="j">j</option>
                        <option value="k">k</option>
                    </select><br><br>
                    <label for="type" style="color: white;"> Plaza ID : </label>
                    <select name="plazaId" class="input" id="type">
                        <%
                            ResultSet prs= PlazaManager.fetchPlaza();
                            while(prs.next())
                            {
                        %>

                        <option value="<%= prs.getString(1)%>"><%= prs.getString(1)%></option>

                        <% } %>
                    </select>

                    <br><br>
                    <label for="type" style="color: white;">Username : </label>
                    <input type="text" name="username" class="input fastag" id="fastagId" />
                    <br><br>
                    <label for="type" style="color: white;">password : </label>
                    <input type="text" name="password" class="input fastag" id="fastagId" />
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