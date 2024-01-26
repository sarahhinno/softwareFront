import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:software/theme.dart';
import 'package:flutter_charts/flutter_charts.dart' as chart;

class chartThree extends StatefulWidget {
  @override
  _chartThreeState createState() => _chartThreeState();
}

class _chartThreeState extends State<chartThree> {
  String selectedValue = 'مـدى تـواصـل الأخـصـائـي مـع الأهـل والـطـفـل';
  List<String> options = [
    'مـدى تـواصـل الأخـصـائـي مـع الأهـل والـطـفـل',
    'مـدى فـهـم الأخـصـائـي احـتـياجـات الـطـفـل',
    'مـدى فـعـالـيـة الأخـصـائـي فـي تـقـدم الـطـفـل',
    'مـدى جـودة الأخـصـائـي فـي تـنـظـيـم الـجـلـسـات',
    'مـدى الـتوصـيـة بـهـذا الأخـصـائـي'
  ];

  List<String> names = [
    'sarah',
    'lamees',
    'majd',
    'waleed',
    'soso',
    'marah',
  ];
  List<int> evaluate = [10, 5, 4, 7, 4, 8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              //      SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  //      SizedBox(width: 10),
                  Expanded(
                    child: Center(
                      child: DropdownButton<String>(
                        value: selectedValue,
                        items: options.map((String value) {
                          return DropdownMenuItem(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedValue = newValue!;
                          });
                        },
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold,
                        ),
                        dropdownColor: Colors.grey[200],
                        elevation: 2,
                      ),
                    ),
                  ),
                  // SizedBox(width: 10),
                  Text(
                    ' عـرض حـسـب',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 20,
                      color: primaryColor,
                    ),
                  ),
                  SizedBox(width: 15),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'تـقـيـيــم الأخـصـائـيـن',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              SizedBox(height: 40),
              Container(
                padding: EdgeInsets.all(20),
                height: 500,
                child: BarChart(BarChartData(
                  borderData: FlBorderData(
                      border: const Border(
                    top: BorderSide.none,
                    right: BorderSide.none,
                    left: BorderSide(width: 1),
                    bottom: BorderSide(width: 1),
                  )),
                  titlesData: FlTitlesData(
                      // rightTitles: (sideTitles: SideTitles()),
                      //  topTitles: (sideTitles: SideTitles()),
                      bottomTitles: SideTitles(
                    showTitles: true,
                    getTitles: (double value) {
                      // Use names from the 'names' list for X-axis labels
                      if (value >= 0 && value < names.length) {
                        return names[value.toInt()];
                      }
                      return '';
                    },
                    interval: 1,
                    margin: 5,
                    reservedSize: 20,
                    rotateAngle: 55,
                  )),

                  //       sideTitles:
                  //       (value, meta) {
                  //   defaultGetTitle(value, meta) {
                  //     if (value >= 0 && value < names.length) {
                  //       return names[value.toInt()];
                  //     }
                  //   }
                  // },
                  groupsSpace: 10,

                  barGroups: List.generate(
                    names.length,
                    (index) => BarChartGroupData(
                      x: index,
                      barRods: [
                        BarChartRodData(
                            y: evaluate[index].toDouble(),
                            width: 20,
                            borderRadius: BorderRadius.all(Radius.zero),
                            colors: [Color.fromARGB(255, 241, 195, 54)],
                         //   borderSide: BorderSide(strokeAlign: 10)
                            ),
                      ],
                    ),
                  ),
                )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
