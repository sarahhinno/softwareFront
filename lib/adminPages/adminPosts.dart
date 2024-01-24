import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:software/theme.dart';
import 'dart:io';

class adminPosts extends StatefulWidget {
  @override
  _adminPostsState createState() => _adminPostsState();
}

class _adminPostsState extends State<adminPosts> {
  bool isExpanded = false;
  int lines = 3;
  int s = 5;
  bool less = false;

  List<Map<String, String>> dynamicposts = [
    {
      'date': '17/12/2023',
      'time': '01:21 AM',
      'data':
          '- من المسببات في تأخر اللغة عند الأطفال 🗣️🤔• مشاهدة الأجهزة الإلكترونية لساعات طويلة بمفرده • عدم محاورة الطفل خاصة في الأشهر الأولى من ولادته • عدم دمج الطفل مع أقرانه • إدخال أكثر من لغة للطفل في عمر صغير و بطريقة عشوائية مما يجعل الطفل مشتت بين اللغات وغير قادر على بناء منظومة لغوية كافية و قواعد سليمة . ✨أخصائية النطق والسمع : تيما جرارعة ✨المسببات في تأخر اللغة عند الأطفال 🗣️🤔• مشاهدة الأجهزة الإلكترونية لساعات طويلة بمفرده • عدم محاورة الطفل خاصة في الأشهر الأولى من ولادته • عدم دمج الطفل مع أقرانه • إدخال أكثر من لغة للطفل في عمر صغير و بطريقة عشوائية مما يجعل الطفل مشتت بين اللغات وغير قادر على بناء منظومة لغوية كافية و قواعد سليمة . ✨أخصائية النطق والسمع : تيما جرارعة ✨المسببات في تأخر اللغة عند الأطفال 🗣️🤔• مشاهدة الأجهزة الإلكترونية لساعات طويلة بمفرده • عدم محاورة الطفل خاصة في الأشهر الأولى من ولادته • عدم دمج الطفل مع أقرانه • إدخال أكثر من لغة للطفل في عمر صغير و بطريقة عشوائية مما يجعل الطفل مشتت بين اللغات وغير قادر على بناء منظومة لغوية كافية و قواعد سليمة . ✨أخصائية النطق والسمع : تيما جرارعة ✨',
      'image': 'images/posts.jpg'
    },
    {
      'date': '16/12/2023',
      'time': '01:21 AM',
      'data':
          'ما فائدة معرفة متى يتعلم الأطفال التركيز؟🤔🙇‍♂️ أخذ القدرات لكل عمر في الاعتبار أمرًا ضروريًا فهذه المعرفة الأساسية ستسمح بتنظيم المهام التي تُعطى لأطفالكم ، وتعديل الفترات الزمنية ، وتخطيط فترات راحة كافية ، وقبل كل شيء لتحديد ما إذا كانت هناك مشكلة بالفعل.*قد تختلف المدة من طفل إلى آخر.عمر سنتين: 4-6 دقائق3 سنوات: 6-8 دقائق4 سنوات: 8-12 دقيقة5-6 سنوات: 12-18 دقيقة7-8 سنوات: 16-24 دقيقة9-10 سنوات: 20-30 دقيقة11-12 سنة: 25-35 دقيقة13-15 سنة: 30-40 دقيقة✨أخصائية العلاج الوظيفي : ايه جعايصة ✨',
      'image': 'images/post2.jpg'
    },
    {
      'date': '16/12/2023',
      'time': '01:21 AM',
      'data':
          '-----------------------------------------------------------------',
      'image': 'images/posts.jpg'
    },
    {
      'date': '16/12/2023',
      'time': '01:21 AM',
      'data': '-------------------------------------------------------------',
      'image': 'images/posts.jpg'
    },
  
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          " المنشورات",
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
              for (int i = 0; i < dynamicposts.length; i++)
                Card(
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Divider(
                        height: 0.0,
                        thickness: 3.0,
                        color: Color(0xff6f35a5),
                        indent: 0.0, // Set the starting padding
                        endIndent: 0.0, // Set the ending padding
                      ),
                      Card(
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Container(
                              height: isExpanded ? null : 100,
                              child: Text(
                                dynamicposts[i]['data'] ?? '',
                                style: TextStyle(
                                    fontFamily: 'myfont', fontSize: 17),
                                maxLines: !isExpanded ? lines : lines + 10,
                                textAlign: TextAlign.end,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            if (!isExpanded)
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    isExpanded = true;
                                    lines = lines + 20;
                                  });
                                },
                                child: Text(
                                  'قـراءة الـمـزيـد',
                                  style: TextStyle(
                                      color: primaryColor,
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            Visibility(
                              visible: isExpanded,
                              child: TextButton(
                                onPressed: () {
                                  setState(() {
                                    less = true;
                                    isExpanded = false;
                                    lines = lines - 20;
                                  });
                                },
                                child: Text(' عـرض أقـل',
                                    style: TextStyle(
                                        color: primaryColor,
                                        fontFamily: 'myfont',
                                        fontSize: 15,
                                        fontWeight: FontWeight.w100),
                                    textAlign: TextAlign.end),
                              ),
                            )
                          ],
                        ),
                      ),
                      // SizedBox(height: 5),
                      Image.asset(
                        dynamicposts[i]['image'] ?? '',
                      ),
                      Row(
                        //  crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(dynamicposts[i]['date'] ?? '',
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.end),
                          SizedBox(width: 240),
                          Text(dynamicposts[i]['time'] ?? '',
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.start),
                        ],
                      ),
                      Divider(
                        height: 0.0,
                        thickness: 3.0,
                        color: Color(0xff6f35a5),
                        indent: 0.0, // Set the starting padding
                        endIndent: 0.0, // Set the ending padding
                      ),
                      //   SizedBox(height: 10),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        mouseCursor: SystemMouseCursors.verticalText,
        onPressed: () {
          _showAddPostDialog(context);
          print('Floating Action Button pressed');
        },
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}

