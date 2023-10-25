<!DOCTYPE html>
<html lang="en">

<head>
    <title>Database</title>
    <link rel="stylesheet" type=text/css href="mystyle.css">
    <title>PAYROLL</title>

    <style>
    * {
        box-sizing: border-box;
    }

    h1 {
        text-align: center;
        color: #66CDAA;
    }

    .container {
        width: 50%;
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
    </style>

</head>

<body>
    <h1><strong>PAYROLL MANAGEMENT<strong></h1>
    <div class="container">
        <form action=" ">
            <!-- Name input -->
            <div>
                <label>Name</label>
                <input type="text" name="name" placeholder="Enter your name">
            </div>

            <!-- DOB -->
            <div>
                <label>DOB</label>
                <input type="Date" name="dob">
            </div>

            <!-- Gender -->
            <div>
                <label>Gender</label>
                <input type="text" name="gender" placeholder="Enter your gender">
            </div>


            <!-- Email input -->
            <div>
                <label>Email</label>
                <input type="email" name="email" placeholder="Enter your email">
            </div>

            <!-- Email address -->
            <div>
                <label>Address</label>
                <input type="email" name="address" placeholder="Enter your address">
            </div>

            <!-- write a drop down list for city -->
            <div>
                <label>City</label>
                <select name="city">
                    <option value="sanjose">San Jose</option>
                    <option value="santaclara">Santa Clara</option>
                    <option value="fremont">Fremont</option>
                    <option value="sunnyvale">Sunnyvale</option>
                    <option value="paloalto">Palo Alto</option>
                </select>
            </div>

            <!-- write a drop down list for state -->
            <div>
                <label>State</label>
                <select name="state">
                    <option value="ca">CA</option>
                    <option value="tx">TX</option>
                    <option value="ny">NY</option>
                </select>
            </div>

            <!-- write a drop down list for country -->
            <div>
                <label>Country</label>
                <select name="country">
                    <option value="India">United States</option>
                    <option value="USA">Vietname</option>
                    <option value="UK">Korean</option>
                    <option value="Australia">Mexico</option>
                    <option value="Canada">Canada</option>
                </select>
            </div>

            <!-- Phone -->
            <div>
                <label>Phone</label>
                <input type="tel" name="phone">
            </div>
        </form>

    </div> <!-- end of container -->
</body>

</html>