import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:open_file/open_file.dart';

class CardData {
  final String type;
  final String sessionNumber;

  CardData({required this.type, required this.sessionNumber});
}

List<String> yourTableDataList = [
  'Row 1 Data',
  'Row 2 Data',
  'Row 3 Data',
  // Add more rows as needed
];

class DetailsPage extends StatefulWidget {
  final String name;

  DetailsPage({required this.name});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  Future<void> _openFile() async {
    String filePath = 'files/exp2.pdf';
    OpenResult result = await OpenFile.open(filePath);
    if (result.type == ResultType.done) {
      // File opened successfully
      print('File opened successfully.');
    } else {
      // Handle error if the file can't be opened
      print('Error opening the file: ${result.message}');
    }
  }

  void _showDialog(BuildContext context, String s) {
    List<Map<String, String>> tableData = [
      {"date": "1", "reason": "سـمع ونـطق"},
      {"date": "2", "reason": "علاج سلوكي"},
      {"date": "3", "reason": "علاج وظيفي"},
      {"date": "4", "reason": "رياضة"},
      // Add more rows as needed
    ];
    bool _selectAll = false;
    List<bool> _selectedRows = List.filled(tableData.length, false);
    void _deleteSelectedRows() {
      List<int> indicesToRemove = [];
      for (int i = 0; i < _selectedRows.length; i++) {
        if (_selectedRows[i]) {
          indicesToRemove.add(i);
        }
      }
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  DataTable(
                    columns: [
                      DataColumn(label: Text("نـوع الـجـلـسـة")),
                      DataColumn(label: Text("رقـم الجـلـسـة")),
                    ],
                    rows: List.generate(tableData.length, (index) {
                      return DataRow(
                        cells: [
                          DataCell(Text(tableData[index]["date"]!)),
                          DataCell(Text(tableData[index]["reason"]!)),
                        ],
                      );
                    }),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) =>
                        //           AnotherPage()), // Navigate to AnotherPage
                        // );
                      },
                      child: Text(
                        'تـعـديـل الـجـلـسـات',
                        style: TextStyle(fontSize: 20),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF6F35A5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              29), // Optional: for custom shapes
                        ),
                      )),
                ],
              ),
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text(
                'موافق',
                style: TextStyle(
                    color: Color(0xFF6F35A5),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void openphoto(BuildContext context, String imagePath) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Image.asset(
              imagePath,
              width: 100,
              height: 100,
            ),
          );
        });
  }

// ... existing code ...

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text(
          'تـفــاصـيـل',
          style: TextStyle(fontFamily: 'myfont'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      Positioned(
                        child: Image.asset(
                          'images/tester.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                            children: <Widget>[
                              SizedBox(height: 5),
                              Card(
                                color: Colors.transparent,
                                child: Text('ســاره خـالـد ولـيـد حــنــو',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'myfont',
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    )),
                              ),
                              Image.asset(
                                'images/child1.png',
                                width: 300,
                                height: 300,
                              ),
                              //  SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                        child: Padding(
                      padding: EdgeInsets.fromLTRB(30, 0, 1, 1),
                      child: Column(
                        children: <Widget>[
                          Column(children: <Widget>[
                            Card(
                              //1
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('123456789',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 140),
                                  Text(' رقــم الــهـويـة',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.sd_card,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              // 2
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('27/6/2015',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 110),
                                  Text('   تـاريـخ  الـمـيـلاد ',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.date_range,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //3
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('27/6/2015',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 110),
                                  Text('   تـاريـخ  الـدخـول ',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.date_range,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //4
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('27/6/2015',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 110),
                                  Text('تـاريـخ  أول جـلـسـة',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.date_range,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //5
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('0598598388',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 105),
                                  Text('رقـم هـاتـف الأب',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.phone,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //6
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('0568507339',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 110),
                                  Text(' رقم هـاتـف الأم',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.phone,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //7
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('نابلس/المساكن الشعبية',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 80),
                                  Text('عـنـوان الـسـكـن',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.location_pin,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //8
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  Text('مـتـلازمـة داون',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 130),
                                  Text(' الـتـشـخـيـص',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.category,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //8
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      openphoto(context, 'images/id.jpg');
                                      print('okkkkkk');
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xFFF1E6FF)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(29.0),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "  فـتـح الـصـورة",
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(width: 100),
                                  Text(' هـويـة الـطـفـل',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.image,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //9
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      // print('okkkkkk');
                                      //   _showDialog(context, 'ساره حنو');
                                      //   DynamicTable();
                                      _showDialog(context, 'ساره حنو');
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xFFF1E6FF)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(29.0),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "الـتـفـاصـيـل ",
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(width: 135),
                                  Text('الـجـلـسـات',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.category,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 20),
                            Card(
                              //10
                              color: Colors.white,
                              child: Row(
                                children: <Widget>[
                                  ElevatedButton(
                                    onPressed: () {
                                      //    _openFile();
                                      print('okkkkkk');
                                    },
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xFFF1E6FF)),
                                      shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(29.0),
                                        ),
                                      ),
                                    ),
                                    child: Text(
                                      "  فـتـح الـمـلـف",
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15),
                                    ),
                                  ),
                                  SizedBox(width: 95),
                                  Text('الـتـقـريـر الـطـبـي',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17)),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.attach_file,
                                    color: Color.fromARGB(255, 111, 53, 165),
                                  )
                                ],
                              ),
                            ),
                          ]),
                        ],
                      ),
                    )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
