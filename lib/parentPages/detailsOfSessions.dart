import 'package:flutter/material.dart';
import 'package:software/theme.dart';
import 'package:software/components/rounded_button.dart';

class detailsOfSession extends StatefulWidget {
  final String buttonText;

  detailsOfSession({required this.buttonText});

  @override
  _detailsOfSessionState createState() => _detailsOfSessionState();
}

class _detailsOfSessionState extends State<detailsOfSession> {
  List<Map<String, String>> sessionChild = [
    {
      "الـيوم": "الأحـد",
      "الـوقـت": "01:30",
      "الأخـصـائـي": "سـاره حـنـو",
    },
    {
      "الـيوم": "الـثلاثـاء",
      "الـوقـت": "02:00",
      "الأخـصـائـي": "مـرح دريـنـي",
    },
  ];
  List<Map<String, String>> dynamicData = [
    {
      'date': '16/12/2023',
      'data':
          '------------------------------------------------------------------------------------------------------'
    },
    {
      'date': '16/12/2023',
      'data':
          '-----------------------------------------------------------------'
    },
    {
      'date': '16/12/2023',
      'data': '-------------------------------------------------------------'
    },
    {
      'date': '16/12/2023',
      'data':
          '------------------------------------------------------------------------------------------------------'
    },
    {
      'date': '16/12/2023',
      'data':
          '-----------------------------------------------------------------'
    },
    {
      'date': '16/12/2023',
      'data': '-------------------------------------------------------------'
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          'تـفـاصـيـل الـجلـسـة - ${widget.buttonText}',
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'myFont',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              Container(
                color: primaryLightColor,
                width: 400, // Set the desired width
                height: 100, // Set the desired height
                child: Card(
                  color: primaryLightColor,
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 30),
                      Expanded(
                        child: TextField(
                          enabled: false,
                          decoration: InputDecoration(
                            labelText: '2',
                            labelStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 25.0,
                              fontFamily: 'myfont',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 100),
                      Text(
                        'عـدد الـجـلـسـات فـي الأسـبـوع',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 4.0,
                color: Color(0xff6f35a5),
                indent: 0.0, // Set the starting padding
                endIndent: 0.0, // Set the ending padding
              ),
              Container(
                width: 500,
                color: primaryLightColor,
                child: Column(
                  children: <Widget>[
                    Text(
                      'جـلـسـات الأسـبوع',
                      style: TextStyle(
                          fontFamily: 'myfont',
                          fontWeight: FontWeight.w100,
                          fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                    Card(
                      color: primaryLightColor,
                      child: DataTable(
                        decoration: BoxDecoration(
                          color: Color(0xFFF1E6FF),
                        ),
                        columns: [
                          DataColumn(
                              label: Text('الـيوم',
                                  style: TextStyle(
                                      fontFamily: 'myfont', fontSize: 20),
                                  textAlign: TextAlign.center)),
                          DataColumn(
                              label: Text('الـوقـت',
                                  style: TextStyle(
                                      fontFamily: 'myfont', fontSize: 20),
                                  textAlign: TextAlign.center)),
                          DataColumn(
                              label: Text('الأخـصـائـي',
                                  style: TextStyle(
                                      fontFamily: 'myfont', fontSize: 20),
                                  textAlign: TextAlign.center)),
                        ],
                        rows: sessionChild
                            .map(
                              (data) => DataRow(
                                cells: [
                                  DataCell(Text(data['الـيوم'] ?? '',
                                      style: TextStyle(
                                          fontFamily: 'myfont', fontSize: 20),
                                      textAlign: TextAlign.center)),
                                  DataCell(Text(data['الـوقـت'] ?? '',
                                      style: TextStyle(
                                          fontFamily: 'myfont', fontSize: 20),
                                      textAlign: TextAlign.center)),
                                  DataCell(Text(data['الأخـصـائـي'] ?? '',
                                      style: TextStyle(
                                          fontFamily: 'myfont', fontSize: 20),
                                      textAlign: TextAlign.center)),
                                ],
                              ),
                            )
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 4.0,
                color: Color(0xff6f35a5),
                indent: 0.0, // Set the starting padding
                endIndent: 0.0, // Set the ending padding
              ),
              Container(
                width: 500,
                color: primaryLightColor,
                child: Column(
                  ///    crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text('مـلاحـظـات الجـلـسـات',
                        style: TextStyle(fontFamily: 'myfont', fontSize: 20),
                        textAlign: TextAlign.center),
                    SizedBox(height: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        for (int i = 0; i < dynamicData.length; i++)
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(dynamicData[i]['date'] ?? '',
                                  style: TextStyle(
                                    fontFamily: 'myfont',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.end),
                              Text(
                                dynamicData[i]['data'] ?? '',
                                style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Divider(
                                height: 1.0,
                                thickness: 1.0,
                                color: Color(0xff6f35a5),
                                indent: 0.0, // Set the starting padding
                                endIndent: 0.0, // Set the ending padding
                              ),
                            ],
                          ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
