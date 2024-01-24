import 'package:flutter/material.dart';
import 'package:software/DetailsPage.dart';
import 'package:software/adminPages/chart1.dart';
import 'package:software/adminPages/chart3.dart';
import 'package:software/adminPages/report.dart';
import 'package:software/adminPages/showAllChildren.dart';
import 'package:software/adminPages/showAllEmployee.dart';

import 'package:software/adminPages/view.dart';
import 'package:software/parentPages/specialistEvaluation.dart';
// Import the file where SpDetailsPage is defined
import 'package:software/specialestPages/objectives.dart';
import 'package:software/specialestPages/objectivesSp.dart';
import 'package:software/parentPages/weeklySessions.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/adminPages/adminPosts.dart'; // Import the file where SpDetailsPage is defined
import 'package:software/parentPages/viewPosts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late String id;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: <Widget>[
              // ElevatedButton(
              //   onPressed: () {
              //     Navigator.push(context, MaterialPageRoute(builder: (context) {
              //       return charts();
              //     }));
              //   },
              //   child: Text('charts'),
              // ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return adminPosts();
                  }));
                },
                child: Text('admin Posts'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return posts();
                  }));
                },
                child: Text('view Posts'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return goals();
                  }));
                },
                child: Text('objectives'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return view();
                  }));
                },
                child: Text('view'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewChildren();
                  }));
                },
                child: Text('showChildren'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return viewSpecialest();
                  }));
                },
                child: Text('showEmp'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chartOne();
                  }));
                },
                child: Text('chartOne'),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return chartThree();
                  }));
                },
                child: Text('chartThree'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return spEvaluation();
                  }));
                },
                child: Text('spEvaluation'),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return report();
                  }));
                },
                child: Text('report'),
              ),
            ],
          )),
    );
  }
}
