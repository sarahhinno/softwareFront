import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:software/theme.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'dart:io';
import 'dart:typed_data';
import 'package:path_provider/path_provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:document_file_save_plus/document_file_save_plus.dart';
import 'package:pdf/pdf.dart' as pdfLib;
import 'package:flutter/services.dart' show rootBundle;
import 'package:open_file/open_file.dart';

class report extends StatefulWidget {
  @override
  _reportState createState() => _reportState();
}

class _reportState extends State<report> {
  String name = 'سـاره خـالـد ولـيـد حـنـو';
  String age = '15';
  String date = '21/1/2024';
  String svalueeLevel = 'الـعـلاج الـوظـيـفـي';
  List<String> level = [
    'الـعـلاج الـوظـيـفـي',
    'عـلاج الـنـطـق والـلـغـة ',
    'الـعـلاج الـسـلـوكـي'
  ];
  String selectedValueoptions1 = 'الـتـركـيـز والانـتـبـاه';
  List<String> options1 = [
    'الـتـركـيـز والانـتـبـاه',
    'الـمـهـارات الادراكـيـة',
    'الـتـواصـل الـبـصـري',
    ' الـمـشـاكـل الـحـسـيـة',
    'الـمـهـارات الـحـيـاتـيـة',
  ];
  String selectedValueoptions2 = 'الـلـغـة الاسـتـقـبـالـيـة';
  List<String> options2 = [
    'الـلـغـة الاسـتـقـبـالـيـة',
    'الـلـغـة الـتـعـبـيـريـة',
    'الأخـطـاء الـلـفـظـيـة',
    'أعـضـاء الـنـطـق',
  ];
  String selectedValueoptions3 = 'الاسـتـجـابـة';
  List<String> options3 = [
    'الاسـتـجـابـة',
    'الانـفـعـالات والـتـعـبـيـر عـنـهـا',
  ];
  String selectedValue = 'الاسـتـجـابـة';
  List<String> values = [
    '---------------------------------------------------------------------------------------------------------',
    '  **********************************************************************************************************',
  ];
  Future<void> saveFile() async {
    final pdf = pw.Document();
    //  var data = await rootBundle.load("fonts/IRANSansWeb(FaNum)_Bold.ttf");
    // final fontt = pw.Font.ttf(data);
    final ByteData fontDatabold =
        await rootBundle.load('fonts/Amiri-BoldItalic.ttf');
    final pw.Font myfontbold = pw.Font.ttf(fontDatabold);
    final ByteData fontData = await rootBundle.load('fonts/Amiri-Italic.ttf');
    final pw.Font myfont = pw.Font.ttf(fontData);
    pdf.addPage(
      pw.Page(
        build: (pw.Context context) {
          return pw.Container(
            child: pw.Column(
              children: [
                pw.SizedBox(height: 20),
                pw.Row(
                  //     crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      date,
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      ' الـتـاريـخ',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                        //  TextDirection:  pw.TextDirection.rtl,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.Row(
                  //  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      'جـمـعـيـة سـنـد لـذوي الاحـتـيـاجـات الـخـاصـة',
                      style: pw.TextStyle(
                        font: myfontbold,

                        fontSize: 20,
                        //    fontWeight:pw.FontWeight.w400 ,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      '    مــن ',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        // fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.Row(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      name,
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        // fontWeight: FontWeight.w200,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      '  الاســـم',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.Row(
                  //   crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    pw.Spacer(),
                    pw.Text(
                      age,
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        // fontWeight: FontWeight.w200,
                      ),
                    ),
                    pw.SizedBox(width: 20),
                    pw.Text(
                      '   الـعـمــر',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.right,
                    ),
                    pw.SizedBox(width: 20),
                  ],
                ),
                pw.SizedBox(height: 20),
                pw.Center(
                    child: pw.Text(
                  'الـمـوضـوع تـقـريـر عـن حـالـة الـطـفـل',
                  style: pw.TextStyle(
                    font: myfontbold,
                    fontSize: 20,
                    //  fontWeight: FontWeight.bold,
                  ),
                  textDirection: pw.TextDirection.rtl,
                  textAlign: pw.TextAlign.right,
                )),
                pw.Text(
                  'تـحـيـة وبـعـد ',
                  style: pw.TextStyle(
                    font: myfontbold,
                    fontSize: 20,
                    //   fontWeight: FontWeight.bold,
                  ),
                  textDirection: pw.TextDirection.rtl,
                  textAlign: pw.TextAlign.right,
                  //  textAlign: TextAlign.end,
                ),
                pw.Container(
                  // pw.padding:pw. EdgeInsets.all(20),
                  child: pw.Column(
                    children: [
                      pw.Text(
                        ' نـعـلـمـكـم بأن الـطـفـل $name الـبـالـغ مـن العـمـر $age   سـنـوات',
                        style: pw.TextStyle(
                          font: myfontbold,
                          fontSize: 20,
                          // fontWeight: FontWeight.w100,
                        ),
                        textDirection: pw.TextDirection.rtl,
                        textAlign: pw.TextAlign.right,
                      ),
                      pw.Text(
                        '، قد حضر إلـى الـجـمـعـيـة لإجـراء تـقـيـيـم لـحـالـتـه وبـنـاء عـلـى ذلـك تـم ادراجـه فـي الـجـمـعـيـة لـلـعـمـل مـعـه عـلـى مـراحـل تـأهـيـلـيـة وتـربـويـة ضـمـن خـطـة الـعـمـل مـن قـبـل فـريـق مـتـخـصـص ',
                        style: pw.TextStyle(
                          font: myfontbold,
                          fontSize: 20,
                          //  fontWeight: FontWeight.w100,
                        ),
                        textDirection: pw.TextDirection.rtl,
                        textAlign: pw.TextAlign.right,
                      ),
                      pw.SizedBox(height: 10),
                      pw.Text(
                        'وبـعـد مـتـابـعـة حـالـة الـطـفـل والـعـمـل مـعـه ضـمـن جـلـسـات فـرديـة مـتـخـصـصـة تـم الـوصـول مـعـه إلـى مـراحـل تـأهـيـلـيـة جـيـدة فـي الـنـواحـي الـتالـيـة ',
                        style: pw.TextStyle(
                          font: myfontbold,
                          fontSize: 20,
                          //  fontWeight: FontWeight.w100,
                        ),
                        textDirection: pw.TextDirection.rtl,
                        textAlign: pw.TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Container(
          child: pw.Column(children: [
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Container(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'الـعـلاج الـوظـيـفـي',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        //  fontWeight: FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.end,
                    ),
                    pw.SizedBox(height: 20),
                    for (int j = 0; j < options1.length; j++)
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            options1[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 20,
                              // fontWeight: FontWeight.bold,
                              //   color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                          for (int k = 0; k < values.length; k++)
                            pw.Text(values[k]),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ]));
    }));
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Container(
          child: pw.Column(children: [
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Container(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'عـلاج الـنـطـق والـلـغـة ',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.end,
                    ),
                    pw.SizedBox(height: 20),
                    for (int j = 0; j < options2.length; j++)
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            options1[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                              //  color: Colors.red
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                          for (int k = 0; k < values.length; k++)
                            pw.Text(values[k]),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
      ]));
    }));
    pdf.addPage(pw.Page(build: (pw.Context context) {
      return pw.Container(
          child: pw.Column(children: [
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Container(
                child: pw.Column(
                  crossAxisAlignment: pw.CrossAxisAlignment.end,
                  children: [
                    pw.Text(
                      'الـعـلاج الـسـلـوكـي',
                      style: pw.TextStyle(
                        font: myfontbold,
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                      textDirection: pw.TextDirection.rtl,
                      textAlign: pw.TextAlign.end,
                    ),
                    pw.SizedBox(height: 20),
                    for (int j = 0; j < options3.length; j++)
                      pw.Column(
                        crossAxisAlignment: pw.CrossAxisAlignment.end,
                        children: [
                          pw.Text(
                            options1[j],
                            style: pw.TextStyle(
                              font: myfontbold,
                              fontSize: 20,
                              fontWeight: pw.FontWeight.bold,
                            ),
                            textDirection: pw.TextDirection.rtl,
                            textAlign: pw.TextAlign.end,
                          ),
                          for (int k = 0; k < values.length; k++)
                            pw.Text(values[k]),
                        ],
                      )
                  ],
                ),
              )
            ],
          ),
        ),
        pw.Container(
          padding: pw.EdgeInsets.all(10),
          width: double.infinity,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.end,
            children: [
              pw.Text(
                'الـتـوصـيـات',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
              pw.SizedBox(height: 20),
              pw.Text(
                '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
            ],
          ),
        ),
                      pw.SizedBox(height: 40),

        pw.Container(
          child: pw.Column(
            children: [
              pw.Text(
                'نـابـلـس - رفـيـديـا- عـمـارة أبـو الـروح كـلـبـونـة',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
              pw.Text(
                ' الـهـاتـف : 092342001/ جـوال :0595883338',
                style: pw.TextStyle(
                  font: myfontbold,
                  fontSize: 15,
                  // fontWeight: FontWeight.bold,
                ),
                textAlign: pw.TextAlign.end,
                textDirection: pw.TextDirection.rtl,
              ),
            ],
          ),
        ),
      ]));
    }));
    final directory = await getExternalStorageDirectory();
    final file = File("${directory?.path}/$name.pdf");

    if (directory == null) {
      // Handle the case where downloadsPath returns null
      print('Error: Downloads directory is null.');
      return;
    }

    try {
      final pdfBytes = await pdf.save();
      await file.writeAsBytes(pdfBytes.toList());

      print('PDF saved successfully at: ${file.path}');

      // Check if the file exists after saving
      if (await file.exists()) {
        print('File exists at: ${file.path}');

        // Open the saved PDF file
        await OpenFile.open(file.path);
      } else {
        print('File does not exist.');
      }
    } catch (e) {
      print('Error saving or opening PDF: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: primaryColor,
          title: Row(
            children: <Widget>[
              Text(
                'الـتـقـريـر الـطـبـي',
                style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: primaryLightColor),
              ),
              SizedBox(width: 60),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: primaryColor, // Set the background color here
                ),
                onPressed: saveFile,
                child: Text(
                  ' pdf تـحـويـل إلـى  ',
                  style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: primaryLightColor),
                ),
              )
            ],
          )),
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            //  crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              SizedBox(height: 20),
              Row(
                //     crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    date,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ': الـتـاريـخ',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    'جـمـعـيـة سـنـد لـذوي الاحـتـيـاجـات الـخـاصـة',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':     مــن ',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':  الاســـم',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Spacer(),
                  Text(
                    age,
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    ':   الـعـمــر',
                    style: TextStyle(
                      fontFamily: 'myfont',
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 20),
                ],
              ),
              SizedBox(height: 20),
              Center(
                  child: Text(
                'الـمـوضـوع تـقـريـر عـن حـالـة الـطـفـل',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Text(
                'تـحـيـة وبـعـد ',
                style: TextStyle(
                  fontFamily: 'myfont',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.end,
              ),
              Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Text(
                      ' نـعـلـمـكـم بأن الـطـفـل $name الـبـالـغ مـن العـمـر $age   سـنـوات',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      '، قد حضر إلـى الـجـمـعـيـة لإجـراء تـقـيـيـم لـحـالـتـه وبـنـاء عـلـى ذلـك تـم ادراجـه فـي الـجـمـعـيـة لـلـعـمـل مـعـه عـلـى مـراحـل تـأهـيـلـيـة وتـربـويـة ضـمـن خـطـة الـعـمـل مـن قـبـل فـريـق مـتـخـصـص ',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'وبـعـد مـتـابـعـة حـالـة الـطـفـل والـعـمـل مـعـه ضـمـن جـلـسـات فـرديـة مـتـخـصـصـة تـم الـوصـول مـعـه إلـى مـراحـل تـأهـيـلـيـة جـيـدة فـي الـنـواحـي الـتالـيـة ',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        fontWeight: FontWeight.w100,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'الـعـلاج الـوظـيـفـي',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options1.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                for (int k = 0; k < values.length; k++)
                                  Text(values[k]),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'عـلاج الـنـطـق والـلـغـة ',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options2.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                for (int k = 0; k < values.length; k++)
                                  Text(values[k]),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'الـعـلاج الـسـلـوكـي',
                            style: TextStyle(
                              fontFamily: 'myfont',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.end,
                          ),
                          for (int j = 0; j < options3.length; j++)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: <Widget>[
                                Text(
                                  options1[j],
                                  style: TextStyle(
                                      fontFamily: 'myfont',
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red),
                                  textAlign: TextAlign.end,
                                ),
                                for (int k = 0; k < values.length; k++)
                                  Text(values[k]),
                              ],
                            )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      'الـتـوصـيـات',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                      //textDirection:TextDirection.rtl ,
                    ),
                    Text(
                        '++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++'),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      'نـابـلـس - رفـيـديـا- عـمـارة أبـو الـروح كـلـبـونـة',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                    Text(
                      ' الـهـاتـف : 092342001/ جـوال :0595883338',
                      style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 15,
                        // fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
