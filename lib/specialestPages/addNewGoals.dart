import 'package:flutter/material.dart';
import 'package:software/components/roundedTextFeild2.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/components/rounded_textField.dart';
import 'package:software/theme.dart';

class newGoals extends StatefulWidget {
  @override
  _newGoalsState createState() => _newGoalsState();
}

class _newGoalsState extends State<newGoals> {
  List<String> selectedValues = ['الـمـهـارات الإدراكـيـة '];
  List<String> myItems = [
    'الـتـركـيـز والانـتـبـاه ',
    'الـمـهـارات الإدراكـيـة ',
    'الـتـواصـل الـبـصـري ',
    'الـمـشـاكـل الـصـحـيـة '
  ];

  List<Widget> goalCards = [];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          " إضـافـة أهـداف جـديـدة",
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
              SizedBox(height: 10),
              Column(
                children: [
                  ...goalCards,
                  if (goalCards.isEmpty)
                    Card(
                      color: primaryLightColor,
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<String>(
                                    value: selectedValues.last,
                                    items: myItems.map((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(
                                            fontFamily: 'myfont',
                                            color: Color(0xff161A30),
                                            fontSize: 20,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedValues[
                                            selectedValues.length - 1] = value!;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Spacer(),
                              Text(
                                'إضـافـة هـدف إلـى',
                                style: TextStyle(
                                  fontFamily: 'myfont',
                                  color: Color(0xff161A30),
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              RoundedTextField2(
                                width: 120,
                                child: TextField(
                                  textAlign: TextAlign.right,
                                  decoration: InputDecoration(
                                    hintText: 'الـنـسـبـة',
                                    suffixText: '%',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Spacer(),
                              RoundedTextField2(
                                width: 250,
                                child: TextField(
                                  textAlign: TextAlign.right,
                                  // controller: fnameController,
                                  decoration: InputDecoration(
                                    hintText: 'الـهـدف',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 200,
                            padding: EdgeInsets.only(bottom: 5),
                            child: RoundedButton(
                              color: primaryColor,
                              text: "إضـافـة ",
                              textColor: Colors.white,
                              press: () {
                                showDialog(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return AlertDialog(
                                      content: Text(
                                        'تـمـت إضـافـة الـهـدف',
                                        style: TextStyle(
                                          fontFamily: 'myfont',
                                          color: primaryColor,
                                          fontSize: 20,
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),

              SizedBox(height: 30),
              // SizedBox(height: 20),
              Container(
                child: RoundedButton(
                  color: primaryColor,
                  text: "إضـافـة هـدف جـديـد",
                  textColor: Colors.white,
                  press: () {
                    addNewGoalCard();
                    print('0000000000000000000000000000000');
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void addNewGoalCard() {
    setState(() {
      goalCards.add(
        Card(
          color: primaryLightColor,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: selectedValues.last,
                        items: myItems.map((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff161A30),
                                fontSize: 20,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            selectedValues=myItems;
                               selectedValues.add(value!);
                          //  selectedValues.contains(value);
                          });
                        },
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'إضـافـة هـدف إلـى',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      color: Color(0xff161A30),
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  RoundedTextField2(
                    width: 120,
                    child: TextField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        hintText: 'الـنـسـبـة',
                        suffixText: '%',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Spacer(),
                  RoundedTextField2(
                    width: 250,
                    child: TextField(
                      textAlign: TextAlign.right,
                      // controller: fnameController,
                      decoration: InputDecoration(
                        hintText: 'الـهـدف',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 200,
                padding: EdgeInsets.only(bottom: 5),
                child: RoundedButton(
                  color: primaryColor,
                  text: "إضـافـة ",
                  textColor: Colors.white,
                  press: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          content: Text(
                            'تـمـت إضـافـة الـهـدف',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              color: primaryColor,
                              fontSize: 20,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
