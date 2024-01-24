// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:software/parentPages/completeChildProfile.dart';

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

class profile extends StatefulWidget {
  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {
  TextEditingController _textEditingControllername = TextEditingController();
  TextEditingController _textEditingControllerphone = TextEditingController();
  final TextEditingController _textFieldController = TextEditingController();
  TextEditingController _textEditingControlleremail = TextEditingController();

  bool pressed = false;
  String name = 'ساره خالد وليد حنو';
  String phone = '0593085764';
  String email = 'sarahhinno8@gmail.com';
  String idd = '1234567890';
  String startDate = '09/12/2023';
  String sp = 'سـمـع ونـطـق';

  bool _isTextFieldEnabled = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text(
          'الـمـعـلـومـات الـشـخـصـيـة',
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
              Center(
                child: Image.asset('images/person1.png'),
              ),
              SizedBox(height: 10),
              Container(
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: name,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'الاسـم الـربـاعـي',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _textEditingControllerphone,
                                enabled: _isTextFieldEnabled,
                                onTap: () {
                                  if (!_isTextFieldEnabled) {
                                    _textEditingControllerphone.clear();
                                  }
                                },
                                onChanged: (text) {
                                  setState(() {
                                    phone = _textEditingControllerphone.text;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: phone,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              ' رقم الهاتف',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                controller: _textEditingControlleremail,
                                enabled: _isTextFieldEnabled,
                                onTap: () {
                                  if (!_isTextFieldEnabled) {
                                    _textEditingControlleremail.clear();
                                  }
                                },
                                onChanged: (text) {
                                  setState(() {
                                    email = _textEditingControlleremail.text;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: email,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              ' الـبـريـد الالـكـترونـي',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: idd,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '  رقـم الـهـويـة',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: startDate,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '  تـاريـخ بـدايـة الـعـمـل',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(
                          height: 16.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: TextField(
                                enabled: false,
                                decoration: InputDecoration(
                                  labelText: sp,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '  أخـصـائـي',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                          ],
                        ),
                        SizedBox(height: 40),
                        Row(
                          children: [
                            Expanded(
                              child: ElevatedButton(
                                onPressed: () {
                                  pressed = true;
                                  setState(() {
                                    _isTextFieldEnabled = !_isTextFieldEnabled;
                                    // Navigator.push(context,
                                    //     MaterialPageRoute(builder: (context) {
                                    //   return edit();
                                    // }));
                                  });
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xff6f35a5),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(29.0),
                                  ),
                                ),
                                child: Text(
                                  'تـعـديـل',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'myfont',
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 16.0),
                            Visibility(
                              visible: pressed,
                              child: Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    pressed = false;
                                    setState(() {
                                      _isTextFieldEnabled =
                                          !_isTextFieldEnabled;

                                      _textEditingControllerphone.text =
                                          _textEditingControllername.text;
                                      _textEditingControlleremail.text =
                                          _textEditingControllername.text;
                                    });
                                  },
                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff6f35a5),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(29.0),
                                    ),
                                  ),
                                  child: Text(
                                    'تـم',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: 'myfont',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: Image.asset('images/image1.png'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
