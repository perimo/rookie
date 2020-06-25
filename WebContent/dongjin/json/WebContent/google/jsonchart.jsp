<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
    <script type="text/javascript">
 // Load the Visualization API and the piechart package.
    google.load('visualization', '1', {'packages':['corechart']});
     
    // Set a callback to run when the Google Visualization API is loaded.
    google.setOnLoadCallback(drawChart);

    function drawChart() {
    	var jsonData = $.ajax({
    		url: "jsonchart.jsp",
    		dataType:"json",
    		async: false
    	}).responseText;
    	// Create our data table out of JSON data loaded from server.
    	var data = new google.visualization.DataTable(jsonData);
    	alert(data);

    	// Instantiate and draw our chart, passing in some options.
    	var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
    	chart.draw(data, {width: 400, height: 240});
    }
    </script>
  </head>

  <body>
    <!--Div that will hold the pie chart-->
    <div id="chart_div"></div>
  </body>
</html>