void _showAddPostDialog(BuildContext context) {
  String formattedDate = DateFormat('dd/MM/yyyy').format(DateTime.now());
  String formattedTime = DateFormat('HH:mm').format(DateTime.now());
  FilePickerResult? result;
  String selectedFileName = '';
  bool isExpanded = false;

  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'إضـافـة مـنـشـور جـديـد',
            style: TextStyle(
              fontFamily: 'myfont',
              color: Color(0xff6f35a5),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 300,
            width: 300,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Text(formattedDate,
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              textAlign: TextAlign.start),
                          SizedBox(width: 100),
                          Text(
                            'تـاريـخ الـيـوم',
                            style: TextStyle(
                                fontFamily: 'myfont',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 10),
                          Text(formattedTime,
                              style: TextStyle(
                                  fontFamily: 'myfont',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                              textAlign: TextAlign.start),
                          SizedBox(width: 130),
                          Text(
                            'الـوقـت الـحـالـي',
                            style: TextStyle(
                                fontFamily: 'myfont',
                                fontWeight: FontWeight.bold,
                                fontSize: 15),
                            textAlign: TextAlign.end,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xff6f35a5),
                          minimumSize: Size(30, 30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(29),
                          ),
                        ),
                        onPressed: () async {
                          result = await FilePicker.platform.pickFiles(
                            type: FileType.image,
                            //  allowedExtensions: ['jpg', 'jpeg', 'png'],
                          );
                          if (result == null) {
                            print("No file selected");
                          } else {
                            result?.files.forEach((element) {
                              print(element.name);
                            });
                          }
                        },
                        child: Text(
                          'تـحـمـيـل',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                      SizedBox(width: 85),
                      Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 0, 10),
                        child: Text(
                          'إضـافـة صـورة',
                          style: TextStyle(
                              fontFamily: 'myfont',
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                          textAlign: TextAlign.end,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 25),
                Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: ' ',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xff6f35a5),
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                              //      borderRadius: BorderRadius.circular(29.0),
                              borderSide: BorderSide(
                                color: Color(0xff6f35a5),
                              ),
                            ),
                          ),
                          cursorColor: Color(0xff6f35a5),
                        ),
                      ),
                      SizedBox(width: 5),
                      Text(
                        'كـتابـة مـنـشـور ',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close the dialog
              },
              child: Text(
                'إلـغـاء',
                style: TextStyle(
                  fontFamily: 'myfont',
                  color: Color(0xff6f35a5),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            TextButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Icon(
                        Icons.check_circle_outline,
                        color: Color(0xff6f35a5), // Set the color of the icon
                        size: 70.0,
                      ),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text(
                            'تــم',
                            style: TextStyle(
                                fontFamily: 'myfamily',
                                fontSize: 10,
                                color: Color(0xff6f35a5)),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'إضـافـة',
                style: TextStyle(
                  fontFamily: 'myfont',
                  color: Color(0xff6f35a5),
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        );
      });
}
