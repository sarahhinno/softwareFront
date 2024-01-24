// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:software/adminPages/DetailsPageOfChildren.dart';
import 'package:software/theme.dart';

// class Registered_children {
//   final String name;
//   final String image;
//   final String details;

//   Registered_children(
//       {required this.name, required this.image, required this.details});
// }

class viewChildren extends StatefulWidget {
  @override
  _viewChidrenState createState() => _viewChidrenState();
}

class _viewChidrenState extends State<viewChildren> {
  bool visable = false;

  String selectedValue = 'تـشـخـيـص الـطـفـل';
  List<String> options = [
    'تـشـخـيـص الـطـفـل',
    ' سـنـة دخـول الأطـفـال',
    'سـنـة مـيلاد الأطـفـال',
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
  String id = "";
  List<String> children = [];
  // String img = 'assets/images/child1.png';
  late final List<dynamic> data;
  // late final List<dynamic> image ;
  List<String> imagePath = [];
  List<String> imageID = [];
  //List<ImageDetails> imageDetailsList = [];

  Future<void> getChildrenImages() async {
    String path;
    String id;
    final images = await http.get(Uri.parse(ip + "/sanad/getAllImages"));
    if (images.statusCode == 200) {
      print(images.body);
      final List<dynamic> image = jsonDecode(images.body);
      for (int i = 0; i < image.length; i++) {
        path = image[i]['path'];
        id = image[i]['childID'];
        print(path);
        print(id);
        imagePath.add(path);
        imageID.add(id);
      }
    }
  }

  void zft() {
    print("==================================");
    for (int i = 0; i < imagePath.length; i++) {
      print("11" + data[i]['id']);
      print("22" + imageID[i]);
      print("33" + imageID.indexOf(imageID[i]).toString());
      print("44" + imagePath[i]);
      print("55" + imagePath[imageID.indexOf(data[i]['id'])]);
    }

    imageID.contains("112") ? print("yes") : print("no");
  }
// Future<void> fetchImageDetails() async {
//     final String serverUrl = 'http://192.168.1.19:3000/sanad/getAllImages';

//     try {
//       final response = await http.get(Uri.parse(serverUrl));

//       if (response.statusCode == 200) {
//         final Map<String, dynamic> data = jsonDecode(response.body);
//         final List<dynamic> images = data['images'];

//         setState(() {
//           imageDetailsList = images
//               .map((image) => ImageDetails(id: image['id'], path: image['path']))
//               .toList();
//         });
//       } else {
//         print('Failed to get image details. Status code: ${response.statusCode}');
//       }
//     } catch (error) {
//       print('Error getting image details: $error');
//     }
//   }

  Future<void> getChildrenNames() async {
    print("childrenssssssssssss");
    final childreNamesResponse =
        await http.get(Uri.parse(ip + "/sanad/getchname"));
    if (childreNamesResponse.statusCode == 200) {
      print(childreNamesResponse.body);
      children.clear();
      String childName;
      data = jsonDecode(childreNamesResponse.body);

      for (int i = 0; i < data.length; i++) {
        print(data[i]['Fname'] + " " + data[i]['Lname']);
        childName = data[i]['Fname'] + " " + data[i]['Lname'];
        setState(() {
          children.add(childName);
        });
      }
      for (int i = 0; i < children.length; i++) {
        print("ch" + children[i]);
      }
    } else if (childreNamesResponse.statusCode == 404) {
      print("errrrrrrrror");
    }
  }

  @override
  void initState() {
    super.initState();

    getChildrenNames();
    getChildrenImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        automaticallyImplyLeading: false,
        title: Text(
          "الأطــــفـــال",
          style: TextStyle(
              fontFamily: 'myFont', fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      drawer: Drawer(),
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
                                } else if (newValue == ' جـلـسـات الأطـفـال') {
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
                itemCount: children.length,
                itemBuilder: (context, index) {
                  String registered_child = children[index];
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
                                print(imagePath[
                                    imageID.indexOf(data[index]['id'])]);
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
                                "كـافـة الـتـفـاصـيـل",
                                style: TextStyle(fontFamily: 'myfont'),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          registered_child,
                          style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                        ),
                        Spacer(),
                        ClipOval(
                          child: imageID.contains(data[index]['id'])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
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
                itemCount: children.length,
                itemBuilder: (context, index) {
                  String registered_child = children[index];
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
                                print(imagePath[
                                    imageID.indexOf(data[index]['id'])]);
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
                                "كـافـة الـتـفـاصـيـل",
                                style: TextStyle(fontFamily: 'myfont'),
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                          registered_child,
                          style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
                        ),
                        Spacer(),
                        ClipOval(
                          child: imageID.contains(data[index]['id'])
                              ? Image.network(
                                  'http://192.168.1.19:3000/sanad/getImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
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
      // ListView.builder(
      //   itemCount: children.length,
      //   itemBuilder: (context, index) {
      //     String registered_child = children[index];
      //     return Card(
      //       margin: EdgeInsets.all(16),
      //       child: Row(
      //         mainAxisAlignment: MainAxisAlignment.end,
      //         children: <Widget>[
      //           Row(
      //             mainAxisAlignment: MainAxisAlignment.end,
      //             children: <Widget>[
      //               ElevatedButton(
      //                 onPressed: () {
      //                   print(imagePath[imageID.indexOf(data[index]['id'])]);
      //                   id=data[index]['id'];
      //                   print(index);
      //                   print(id);
      //                   _onPressed(context, id);
      //                 },
      //                 style: ButtonStyle(
      //                   backgroundColor:
      //                       MaterialStateProperty.all<Color>(Color(0xFF6F35A5)),
      //                   shape:
      //                       MaterialStateProperty.all<RoundedRectangleBorder>(
      //                     RoundedRectangleBorder(
      //                       borderRadius: BorderRadius.circular(29.0),
      //                     ),
      //                   ),
      //                 ),
      //                 child: Text(
      //                   "كـافـة الـتـفـاصـيـل",
      //                   style: TextStyle(fontFamily: 'myfont'),
      //                 ),
      //               ),
      //             ],
      //           ),
      //           Spacer(),
      //           Text(
      //             registered_child,
      //             style: TextStyle(fontSize: 18, fontFamily: 'myfont'),
      //           ),
      //           Spacer(),

      //            ClipOval(
      //              child: imageID.contains(data[index]['id'])?
      //              Image.network('http://192.168.1.19:3000/sanad/getImage?id=${imageID[imageID.indexOf(data[index]['id'])]}',
      //             width: 70,
      //             height: 60,
      //             fit: BoxFit.cover,)
      //             :Image.asset('images/profileImage.jpg', width: 70, height: 60,fit: BoxFit.cover,),
      //            ),
      //         ],
      //       ),
      //     );
      //   },
      // ),
    );
  }

  void _onPressed(BuildContext context, String name) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => DetailsPage(name: name)),
    );
  }
}
// class ImageDetails {
//   final String id;
//   final String path;

//   ImageDetails({required this.id, required this.path});
// / }
