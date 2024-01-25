// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: MyChart(),
//       ),
//     );
//   }
// }

// class MyChart extends StatelessWidget {
//   final List<List<int>> evaluationList = [
//     [1, 2, 3, 4, 5, 2],
//     [4, 5, 6, 2, 8, 1],
//     [7, 8, 9, 4, 2, 7],
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return LineChart(
//       LineChartData(
//         titlesData: FlTitlesData(
//           rightTitles: AxisTitles(sideTitles: SideTitles()),
//           topTitles: AxisTitles(sideTitles: SideTitles()),
//         ),
//         borderData: FlBorderData(show: false),
//         lineBarsData: generateLineBarsData(),
//       ),
//     );
//   }

//   List<LineChartBarData> generateLineBarsData() {
//     List<LineChartBarData> lineBarsData = [];

//     List<Color> lineColors = [
//       Colors.red,
//       Colors.green,
//       Colors.blue,
//     ];

//     for (int i = 0; i < evaluationList.length; i++) {
//       List<FlSpot> spots = [];

//       for (int j = 0; j < evaluationList[i].length; j++) {
//         spots.add(FlSpot(j.toDouble(), evaluationList[i][j].toDouble()));
//       }

//       LineChartBarData lineChartBarData = LineChartBarData(
//         spots: spots,
//         isCurved: true,
//         barWidth: 3,
//         color: lineColors[i],
//       );

//       lineBarsData.add(lineChartBarData);
//     }

//     return lineBarsData;
//   }
// }
