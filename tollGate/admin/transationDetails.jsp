<%@ page import="com.toll.gate.model.AdminModel" %>
<%@ page import="com.toll.gate.managers.TransactionManager" %>
<jsp:include page="../includes/adminHeader.jsp" />
<% AdminModel user = (AdminModel) session.getAttribute("admin");

    if(user.getAdminId()==0) {
        request.getRequestDispatcher("error.jsp").forward(request, response);
    }
    else
    {
        TransactionManager tm = new TransactionManager();
        int sun = tm.TransactionGraph("Sun");
        int mon = tm.TransactionGraph("Mon");
        int tue = tm.TransactionGraph("Tue");
        int wed = tm.TransactionGraph("Wed");
        int thu = tm.TransactionGraph("Thu");
        int fri = tm.TransactionGraph("Fri");
        int sat = tm.TransactionGraph("Sat");
%>

        <h2 class="heading">Transaction Details</h2>

        <div class="layer">

        </div>
        <div class="table">
            <div id="chartContainer" class="chart" style="height: 370px; width: 100%;"></div>


        </div>

    </div>

    <script src="../css/canvasjs.min.js"> </script>
    <script type="text/javascript">
        window.onload = function () {

            var chart = new CanvasJS.Chart("chartContainer", {
                theme: "light1",
                animationEnabled: false,
                title: {
                    text: ""
                },
                data: [
                    {
                        type: "column",
                        dataPoints: [
                            { label: "Sunday", y: <%= sun%> },
                            { label: "Monday", y: <%= mon%> },
                            { label: "Tuesday", y:<%= tue%> },
                            { label: "Wednesday", y: <%= wed%>},
                            { label: "Thursday", y: <%= thu%> },
                            { label: "Friday", y: <%= fri%> },
                            { label: "Saturday", y: <%= sat%> }
                        ]
                    }
                ]
            });
            chart.render();

        }
    </script>
</body>

</html>
<% } %>