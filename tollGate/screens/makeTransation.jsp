<%@ page import="com.toll.gate.model.UserModel" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.toll.gate.managers.VehicleOperation" %>
<jsp:include page="../includes/header.jsp" />
<% UserModel user = (UserModel) session.getAttribute("user");

    if(user.getuId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
else
    {
        VehicleOperation vo = new VehicleOperation();
        ResultSet vrs= vo.showVehicleType();
%>

        <h2 class="heading">Make Transactions</h2>

        <div class="layer">

        </div>
        <div class="table" id="makeTransaction">

            <form action="transationDetails" method="post">
                <div class="input-div">


                    <label for="fastagId" style="color: white;" class="fastag"> Fastag ID : </label>
                    <input type="text" name="fastagId" class="input fastag" id="fastagId" /><br><br>
                    <label for="fastagId" style="color: white;" class="fastag"> Way : </label>
                    <select name="return" class="input" id="1r2">
                        <option value="1">Single</option>
                        <option value="2">Return</option>
                    </select>


                    <br><br>
                    <input type="submit" value="Done" name="done" class="login-btn"><br><br>
                </div>
            </form>
<%--            <h1 style="position: absolute; color: white; font-size: 30px; font-weight: bold" id="money">30</h1>--%>
<%--            <h1 style="position: absolute; top: 160px" value="Check Amount"class="small-btn2" id="check">Check</h1>--%>

        </div>



</body>


</html>
<% } %>