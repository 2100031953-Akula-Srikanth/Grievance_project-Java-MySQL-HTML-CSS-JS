<!DOCTYPE html>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style1.css">
    <style>
    
    .custom-body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    text-align: center;
    margin: 20px;
}

.dashboard {
    text-align: center;
    margin: 20px;
}

.dashboard-heading {
    font-size: 24px;
    margin-bottom: 20px;
}

.chart-container {
    display: flex;
    justify-content: center;
    align-items: center;
    flex-wrap: wrap;
    max-width: 1000px;
    /* Increase the max-width */
    margin: 0 auto;
}

.report {
    flex: 1;
    width: 600px;
    /* Increase the width */
    height: 400px;
    /* Increase the height */
    margin: 10px;
    padding: 10px;
    background-color: #f0f0f0;
    border-radius: 5px;
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
    text-align: center;
}

.report canvas {
    width: 100%;
    /* Adjusted to fit container width */
    height: 100%;
    /* Adjusted to fit container height */
}
        /* General styling for statistics container */
        .statistics-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin-top: 140px;
            animation: fallIn 1.5s ease-in-out;
        }

        @keyframes fallIn {
            0% {
                transform: translateY(-200px);
            }
            100% {
                transform: translateY(0);
            }
        }

        /* Styling for individual statistics boxes */
        .statistics-box {
            flex: 1;
            max-width: 300px;
            background-color: #f3f3f3;
            padding: 20px;
            margin: 10px;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            border-radius: 10px;
            transition: transform 0.3s, background-color 0.3s;
        }

        /* Hover effect for statistics boxes */
        .statistics-box:hover {
            transform: scale(1.05); /* Slightly zoom in on hover */
            background-color: #f8dcb7; /* Change the background color on hover */
        }

        .statistics-box h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .statistics-box p {
            font-size: 36px;
            margin: 0;
            color: #008000; /* Green color for the number values */
        }

        /* Custom styles for specific boxes */
        .statistics-box.students {
            background-color: #f5f0fc;
        }

        .statistics-box.grievance {
            background-color: #ffe8e8;
        }

        /* Styling for graphs */
        .graph-container {
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }

        .graph {
            width: 300px;
            height: 200px;
            background-color: #f3f3f3;
            margin: 10px;
            border: 1px solid #ddd;
        }
    </style>
</head>
<body>
    <!-- Include your admin navbar if needed -->
    <%@ include file="adminnavbar.jsp" %>

    <!-- Statistics boxes -->
    <div class="statistics-container">
        

        <!-- New Statistics Boxes -->
        <div class="statistics-box students">
            <h3>Total Lecturers</h3>
            <p id="studentCount">${fcount}</p>
        </div>
        <div class="statistics-box students">
            <h3>Total Students</h3>
            <p id="studentCount">${scount}</p>
        </div>

        <div class="statistics-box grievance">
            <h3>Total Grievance</h3>
            <p id="grievanceCount">${rcount}</p>
        </div>
        
        <!-- New Statistics Boxes for Pending and Resolved Grievances (To be populated with data later) -->
        <div class="statistics-box pending-grievances">
            <h3>Pending Grievances</h3>
            <p id="pendingGrievancesCount">${rcount}</p>
        </div>
        
        <div class="statistics-box resolved-grievances">
            <h3>Resolved Grievances</h3>
            <p id="resolvedGrievancesCount">0</p>
        </div>
    </div>

 <div class="custom-body">
        <div class="dashboard">
            <h1 class="dashboard-heading">Reports and Analytics</h1>
            <div class="chart-container">
                <div class="report" id="grievanceTrends">
                    <h2>Grievance Trends</h2>
                    <canvas id="grievanceTrendsChart"></canvas>
                </div>
                <div class="report" id="resolutionTimes">
                    <h2>Resolution Times</h2>
                    <canvas id="resolutionTimesChart"></canvas>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
    
 // Sample data (you'd fetch this data from your backend)
    const grievanceTrendsData = {
        labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May'],
        datasets: [{
            label: 'Grievance Submissions',
            data: [10, 20, 15, 30, 25],
            borderColor: 'blue',
            fill: false,
        }],
    };

    const resolutionTimesData = {
        labels: ['Category A', 'Category B', 'Category C'],
        datasets: [{
            label: 'Average Resolution Time (days)',
            data: [10, 15, 8],
            backgroundColor: ['rgba(255, 99, 132, 0.5)', 'rgba(54, 162, 235, 0.5)', 'rgba(255, 206, 86, 0.5'],
            borderWidth: 1,
        }],
    };

    const categoryAnalysisData = {
        labels: ['Academic', 'Non-Academic', 'Discrimination', 'Other'],
        datasets: [{
            data: [20, 30, 15, 10],
            backgroundColor: ['blue', 'green', 'red', 'orange'],
        }],
    };

    // Create charts
    const ctx1 = document.getElementById('grievanceTrendsChart').getContext('2d');
    new Chart(ctx1, {
        type: 'line',
        data: grievanceTrendsData,
    });

    const ctx2 = document.getElementById('resolutionTimesChart').getContext('2d');
    new Chart(ctx2, {
        type: 'bar',
        data: resolutionTimesData,
    });
    </script>
</body>
</html>
