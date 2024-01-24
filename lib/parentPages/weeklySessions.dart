import 'package:flutter/material.dart';
import 'package:software/theme.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/parentPages/detailsOfSessions.dart';

class wSession extends StatefulWidget {
  @override
  _wSessionState createState() => _wSessionState();
}

class _wSessionState extends State<wSession> {
  int selectedButton = 0;

  int num = 0;
  void _onPressed(BuildContext context, String buttonTextt) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => detailsOfSession(buttonText: buttonTextt),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text(
          "الـجـلـسـات الأسـبـوعـيـة",
          style: TextStyle(
              color: Colors.white,
              fontFamily: 'myFont',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'images/backSessions.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  RoundedButton(
                    color: primaryLightColor,
                    text: "ســلــوكــي",
                    textColor: primaryColor,
                    press: () {
                      selectedButton = 1;
                      _onPressed(context, "ســلــوكــي");
                    },
                  ),
                  // SizedBox(height: 5),

                  RoundedButton(
                    color: primaryLightColor,
                    text: "وظــيــفــي",
                    textColor: primaryColor,
                    press: () {
                      selectedButton = 2;
                      _onPressed(context, "وظــيــفــي");
                    },
                  ),
                  //   SizedBox(height: 5),

                  RoundedButton(
                    color: primaryLightColor,
                    text: "تــربـيـة خـاصـة",
                    textColor: primaryColor,
                    press: () {
                      selectedButton = 3;
                      _onPressed(context, "تــربـيـة خـاصـة");
                    },
                  ),
                  //     SizedBox(height: 5),

                  RoundedButton(
                    color: primaryLightColor,
                    text: "عــلاج طــبـيـعي",
                    textColor: primaryColor,
                    press: () {
                      selectedButton = 4;
                      _onPressed(context, "عــلاج طــبـيـعي");
                    },
                  ),
                  //  SizedBox(height: 1),

                  RoundedButton(
                    color: primaryLightColor,
                    text: "الـلغـة و نــطــق",
                    textColor: primaryColor,
                    press: () {
                      selectedButton = 5;
                      _onPressed(context, "الـلغـة و نــطــق");
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
