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
            <li> <a href= "PatientDetailsQuery.php"> Patient Details </a> </li>
            <li> <a href= "DoctorsNearbyQuery.php"> Find Doctors </a> </li>
        </ul>
    </nav>

    <!--Login Section-->
        <div class = 'login'>
            <div class = 'loginInput'>
               <div class = optionTitle>Login</div>
               <div class = optionBody>
                <form method="post">
                SSN: <input type="text" name="ssn"><br>
                <input type="submit">
                </form>
                    <?php

                    ?>
               </div>
           </div>
    </div>

    <div class = background1></div>
    <div class = 'info1' style="height:75px; background-color:rgb(31, 24, 24); text-align: center; color: white; font-size:36px ">
        Your results will be found below.
    </div>

<!--Query Result-->
    <div class = 'treatmentOptions'>
        <div class = 'option1'>
           <div class = optionTitle> Doctors Nearby</div>
               <div class = optionBody>
                    <center>
                    <?php
                        include "ConnectionData.php";
                        $ssn = $_POST["ssn"];

                        $sql = "SELECT DOCTOR.First_name, DOCTOR.Specialty, DOCTOR.Phone_num
                                FROM DOCTOR, PATIENT
                                WHERE PATIENT.SSN = '".$ssn."' AND PATIENT.City = DOCTOR.City;";
                        $result = mysqli_query($conn,$sql);
                        print "<pre>";
                        print "<table border=1>";
                        print "<tr><td>First Name </td><td> Specialty </td> <td> Phone Number </td>";
                        while($row = mysqli_fetch_array($result, MYSQLI_BOTH))
                        {
                            print "\n";
                            print "<tr><td>$row[First_name] </td><td> $row[Specialty]  </td> <td> $row[Phone_num]  </td></tr>    ";
                        }
                        print "</table>";
                        print "</pre>";
                        mysqli_free_result($result);
                        mysqli_close($conn);
                    ?>
                    </center>
               </div>
       </div>
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

