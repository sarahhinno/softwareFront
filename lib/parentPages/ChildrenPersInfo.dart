import 'package:flutter/material.dart';

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

class childProfile extends StatefulWidget {
  @override
  _childProfileState createState() => _childProfileState();
}

class _childProfileState extends State<childProfile> {
  TextEditingController _textEditingControllername = TextEditingController();
  TextEditingController _textEditingControllermotherphone =
      TextEditingController();

  TextEditingController _textEditingControlleradress = TextEditingController();

  TextEditingController _textEditingControllerfatherphone =
      TextEditingController();

  bool pressed = false;

  String name = 'ساره خالد وليد حنو';
  String motherphone = '0593085764';
  String fatherphone = '0598598388';
  String addr = 'نابلس';

  String idd = '1234567890';
  String birthDate = '09/12/2023';

  String startDate = '09/12/2023';
  String firstsessionDate = '09/12/2023';

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
                                  labelText: birthDate,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'تـاريـخ الـمـيـلاد',
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
                                controller: _textEditingControlleradress,
                                enabled: _isTextFieldEnabled,
                                onTap: () {
                                  if (!_isTextFieldEnabled) {
                                    _textEditingControlleradress.clear();
                                  }
                                },
                                onChanged: (text) {
                                  setState(() {
                                    addr = _textEditingControlleradress.text;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: addr,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '  عـنـوان الـسـكـن',
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
                                controller: _textEditingControllermotherphone,
                                enabled: _isTextFieldEnabled,
                                onTap: () {
                                  if (!_isTextFieldEnabled) {
                                    _textEditingControllermotherphone.clear();
                                  }
                                },
                                onChanged: (text) {
                                  setState(() {
                                    motherphone =
                                        _textEditingControllermotherphone.text;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: motherphone,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              ' رقم هـاتـف الأم',
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
                                controller: _textEditingControllerfatherphone,
                                enabled: _isTextFieldEnabled,
                                onTap: () {
                                  if (!_isTextFieldEnabled) {
                                    _textEditingControllerfatherphone.clear();
                                  }
                                },
                                onChanged: (text) {
                                  setState(() {
                                    fatherphone =
                                        _textEditingControllerfatherphone.text;
                                  });
                                },
                                decoration: InputDecoration(
                                  labelText: fatherphone,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              '  رقـم هـاتـف الأب',
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
                              ' تـاريـخ الـدخـول',
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
                                  labelText: firstsessionDate,
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontFamily: 'myfont',
                                  ),
                                ),
                              ),
                            ),
                            Text(
                              'تـاريـخ أول جـلـسـة',
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

                                      _textEditingControllermotherphone.text =
                                          _textEditingControllername.text;

                                      _textEditingControlleradress.text =
                                          _textEditingControllername.text;

                                      _textEditingControllerfatherphone.text =
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
            ],
          ),
        ),
      ),
    );
  }
}
