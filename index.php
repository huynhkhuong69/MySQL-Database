<!DOCTYPE html>
<html lang="en">

<head>
    <title>Payroll</title>
    <link rel="stylesheet" type=text/css href="mystyle.css">

    <style>
    * {
        box-sizing: border-box;
    }

    h1 {
        text-align: center;
        color: #66CDAA;
    }

    .container {
        width: 65%;
        margin: 0 auto;
        border: 1px solid #B0C4DE;
        padding: 10px;
        background-color: #F0F8FF;
    }

    input {
        width: 100%;
        padding: 8px;
    }

    select {
        width: 100%;
        padding: 8px;
    }

    .btn {
        text-align: center;
        margin-top: 10px;
    }

    button {
        width: 15%;
        padding: 10px;
        background-color: #66CDAA;
        color: green;
        border-radius: 10px;

    }
    </style>

</head>

<body>
    <h1><strong>PAYROLL MANAGEMENT<strong></h1>
    <div class="container">
        <!-- connect to DB by the filename created connect.php -->
        <form action="connect.php" method="post">

            <!-- Name input -->
            <div>
                <label>Name</label>
                <input type="text" name="nme" placeholder="Enter your name">
            </div>

            <!-- Email input -->
            <div>
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email">
            </div>

            <!-- Phone -->
            <div>
                <label>Mobile</label>
                <input type="text" name="mobile" placeholder="Enter your phone number">
            </div>

            <!-- Submit Button -->
            <div class="btn">
                <button type="submit">Submit</button>
            </div>

        </form>
    </div> <!-- end of container -->
</body>

</html>