import 'dart:core';

import 'package:flutter/material.dart';
import 'package:software/theme.dart';

class view extends StatefulWidget {
  @override
  _viewState createState() => _viewState();
}

class _viewState extends State<view> {
  String selectedValue = 'تـشـخـيـص الـطـفـل';
  List<String> options = [
    'تـشـخـيـص الـطـفـل',
    ' سـنـة دخـول الأطـفـال',
    'سـنـة مـيلاد الأطـفـال',
    'سـنـة دخـول الأخـصائـيـن',
    'تـخـصـص الأخـصـائـي',
    ' جـلـسـات الأطـفـال',
  ];

  String selectedValue1 = '-----';
  List<String> options1 = [
    'مـتلازمـة داون',
    'تـوحـد',
    'صـعوبـة فـي الـتـعلـم',
  ];
  String selectedValue2 = '-----';
  List<String> options2 = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
  ];
  String selectedValue3 = '-----';
  List<String> options3 = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
  ];
  String selectedValue4 = '-----';
  List<String> options4 = [
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
    '2006',
    '2007',
    '2008',
  ];
  String selectedValue5 = '-----';
  List<String> options5 = [
    'ســلــوكــي',
    'وظــيــفــي',
    'تــربـيـة خـاصـة',
    'عــلاج طــبـيـعي',
    'الـلغـة و نــطــق',
  ];
  String selectedValue6 = '-----';
  List<String> options6 = [
    'ســلــوكــي',
    'وظــيــفــي',
    'تــربـيـة خـاصـة',
    'عــلاج طــبـيـعي',
    'الـلغـة و نــطــق',
  ];
  String svalue = '-----';
  List<String> soptions = [
    '-----',
  ];
  List<String> names = [
    'ٍساره خالد وليد حنو',
    'وليد خالد وليد حنو',
    'مرح رائد ابراهيم دريني',
    'ٍساره خالد وليد حنو',
    'وليد خالد وليد حنو',
    'مرح رائد ابراهيم دريني',
    'ٍساره خالد وليد حنو',
    'وليد خالد وليد حنو',
  
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
      ),
      body: Column(
        children: <Widget>[
          Container(
            color: Colors.grey[200],
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: <Widget>[
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 10),
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
                                soptions = ['-----'];

                                if (newValue == 'تـشـخـيـص الـطـفـل') {
                                  soptions = soptions + options1;
                                } else if (newValue ==
                                    ' سـنـة دخـول الأطـفـال') {
                                  soptions = soptions + options2;
                                } else if (newValue ==
                                    'سـنـة مـيلاد الأطـفـال') {
                                  soptions = soptions + options3;
                                } else if (newValue ==
                                    'سـنـة دخـول الأخـصائـيـن') {
                                  soptions = soptions + options4;
                                } else if (newValue == 'تـخـصـص الأخـصـائـي') {
                                  soptions = soptions + options5;
                                } else if (newValue == ' جـلـسـات الأطـفـال') {
                                  // soptions.remove(soptions);

                                  soptions = soptions + options6;
                                }
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
                        'الـبـحـث حـسـب',
                        style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 20,
                          color: primaryColor,
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    children: <Widget>[
                      SizedBox(width: 50),
                      Expanded(
                        // color: Colors.grey[200],
                        // width: 150,
                        child: Center(
                          child: DropdownButton<String>(
                            value: svalue,
                            items: soptions.map((String value) {
                              return DropdownMenuItem(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                svalue = newValue!;
                              });
                            },
                            style: TextStyle(
                              color: primaryColor,
                              fontSize: 18.0,
                            ),
                            dropdownColor: Colors.grey[200],
                            elevation: 4,
                          ),
                        ),
                      ),
                      SizedBox(width: 50),
                      Icon(
                        Icons.filter_list,
                        color: primaryColor,
                        size: 30,
                      ),
                      // Text(
                      //   ' اخـتـيـار',
                      //   style: TextStyle(
                      //     fontFamily: 'myfont',
                      //     fontSize: 20,
                      //     color: primaryColor,
                      //   ),
                      // ),
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: ListView.builder(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return Column(
                  children: <Widget>[
                    Container(
                      width: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Color.fromARGB(255, 242, 239, 193),
                      ),
                      child: Text(
                        names[index],
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.w200),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 5),
                  ],
                );
              },
            ),
          ),
          // Container(
          //   width: 300,
          //   decoration: BoxDecoration(
          //     borderRadius: BorderRadius.circular(25),
          //     color: Color.fromARGB(255, 242, 239, 193),
          //   ),
          //   child: Text(
          //     'سـاره خـالـد ولـيـد حـنـو',
          //     style: TextStyle(
          //         fontFamily: 'myfont',
          //         fontSize: 20,
          //         fontWeight: FontWeight.w200),
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }
}
