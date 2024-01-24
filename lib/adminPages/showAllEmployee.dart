import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:software/adminPages/DetailsPageOfChildren.dart';
import 'package:software/adminPages/DetailsPageOfEmployee.dart';
import 'dart:convert';

import 'package:software/theme.dart';

class Employee {
  final String name;
  final String image;
  final String details;
  Employee({required this.name, required this.image, required this.details});
}

class viewSpecialest extends StatefulWidget {
  @override
  viewSpecialestState createState() => viewSpecialestState();
}

class viewSpecialestState extends State<viewSpecialest> {
  String selectedValue = 'تـخـصـص الأخـصـائـي';
  List<String> options = [
    'سـنـة دخـول الأخـصائـيـن',
    'تـخـصـص الأخـصـائـي',
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
  String svalue = '-----';
  List<String> soptions = [
    '-----',
  ];
  bool visable = false;
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
  String id = "";

  List<String> EMP = [];
  String img = 'images/person4.png';
  late final List<dynamic> data;
  List<String> imagePath = [];
  List<String> imageID = [];

  Future<void> getEmployeeName() async {
    // print("childrenssssssssssss");
    final EmployeeNamesResponse =
        await http.get(Uri.parse(ip + "/sanad/getspname"));
    if (EmployeeNamesResponse.statusCode == 200) {
      EMP.clear();
      String EmployeeName;
      data = jsonDecode(EmployeeNamesResponse.body);

      for (int i = 0; i < data.length; i++) {
        print(data[i]['Fname'] + " " + data[i]['Lname']);
        EmployeeName = data[i]['Fname'] + " " + data[i]['Lname'];
        setState(() {
          EMP.add(EmployeeName);
        });
      }
      for (int i = 0; i < EMP.length; i++) {
        print("ch" + EMP[i]);
      }
    } else {
      print("errrrrrrrror");
    }
  }

  Future<void> getSPImages() async {
    String path;
    String id;
    final images = await http.get(Uri.parse(ip + "/sanad/getAllSPImages"));
    if (images.statusCode == 200) {
      print(images.body);
      final List<dynamic> image = jsonDecode(images.body);
      for (int i = 0; i < image.length; i++) {
        path = image[i]['path'];
        id = image[i]['spID'];
        print(path);
        print(id);
        imagePath.add(path);
        imageID.add(id);
      }
    }
  }

  @override
  void initState() {
    super.initState();

    getEmployeeName();
    getSPImages();
  }

  void _onPressed(BuildContext context, String name) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => spDetailsPage(name: name)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        automaticallyImplyLeading: false,
        title: Text(
          "الأخــــصـــائـــيـــــيـــــن",
          style: TextStyle(
              fontFamily: 'myFont', fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
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

                                if (newValue == 'سـنـة دخـول الأخـصائـيـن') {
                                  soptions = soptions + options4;
                                } else if (newValue == 'تـخـصـص الأخـصـائـي') {
                                  soptions = soptions + options5;
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
                                visable = true;
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
                      SizedBox(width: 20),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          /////////////////////////////////////////////////
          //show just what i need
          Visibility(
            visible: visable,
            child: Expanded(
              child: ListView.builder(
                itemCount: EMP.length,
                itemBuilder: (context, index) {
                  String employee = EMP[index];
                  return Card(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                id = data[index]['id'];
                                print(index);
                                print(id);
                                _onPressed(context, id);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF6F35A5)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                "رؤيـة كـافـة الـتـفـاصـيـل",
                                style: TextStyle(fontFamily: 'myfont'),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          employee,
                          style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                        ),
                        Spacer(),
                        ClipOval(
                          child: imageID.contains(data[index]['id'])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getSPImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'images/profileImage.jpg',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          /////////////////////////////////
          ///// show all employee when the page load
          Visibility(
            visible: !visable,
            child: Expanded(
              child: ListView.builder(
                itemCount: EMP.length,
                itemBuilder: (context, index) {
                  String employee = EMP[index];
                  return Card(
                    margin: EdgeInsets.all(16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            ElevatedButton(
                              onPressed: () {
                                id = data[index]['id'];
                                print(index);
                                print(id);
                                _onPressed(context, id);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF6F35A5)),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29.0),
                                  ),
                                ),
                              ),
                              child: Text(
                                "رؤيـة كـافـة الـتـفـاصـيـل",
                                style: TextStyle(fontFamily: 'myfont'),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          employee,
                          style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                        ),
                        Spacer(),
                        ClipOval(
                          child: imageID.contains(data[index]['id'])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getSPImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                )
                              : Image.asset(
                                  'images/profileImage.jpg',
                                  width: 70,
                                  height: 60,
                                  fit: BoxFit.cover,
                                ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
