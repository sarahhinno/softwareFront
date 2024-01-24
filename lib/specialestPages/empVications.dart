import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:software/theme.dart';

class vications extends StatefulWidget {
  @override
  _vicationsState createState() => _vicationsState();
}

class _vicationsState extends State<vications> {
  List<Map<String, String>> tableData = [
    {"date": "20/10/2018", "reason": "مـرضـية"},
    {"date": "16/03/2019", "reason": "مـرضـية"},
    {"date": "20/10/2018", "reason": "مـرضـية"},
    {"date": "16/03/2019", "reason": "مـرضـية"},
    {"date": "20/10/2018", "reason": "مـرضـية"},
    {"date": "16/03/2019", "reason": "مـرضـية"},
    {"date": "20/10/2018", "reason": "مـرضـية"},
    {"date": "16/03/2019", "reason": "مـرضـية"},
    {"date": "20/10/2018", "reason": "مـرضـية"},
  ];
  String _formattedDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  bool _isTextFieldEnabled = false;
  bool dates = false;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData.light().copyWith(
            primaryColor: Color(0xff6f35a5),
            hintColor: Color(0xff6f35a5),
            colorScheme: ColorScheme.light(primary: Color(0xff6f35a5)),
            buttonTheme: ButtonThemeData(textTheme: ButtonTextTheme.primary),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      String formattedDate = DateFormat('yyyy-MM-dd').format(picked);
      setState(() {
        dates = true;

        selectedDate = picked;
        _formattedDate = formattedDate;
      });
    }
  }

  void _showDialog(BuildContext context) {
    //String formattedDate = DateFormat('yyyy-MM-dd').format(selectedDate);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'تـقـديـم طـلـب إجـازة ',
            style: TextStyle(
              fontFamily: 'myfont',
              color: Color(0xff6f35a5),
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          content: Container(
            height: 240,
            width: 350,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                SizedBox(width: 10),
                Text(
                  'سـبـب الإجـازة    ',
                  style: TextStyle(fontFamily: 'myfont', fontSize: 20),
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ' ',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(29.0),
                        borderSide: BorderSide(
                            //  color: Color(0xff6f35a5),
                            ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'تـاريـخ الإجـازة',
                  style: TextStyle(fontFamily: 'myfont', fontSize: 20),
                ),
                Row(
                  //      crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () => _selectDate(context),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff6f35a5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0),
                        ),
                      ),
                      child: Icon(Icons.calendar_month),
                    ),
                    SizedBox(width: 95),
                    Text(
                      _formattedDate,
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(
                              'تأكيد الطلب',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff6f35a5),
                                fontWeight: FontWeight.bold,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            content: Text(
                              ' تـم إرسـال طـلـبـك بـنـجـاح',
                              style: TextStyle(
                                fontFamily: 'myfont',
                                color: Color(0xff6f35a5),
                                fontWeight: FontWeight.w100,
                              ),
                              textAlign: TextAlign.center,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: Text(
                                  'تــم',
                                  style: TextStyle(
                                      fontFamily: 'myfamily',
                                      fontSize: 20,
                                      color: Color(0xff6f35a5)),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff6f35a5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                    child: Text(
                      'تـأكـيـد الـطـلـب',
                      style: TextStyle(fontFamily: 'myfont', fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                'تــم',
                style: TextStyle(
                    fontFamily: 'myfont',
                    fontSize: 20,
                    color: Color(0xff6f35a5)),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff6f35a5),
        title: Text(
          'الإجـازات',
          style: TextStyle(fontFamily: 'myfont'),
        ),
      ),
      body: Container(
        width: size.width,
        height: size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '10',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 100),
                      Text(
                        'عـدد الإجـازات الـكـلـي',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      ),
                    ]),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Color(0xff6f35a5),
                  indent: 50.0, // Set the starting padding
                  endIndent: 50.0, // Set the ending padding
                ),
                SizedBox(height: 5),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '10',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 80),
                      Text(
                        'عـدد الإجـازات الـمـترحـلـة',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      ),
                    ]),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Color(0xff6f35a5),
                  indent: 50.0,
                  endIndent: 50.0,
                ),
                SizedBox(height: 5),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        '10',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(width: 90),
                      Text(
                        'عـدد الإجـازات الـمـبـقـيـة',
                        style: TextStyle(
                            fontFamily: 'myfont',
                            fontSize: 20,
                            fontWeight: FontWeight.w100),
                      ),
                    ]),
                Divider(
                  height: 1.0,
                  thickness: 1.0,
                  color: Color(0xff6f35a5),
                  indent: 50.0, // Set the starting padding
                  endIndent: 50.0, // Set the ending padding
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _showDialog(context),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xff6f35a5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(29.0),
                    ),
                  ),
                  child: Text('تـقـديـم طـلـب إجـازة ',
                      style: TextStyle(
                          fontFamily: 'myfont',
                          fontSize: 20,
                          fontWeight: FontWeight.w100)),
                ),
                SizedBox(height: 30),
                Text('تـفـاصـيـل الإجـازات',
                    style: TextStyle(
                        fontFamily: 'myfont',
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                DataTable(
                  decoration: BoxDecoration(
                    color: Color(0xFFF1E6FF),
                  ),
                  border: TableBorder.all(
                    color: Color(0xff6f35a5),
                  ),
                  columns: [
                    DataColumn(
                        label: Text('تاريخ الإجازة',
                            style:
                                TextStyle(fontFamily: 'myfont', fontSize: 20),
                            textAlign: TextAlign.center)),
                    DataColumn(
                        label: Text('سبب الإجازة',
                            style:
                                TextStyle(fontFamily: 'myfont', fontSize: 20),
                            textAlign: TextAlign.center)),
                  ],
                  rows: tableData
                      .map(
                        (data) => DataRow(
                          cells: [
                            DataCell(Text(data['date'] ?? '',
                                style: TextStyle(
                                    fontFamily: 'myfont', fontSize: 20),
                                textAlign: TextAlign.center)),
                            DataCell(Text(data['reason'] ?? '',
                                style: TextStyle(
                                    fontFamily: 'myfont', fontSize: 20),
                                textAlign: TextAlign.center)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
