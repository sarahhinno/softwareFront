import 'package:flutter/material.dart';
import 'package:software/adminPages/chat.dart';
import 'package:software/adminPages/dailyScheduale.dart';
import 'package:software/auuth/signup.dart';
import 'package:software/components/rounded_button.dart';
import 'package:software/auuth/login.dart';
import 'package:software/theme.dart';

class welcome extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
   return Scaffold(
    body: Container(
      height: size.height,
      width: size.width,
      child: Stack(children: [
        Positioned(
          top: 0 ,
          left: 0,
          child: Image.asset("images/welcome_top_left.png")),
          Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset("images/welcome_bottom_right.png",height: size.width*0.8,)),

            Container(
              width: double.infinity,
              height: size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                SizedBox(height: 200,),
                Image.asset("images/welcomePicture.png",width: size.width*0.8,),
                SizedBox(height: 40,),
                RoundedButton(
                  text: "تســجـيل الدخـول",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return Login();}));
                  } ,
                ),
                SizedBox(height: 25,),
                RoundedButton(
                  color: primaryLightColor,
                  textColor: Colors.black,
                  text: "إنـشـــاء حـســاب",
                  press: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context){return signup();}));
                  } ,
                ),
               ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return dailySchedual();
              })
              );
            },
            child: Text('admin Home'),
          )

            ]),
            )
          

      ]),
    ),

   );
  }

}