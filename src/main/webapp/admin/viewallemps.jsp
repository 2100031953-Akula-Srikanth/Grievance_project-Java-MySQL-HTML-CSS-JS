<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="jakarta.tags.core" prefix="c"%>
<html>
<head>
    <link type="text/css" rel="stylesheet" href="css/style.css">
        <style>
        body {
            background-color: #f0f0f0; /* Set a light background color for the page */
        }

        /* Style for the table container */
        .table-container {
            width: 70%; /* Adjust the width as needed */
            margin: 20px auto; /* Center the table horizontally and provide some spacing */
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2); /* Add a box shadow for a floating effect */
            background-color:  rgb(34 169 173); /* Set a white background color for the container */
            padding: 20px; /* Add some padding to the container */
            border-radius: 19px;
        }

        table {
            width: 100%; /* Table takes the full width of the container */
            border: 2px solid #000; /* Set the border */
        }

        table th {
            background-color: #ff4b00; /* Header background color */
            color: green; /* Header text color */
        }

        table th, table td {
            padding: 10px; /* Add padding to cells for spacing */
        }

        table tr:nth-child(even) {
            background-color:#5FCD28; /* Alternating row colors */
        }
         table tr:nth-child(odd) {
            background-color:#fae1be; /* Alternating row colors */
        }

        h1 {
            text-align: center; /* Center align the heading */
            font-weight:
        }
     .slide-in-elliptic-bottom-fwd {
	-webkit-animation: slide-in-elliptic-bottom-fwd 0.7s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
	        animation: slide-in-elliptic-bottom-fwd 0.7s cubic-bezier(0.250, 0.460, 0.450, 0.940) both;
}
    
   @-webkit-keyframes slide-in-elliptic-bottom-fwd {
  0% {
    -webkit-transform: translateY(600px) rotateX(30deg) scale(0);
            transform: translateY(600px) rotateX(30deg) scale(0);
    -webkit-transform-origin: 50% 100%;
            transform-origin: 50% 100%;
    opacity: 0;
  }
  100% {
    -webkit-transform: translateY(0) rotateX(0) scale(1);
            transform: translateY(0) rotateX(0) scale(1);
    -webkit-transform-origin: 50% -1400px;
            transform-origin: 50% -1400px;
    opacity: 1;
  }
}
@keyframes slide-in-elliptic-bottom-fwd {
  0% {
    -webkit-transform: translateY(600px) rotateX(30deg) scale(0);
            transform: translateY(600px) rotateX(30deg) scale(0);
    -webkit-transform-origin: 50% 100%;
            transform-origin: 50% 100%;
    opacity: 0;
  }
  100% {
    -webkit-transform: translateY(0) rotateX(0) scale(1);
            transform: translateY(0) rotateX(0) scale(1);
    -webkit-transform-origin: 50% -1400px;
            transform-origin: 50% -1400px;
    opacity: 1;
  }
}


    </style>
</head>
<body>
    <br>
    <h1>All Grievances</h1>
    <button id="sortButton">Sort by Level</button>
    <div class="table-container slide-in-elliptic-bottom-fwd">
        <table id="grievanceTable">
            <tr>
                <th>nature</th>
                <th>level</th>
                <th>description</th>
                <th>action</th>
            </tr>
            <c:forEach items="${st}" var="stt">
                <tr>
                    <td><c:out value="${stt.nature}" /></td>
                    <td><c:out value="${stt.level}" /></td>
                    <td><c:out value="${stt.description}" /></td>
                    <td><c:out value="${stt.action}" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>

   <script>
    $(document).ready(function() {
        $("#sortButton").click(function() {
            var table = $("#grievanceTable tbody");
            var rows = table.find('tr').get();
            
            rows.sort(function(a, b) {
                var levelA = $(a).find('td:eq(1)').text();
                var levelB = $(b).find('td:eq(1)').text();
                
                // Define the custom sorting order
                var sortOrder = { "Urgent": 1, "High": 2, "Medium": 3, "Low": 4 };
                
                return sortOrder[levelA] - sortOrder[levelB];
            });
            
            $.each(rows, function(index, row) {
                table.append(row);
            });
        });
    });
</script>

</body>
</html>
