<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="wclassth=device-wclassth, initial-scale=1.0">
    <title>Lotus Healthcare</title>
    <link rel = 'stylesheet' href = 'style.css'>
</head>
<body>

    <!--Header-->
    <header>
        <h4 class = 'headerContent' >Lotus Healthcare</h4>
        <a href="Website to be determined">
            <img src="https://cdn.pixabay.com/photo/2020/01/18/21/57/lotus-4776450_1280.png" alt="lotus" class = 'headerLogo'>
        </a>
    </header>

    <!--Hamburger Directory-->
    <a onclick= "javascript: hamburgerClick()"> <img class = 'hamburgerOptions' src="https://img.icons8.com/material-rounded/24/ffffff/menu--v1.png"/> </a>

    <div id = 'hamLinks'>
        <a onclick = 'javascript: scrollToHome()'>Home <br></a>
        <a onclick = 'javascript: scrollToContact()'>Treatments <br> </a>
        <a onclick = 'javascript: scrollToContact()'>Contact <br> </a>
        <a onclick = 'javascript: scrollToContact()'>About <br> </a>
    </div>


    <!--Header Directory-->
    <nav class = 'directory'>
        <ul class = 'directoryList'>
            <li> <a href = "WebsiteLayout.php"> Home </a></li>
            <li> <a href= "AppointmentsQuery.php"> Appointments </a> </li>
            <li> <a href= "PrescriptionsQuery.php"> Prescriptions </a> </li>
            <li> <a href= "TestsQuery.php"> Tests </a> </li>
            <li> <a href= "PatientDetailsQuery.php"> Patient Details  </a> </li>
            <li> <a href= "DoctorsNearbyQuery.php"> Find Doctors </a> </li>
        </ul>
    </nav>


    <div class = background1></div>
    <div class = 'info1' style="height:75px; background-color:rgb(31, 24, 24); text-align: center; color: white; font-size:36px ">
        Your results will be found below.
    </div>


    <div class = 'background2'></div>

    <!--Footer-->
    <div class = 'footer'>
        <div class = 'contactUs'>Contact Us</div>
        <div class = 'contactInfo'>
            <div class = 'footerLogo'>
                <a href="Website to be determined">
                    <img src="https://cdn.pixabay.com/photo/2020/01/18/21/57/lotus-4776450_1280.png" alt="lotus" class = 'footerLogoImg' >
                </a>
            </div>
            <div class = 'address'>
                <img src="https://img.icons8.com/material-rounded/24/000000/marker.png"/>
                <h7> 303 notfound St <br> erehwon, CA 90007</h7>
            </div>
            <div class = 'phoneNumber'>
                <img src="https://img.icons8.com/material-outlined/24/000000/phone.png"/>
                (555) 555-5555
            </div>
            <div class = 'email'>
                <img src="https://img.icons8.com/material-outlined/24/000000/email.png"/>
                lotusHealthCare@gmail.com
            </div>
        </div>
    <div>

</body>
</html>
