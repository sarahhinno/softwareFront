import 'package:flutter/material.dart';
import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:software/theme.dart';
import 'package:intl/intl.dart';

class chartOne extends StatefulWidget {
  @override
  _chartOneState createState() => _chartOneState();
}

class _chartOneState extends State<chartOne> {
  bool isVisible = false;
  late List<Map<String, String>> optionsOne = [
    {'name': 'الـتـركـيـز والانـتـبـاه'},
    {'name': 'الـمـهـارات الادراكـيـة'},
    {'name': 'الـتـواصـل الـبـصـري'},
    {'name': ' الـمـشـاكـل الـحـسـيـة'},
    {'name': 'الـمـهـارات الـحـيـاتـيـة'},
  ];

  String selectedValue = 'ساره خالد وليد حنو';
  String svaluee = 'ساره خالد وليد حنو';
  List<String> childrenList = [
    'ساره خالد وليد حنو',
    'وليد خالج وليد حنو',
    'لميس خالد وليد حنو',
    'مجد خالج وليد حنو',
  ];

  String svalue = '-----';
  List<String> soptions = [
    '-----',
  ];
  String selectedValueoptions = '-----';
  List<String> options = [
    '-----',
    'ســلــوكــي',
    'وظــيــفــي',
  ];

  final List<List<int>> evaluationList = [
    [10, 2, 3, 4, 5, 2],
    [4, 5, 6, 2, 8, 1],
    [7, 8, 9, 4, 2, 7],
    [4, 3, 8, 6, 2, 1],
    [7, 4, 9, 5, 7, 2],
  ];
  List<Color> lineColors = [
    Colors.red,
    Colors.green,
    Colors.blue,
    Colors.yellow,
    Colors.deepPurpleAccent,
  ];
  List<LineChartBarData> generateLineBarsData() {
    List<LineChartBarData> lineBarsData = [];

    for (int i = 0; i < evaluationList.length; i++) {
      List<FlSpot> spots = [];

      for (int j = 0; j < evaluationList[i].length; j++) {
        spots.add(FlSpot(j.toDouble(), evaluationList[i][j].toDouble()));
      }

      LineChartBarData lineChartBarData = LineChartBarData(
        spots: spots,
        isCurved: true,
        barWidth: 3,
        color: lineColors[i],
      );

      lineBarsData.add(lineChartBarData);
    }

    return lineBarsData;
  }

  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          ' تـطـور الـطـفـل',
          style: TextStyle(
            fontFamily: 'myfont',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: primaryLightColor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Center(
            child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Expanded(
                  child: Center(
                    child: DropdownButton<String>(
                      value: selectedValue,
                      items: childrenList.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          soptions = ['-----'];
                          selectedValue = newValue!;
                          soptions = options;
                        });
                      },
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      dropdownColor: Colors.grey[200],
                      elevation: 2,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'اخـتـيـار طـفـل',
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    color: primaryColor,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(width: 10),
                Expanded(
                  child: Center(
                    child: DropdownButton<String>(
                      value: svalue,
                      items: soptions.map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          svalue = newValue!;
                          isVisible = true;
                        });
                      },
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                      dropdownColor: Colors.grey[200],
                      elevation: 2,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  'اخـتـيـار الـجـلـسـة',
                  style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    color: primaryColor,
                  ),
                ),
                SizedBox(width: 30),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(height: 20),
            Visibility(
              visible: isVisible,
              child: Container(
                  padding: EdgeInsets.all(20),
                  width: 400,
                  height: 500,
                  child: LineChart(
                    LineChartData(
                      titlesData: FlTitlesData(
                        rightTitles: AxisTitles(sideTitles: SideTitles()),
                        topTitles: AxisTitles(sideTitles: SideTitles()),
                        leftTitles: AxisTitles(sideTitles: SideTitles()),
                        
                        // bottomTitles: AxisTitles(sideTitles(min:1,max:12))
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: generateLineBarsData(),
                    ),
                    
                  )),
            ),
            Visibility(
                visible: isVisible,
                child: Container(
                  color: primaryLightColor,
                  //    padding: EdgeInsets.fromLTRB(150, 0, 80, 10),
                  child: Column(
                    children: <Widget>[
                      for (int i = 0; i < optionsOne.length; i++)
                        Row(
                          children: <Widget>[
                            Spacer(),
                            Text(
                              optionsOne[i]['name'] ?? '',
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            Spacer(),
                            Icon(Icons.timeline, color: lineColors[i]),
                            Spacer(),
                          ],
                        ),
                    ],
                  ),
                )),
          ],
        )),
      ),
    );
  }
}
