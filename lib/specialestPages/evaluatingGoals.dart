import 'package:flutter/material.dart';
import 'package:software/theme.dart';
import 'package:software/components/radioButtonWithImage.dart';

class evalobjec extends StatefulWidget {
  @override
  _evalobjecState createState() => _evalobjecState();
}

class _evalobjecState extends State<evalobjec> {
  bool isChecked = false;

  List<Map<String, String>> obj1 = [
    {'percentage': '20%', 'object': '---------------------------------'},
    {'percentage': '50%', 'object': '--------------------------'},
    {'percentage': '40%', 'object': '-------------------------'},
  ];
  List<Map<String, String>> obj2 = [
    {'percentage': '50%', 'object': '======================'},
    {'percentage': '70%', 'object': '==============='},
    {'percentage': '90%', 'object': '=============='},
  ];
  List<Map<String, String>> obj3 = [
    {'percentage': '50%', 'object': '%%%%%%%%%%%'},
    {'percentage': '70%', 'object': '%%%%%%%%%%%%%%%%%%%%'},
    {'percentage': '90%', 'object': '%%%%%%%%%%%%%%%%%%'},
    {'percentage': '70%', 'object': '%%%%%%%%%%%%%%%%%%%%'},
    {'percentage': '90%', 'object': '%%%%%%%%%%%%%%%%%%%'},
  ];
  List<Map<String, String>> obj4 = [
    {'percentage': '50%', 'object': '************'},
    {'percentage': '70%', 'object': '***************************'},
    {'percentage': '90%', 'object': '********************************'},
  ];
  late List<bool> isCheckedList;
  late List<bool> isCheckedList2;
  late List<bool> isCheckedList3;
  late List<bool> isCheckedList4;

  @override
  void initState() {
    super.initState();
    isCheckedList = List.generate(obj1.length, (index) => false);
    isCheckedList2 = List.generate(obj2.length, (index) => false);
    isCheckedList3 = List.generate(obj3.length, (index) => false);
    isCheckedList4 = List.generate(obj4.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          " الأهـداف",
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
                SizedBox(height: 5),
                Text(
                  'العـلاج الـوظـيـفـي',
                  style: TextStyle(
                      color: primaryColor,
                      fontFamily: 'myfont',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.end,
                ),
                Card(
                  color: Color.fromARGB(255, 242, 239, 193),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '-: الـتـركـيـز والانـتـبـاه -',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myfont',
                            fontSize: 25,
                            fontWeight: FontWeight.w200),
                        textAlign: TextAlign.end,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          for (int i = 0; i < obj1.length; i++)
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      obj1[i]['percentage'] ?? '',
                                      style: TextStyle(
                                        fontFamily: 'myfont',
                                        color: Color(0xff161A30),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      obj1[i]['object'] ?? '',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    Checkbox(
                                      value: isCheckedList[i],
                                      onChanged: (value) {
                                        setState(() {
                                          isCheckedList[i] = value ?? false;
                                        });
                                      },
                                      activeColor: primaryColor,
                                      checkColor: Colors.white,
                                    ),
                                    Spacer(),
                                    Text(
                                      'تـم تـحـقـيـق الـهـدف',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xffe6f6ff),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '-:  الـمـهـارات الإدراكـيـة -',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myfont',
                            fontSize: 25,
                            fontWeight: FontWeight.w200),
                        textAlign: TextAlign.end,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          for (int i = 0; i < obj2.length; i++)
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      obj2[i]['percentage'] ?? '',
                                      style: TextStyle(
                                        fontFamily: 'myfont',
                                        color: Color(0xff161A30),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      obj2[i]['object'] ?? '',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    Checkbox(
                                      value: isCheckedList2[i],
                                      onChanged: (value) {
                                        setState(() {
                                          isCheckedList2[i] = value ?? false;
                                        });
                                      },
                                      activeColor: primaryColor,
                                      checkColor: Colors.white,
                                    ),
                                    Spacer(),
                                    Text(
                                      'تـم تـحـقـيـق الـهـدف',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xfffff9e6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '-: الـتـواصـل الـبـصـري -',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myfont',
                            fontSize: 25,
                            fontWeight: FontWeight.w200),
                        textAlign: TextAlign.end,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          for (int i = 0; i < obj3.length; i++)
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      obj3[i]['percentage'] ?? '',
                                      style: TextStyle(
                                        fontFamily: 'myfont',
                                        color: Color(0xff161A30),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      obj3[i]['object'] ?? '',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    Checkbox(
                                      value: isCheckedList3[i],
                                      onChanged: (value) {
                                        setState(() {
                                          isCheckedList3[i] = value ?? false;
                                        });
                                      },
                                      activeColor: primaryColor,
                                      checkColor: Colors.white,
                                    ),
                                    Spacer(),
                                    Text(
                                      'تـم تـحـقـيـق الـهـدف',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Color(0xffebffe5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        '-: الـمـشـاكـل الـصـحـيـة -',
                        style: TextStyle(
                            color: primaryColor,
                            fontFamily: 'myfont',
                            fontSize: 25,
                            fontWeight: FontWeight.w200),
                        textAlign: TextAlign.end,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          for (int i = 0; i < obj4.length; i++)
                            Column(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Text(
                                      obj4[i]['percentage'] ?? '',
                                      style: TextStyle(
                                        fontFamily: 'myfont',
                                        color: Color(0xff161A30),
                                        fontSize: 20,
                                      ),
                                    ),
                                    Spacer(),
                                    Text(
                                      obj4[i]['object'] ?? '',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 20,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Spacer(),
                                    Checkbox(
                                      value: isCheckedList4[i],
                                      onChanged: (value) {
                                        setState(() {
                                          isCheckedList4[i] = value ?? false;
                                        });
                                      },
                                      activeColor: primaryColor,
                                      checkColor: Colors.white,
                                    ),
                                    Spacer(),
                                    Text(
                                      'تـم تـحـقـيـق الـهـدف',
                                      style: TextStyle(
                                        color: Color(0xff352F44),
                                        fontFamily: 'myfont',
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                )
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
