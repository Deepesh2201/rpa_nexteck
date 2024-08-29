@extends('layouts.main')
@section('main-section')
    <style>
    body {
        /* background-color: #f4f4f9;
            color: #333;
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0; */
    }

    .container {

        background-color: #f4f4f9;
        color: #333;
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        
        margin: 0;
    }

    #form-container {
        background-color: #fff;
        padding: 40px 60px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        border-radius: 10px;
        max-width: 600px;
        width: 100%;
        position: relative;
    }

    h1 {
        color: #333;
        text-align: center;
        margin-bottom: 30px;
        font-size: 24px;
    }

    .form-group {
        margin-bottom: 20px;
        position: relative;
    }

    label {
        display: block;
        margin-bottom: 10px;
        font-weight: bold;
        font-size: 14px;
    }





    .suggestions {
        margin-top: 5px;
        color: #999;
        font-size: 14px;
    }

    button {
        width: 100%;
        padding: 15px;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        color: #fff;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    #button1 {
        width: 80%;
        height: 80%;
        padding: 15px;
        background-color: #007bff;
        border: none;
        border-radius: 5px;
        color: #fff;
        font-size: 18px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    button:hover {
        background-color: #0056b3;
    }

    #suggestions {
        position: absolute;
        z-index: 10;
        background-color: #fff;
        border: 1px solid white;
        max-height: 200px;
        overflow-y: auto;
        width: calc(100% - 20px);
        border-radius: 5px;
    }

    #suggestions2 {
        position: absolute;
        z-index: 9;
        background-color: #fff;
        border: 1px solid white;
        max-height: 200px;
        overflow-y: auto;
        width: calc(100% - 20px);
        border-radius: 5px;
    }

    #suggestions3 {
        position: absolute;
        z-index: 9;
        background-color: #fff;
        border: 1px solid white;
        max-height: 200px;
        overflow-y: auto;
        width: calc(100% - 20px);
        border-radius: 5px;
    }

    .suggestion-item {
        padding: 10px;
        cursor: pointer;
        font-size: 14px;
    }

    .suggestion-item2 {
        padding: 10px;
        cursor: pointer;
        font-size: 14px;
    }

    .suggestion-item3 {
        padding: 10px;
        cursor: pointer;
        font-size: 14px;
    }

    .suggestion-item:hover {
        background-color: #f1f1f1;
    }

    /* .pform {
            display: flex;
            flex-direction: column;
        }

        .pform2 {
            display: flex;
            flex-direction: row;
        } */

    .his {
        display: flex;
        justify-content: center;
        align-items: center;

    }

    table {
        border-collapse: collapse;
        width: 100%;
    }

    table,
    td,
    th {
        border: 1px solid black;
    }

    th,
    td {
        height: 70px;
    }

    td {
        text-align: center;
    }

    .ref {

        display: flex;
        justify-content: center;

    }

    .ref2 {
        width: 20%;
        display: flex;
        justify-content: center;

    }
    </style>

                <!-- Content wrapper -->
                <div class="content-wrapper">
                    <!-- Content -->
                    <div class="container-xxl flex-grow-1 container-p-y">
                        <div class="container">
                            <div id="form-container">

                                <h1>Search Ports</h1>
                                <form onsubmit="return validateMyPort()" method="POST" action="data3.php">

                                    <div class="row">
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="start_pt">Source Port</label>
                                                <input type="text" class="form-control" name="start_pt"
                                                    placeholder="search port" onkeyup="validatePort()" id="start_pt"
                                                    autocomplete="off">
                                                <div id="suggestions" class="suggestions"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="start_ptt">Destination Port</label>
                                                <input type="text" class="form-control" name="end_pt"
                                                    placeholder="search port" onkeyup="validatePort2()" id="end_pt"
                                                    autocomplete="off">
                                                <div id="suggestions2" class="suggestions2"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="date">Date</label>
                                                <input class="form-control" type="date" id="date" name="datee">
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="start_ptt">Container</label>
                                                <input type="text" class="form-control" name="con_pt"
                                                    placeholder="search port" onkeyup="validatePort3()" id="con_pt"
                                                    autocomplete="off">
                                                <div id="suggestions3" class="suggestions3"></div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 col-md-12 col-sm-12">
                                            <div class="form-group">
                                                <label for="weight">Commodity</label>
                                                <input type="text" class="form-control" id="commodity" name="comm_pt"
                                                    placeholder="search commodity" value="FAK - Freight All Kind"
                                                    readonly>

                                            </div>
                                        </div>
                                    </div>




                                    <button type="submit" name="submit" value="submit">Search</button>
                                </form>
                            </div>
                        </div>

                    </div>
                    <!-- / Content -->


                    <?php

