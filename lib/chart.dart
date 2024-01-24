// import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:syncfusion_flutter_charts/charts.dart';
// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Flutter Chart Example',
// //       theme: ThemeData(
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: MyHomePage(),
// //     );
// //   }
// // }
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     final List<ChartData> chartData = [
//       ChartData('David', 25),
//       ChartData('Steve', 38),
//       ChartData('Jack', 34),
//       ChartData('Others', 52)
//     ];
//     return Scaffold(
//         body: Center(
//             child: Container(
//                 child: SfCircularChart(series: <CircularSeries>[
//       // Render pie chart
//       PieSeries<ChartData, String>(
//           dataSource: chartData,
//           xValueMapper: (ChartData data, _) => data.x,
//           yValueMapper: (ChartData data, _) => data.y)
//     ]))));
//   }
// }

// class ChartData {
//   ChartData(this.x, this.y);
//   final String x;
//   final double y;
// }
