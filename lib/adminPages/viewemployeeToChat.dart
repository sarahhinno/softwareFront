import 'package:flutter/material.dart';
import 'package:software/DetailsPage.dart';
import 'package:software/theme.dart';
import 'package:http/http.dart' as http;

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: TestPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }

class adminChat extends StatefulWidget {
  @override
  _adminChatState createState() => _adminChatState();
}

class _adminChatState extends State<adminChat> {
  List<Map<String, String>> Freinds = [
    {
      'date': 'أمس',
      'name': '   فـطـوم دريـنـي',
      'message': ' اوك',
      'image': 'images/person4.png'
    },
    {
      'date': 'أمس',
      'name': '   نـغـم دريـنـي',
      'message': ' تـمـام',
      'image': 'images/person5.png'
    },
    {
      'date': '13/12',
      'name': ' شـام دريـنـي  ',
      'message': ' الجلسة',
      'image': 'images/person22.png'
    },
    {
      'date': '13/12',
      'name': '   مـيـس دريـنـي',
      'message': ' نفس الموعد',
      'image': 'images/person11.png'
    },
    {
      'date': '12/12',
      'name': '   لـولـو دريـنـي',
      'message': 'الاحد  ',
      'image': 'images/person6.png'
    },
    {
      'date': '5/12',
      'name': ' رنـا دريـنـي  ',
      'message': ' مسج',
      'image': 'images/person8.png'
    },
    {
      'date': 'أمس',
      'name': 'أحـمـد أحـمـد',
      'message': ' بكرا',
      'image': 'images/person3.png'
    },
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text(
          'الـدردشـات',
          style: TextStyle(fontFamily: 'myfont'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              SizedBox(
                  height: 20,
                  child: Container(color: Color.fromARGB(255, 237, 234, 240))),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: Freinds.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //    Navigate to a new page when card is tapped
                      // Navigator.push(
                      //   context,
                      //   // MaterialPageRoute(
                      //   //   // builder: (context) => DetailsPage(
                      //   //   //   name: Freinds[index]['name'] ?? '',
                      //   //   //   message: Freinds[index]['message'] ?? '',
                      //   //   //   image: Freinds[index]['image'] ?? '',
                      //   //   // ),
                      //   // ),
                      // );
                    },
                    child: Column(
                      children: <Widget>[
                        Card(
                          color: Color.fromARGB(255, 237, 234, 240),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                Freinds[index]['date'] ?? '',
                                style: TextStyle(),
                              ),
                              Spacer(),
                              Card(
                                color: Color.fromARGB(255, 237, 234, 240),
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      Freinds[index]['name'] ?? '',
                                      style: TextStyle(
                                          fontFamily: 'myfont',
                                          fontSize: 20,
                                          fontWeight: FontWeight.w200),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      Freinds[index]['message'] ?? '',
                                      style: TextStyle(
                                          fontSize: 15, fontFamily: 'myfont'),
                                    ),
                                  ],
                                ),
                              ),
                              //  Spacer(),
                              Image.asset(
                                Freinds[index]['image'] ?? '',
                                width: 60,
                                height: 60,
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          thickness: 1.0,
                          color: Color(0xff6f35a5),
                          indent: 0.0, // Set the starting padding
                          endIndent: 60.0, // Set the ending padding
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
