<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/gradient.css">
    <link rel="stylesheet" href="./css/login/styles.css">
    <!-- <link rel="stylesheet" href="./css/bootstrap-grid.min.css">
    <link rel="stylesheet" href="./css/bootstrap-reboot.min.css">
    <link rel="stylesheet" href="./css/bootstrap-utilities.min.css"> -->
    <title>Toll Gate Management System</title>
    <script src="./js/jquery.js "></script>
</head>
<h1>Sunidhi</h1>
<body>

    <div class="gradient">
        <div class="transLayer1"></div>
        <div class="transLayer2"></div>
        <div class="heading-div">
            <h3 class="heading">Toll Management System</h3>
        </div>
        <!-- userLogin starts -->
        <div class="login-container" id="userLogin">
            <div class="login-box"></div>
            <div class="login-box-content">
                <form action="login" method="post">
                    <div class="input-div">
                        <center>
                            <label for="username" class="login-label">User Login</label><br><br>
                        </center>
                        <input type="text" name="username" class="input" placeholder="Enter Username" /><br><br>
                        <input type="password" name="password" class="input" placeholder="Enter Password" /><br><br>
                        <input type="submit" value="Login" name="login" class="login-btn"><br><br>
                        <p id="userLoginToggle" style="color: white; text-align: end; font-weight: 900;">Admin Login</p>
                    </div>
                </form>

            </div>
        </div>
        <!-- userlogin Ends -->
        <!-- Admin starts -->
        <div class="login-container" id="adminLogin">
            <div class="login-box"></div>
            <div class="login-box-content">
                <form action="admin" method="post">
                    <div class="input-div">
                        <center>
                            <label for="username" class="login-label">Admin Login</label><br><br>
                        </center>
                        <input type="text" name="username" class="input" placeholder="Enter Admin Username" /><br><br>
                        <input type="password" name="password" class="input"
                            placeholder="Enter Admin Password" /><br><br>
                        <input type="submit" value="Admin Login" name="login" class="login-btn"><br><br>
                        <p id="adminLoginToggle" style="color: white; text-align: end; font-weight: 900;">User Login</p>
                    </div>
                </form>
            </div>
        </div>
        <!-- Admin Ends -->


        <!-- pngs starts -->
        <div class="png1">
            <img class="img-png1" src="./res/pngs/01.png" alt="">
        </div>
        <div class="png2">
            <img class="img-png2" src="./res/pngs/02.png" alt="">
        </div>
        <!-- pgns Ends -->

        <!-- content start -->
        <div>
            <div class="content-div"></div>


            <div class="content-div-list">
                <ul class="content-ul">
                    <li class="content-text">The Toll-Gate is a Regency novel by Georgette Heyer, which takes place in
                        1817.
                    </li><br>
                    <li class="content-text">* Unlike many of Heyer's historical novels which concentrate on a plucky
                        heroine, this one follows the adventures of a male main character, an ex-captain in the British
                        Army
                        who has returned from the Peninsular War and finds life as a civilian rather dull.
                    </li><br>
                    <li class="content-text">* The setting for this detective/romance story is in and around a Toll-Gate
                        in
                        the Peak District, vastly different from the elegant backgrounds of London, Bath, Brighton, or
                        some
                        stately home, which characterize most of Heyer's Regency novels.
                    </li><br>
                    <li class="content-text">* After acting as an aide-de-camp at the Battle of Waterloo, Jack Staple is
                        finding civilian life tedious. Following a formal (and somewhat boring) dinner party in honour
                        of
                        his cousin's engagement, Jack sets out by himself on horseback to visit a more congenial friend
                        some
                        60 miles away. After getting lost in the dark and rain he reaches a toll-gate where a frightened
                        10-year-old lad is acting as toll collector in the absence of his father. A combination of
                        curiosity, compassion, tiredness, and dampness lead him to stay at the toll house overnight with
                        a
                        view to sorting out the situation in the morning.
                    </li><br>

                    <li class="content-text">* Over the next few days Jack's circle of acquaintances rapidly expands to
                        include a highwayman, a Bow Street runner, and the local gentry plus their devoted retainers.
                        Other
                        complications include a dead body, stolen treasure, and some masked villains. In the process of
                        preventing a scandal, Jack also manages to identify the murderer, deal with the villains,
                        retrieve
                        the treasure, satisfy the law, provide for his friends, and resolve his own romance.
                    </li>
                </ul>
            </div>
        </div>
        <!-- content ends -->
    </div>


    <!-- <script src="./js/bootstrap.bundle.min.js"></script>
    <script src="./js/bootstrap.esm.min.js"></script>
    <script src="./js/bootstrap.min.js"></script> -->
    <script>
        $(document).ready(function () {

            $('#adminLogin').hide();

            $('#userLoginToggle').click(function () {
                $('#userLogin').toggle();
                $('#adminLogin').toggle();
            })
            $('#adminLoginToggle').click(function () {
                $('#userLogin').toggle();
                $('#adminLogin').toggle();
            })
        });
    </script>

</body>

</html>