// Database connection (replace with your credentials)
$servername = "92.205.100.199";
$username = "rpa_user";
$password = "rpa_user@123";
$dbname = "rpa_db";
$port = 3306;

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Query to fetch transaction history
$sql = "SELECT * FROM quotation_input ORDER BY date DESC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {


    ?>

<div class="his">
    <h2>Transaction History</h2>
</div>
<table>
    <thead>
        <tr>
            <th>Job Id</th>
            <th>Date</th>
            <th>User Id</th>
            <th>Source</th>
            <th>Destination</th>
            <th>Container</th>
            <th>Commodity</th>
            <th>Check It</th>
        </tr>
    </thead>
    <tbody>
        <?php while ($row = $result->fetch_assoc()) {
                ?>
        <tr>
            <td><?php echo $row["job_id"]; ?></td>
            <td><?php echo $row["date"]; ?></td>
            <td><?php echo $row["user_id"]; ?></td>
            <td><?php echo $row["source"]; ?></td>
            <td><?php echo $row["destination"]; ?></td>
            <td><?php echo $row["container"]; ?></td>
            <td><?php echo $row["commodity"]; ?></td>
            <td><button id="button1" onclick='viewDetails( <?php echo $row["job_id"] ?> )'>View Details</button>
            </td>
        </tr>
        <?php } ?>

    </tbody>
</table>
<?php
} else {
    echo "No transaction history found.";
}

$conn->close();
?>
<div id="job-details"></div>
<script>
function validatePort() {
    var start_pt = $('#start_pt').val();

    // Hide suggestions if input is empty
    if (start_pt.trim() === '') {
        $('#suggestions').html('');
        return;
    }

    // Send AJAX request to get suggestions
    $.ajax({
        url: "data2.php", // Replace with your PHP script URL
        type: "POST",
        data: {
            query: start_pt
        },
        success: function(data) {
            $('#suggestions').html(data); // Display suggestions
        }
    });
}



// Handle suggestion item click
$(document).on('click', '.suggestion-item', function() {
    var selectedSuggestion = $(this).text();
    $('#start_pt').val(selectedSuggestion);
    $('#suggestions').html(''); // Clear suggestions
});


function validatePort2() {
    var end_pt = $('#end_pt').val();

    // Hide suggestions if input is empty
    if (end_pt.trim() === '') {
        $('#suggestions2').html('');
        return;
    }

    // Send AJAX request to get suggestions
    $.ajax({
        url: "data2.php", // Replace with your PHP script URL
        type: "POST",
        data: {
            query2: end_pt
        },
        success: function(data) {
            $('#suggestions2').html(data); // Display suggestions
        }
    });
}

// Handle suggestion item click
$(document).on('click', '.suggestion-item2', function() {
    var selectedSuggestion2 = $(this).text();
    $('#end_pt').val(selectedSuggestion2);
    $('#suggestions2').html(''); // Clear suggestions
});

function validatePort3() {
    var contain_pt = $('#con_pt').val();

    // Hide suggestions if input is empty
    if (contain_pt.trim() === '') {
        $('#suggestions3').html('');
        return;
    }

    // Send AJAX request to get suggestions
    $.ajax({
        url: "data2.php", // Replace with your PHP script URL
        type: "POST",
        data: {
            query3: contain_pt
        },
        success: function(data) {
            $('#suggestions3').html(data); // Display suggestions
        }
    });
}

// Handle suggestion item click
$(document).on('click', '.suggestion-item3', function() {
    var selectedSuggestion = $(this).text();
    $('#con_pt').val(selectedSuggestion);
    $('#suggestions3').html(''); // Clear suggestions
});



function validateMyPort() {
    var trueValue = $('#showData').val();

    if (trueValue == '1') {
        alert("Validation failed. Please correct the errors.");
        return false;
    } else {
        alert("Form Submitted Now RPA is in Process.....");
        return true;
    }
}
</script>@endsection