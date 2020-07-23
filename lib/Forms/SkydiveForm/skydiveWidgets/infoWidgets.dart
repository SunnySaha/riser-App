import 'package:dropdownfield/dropdownfield.dart';
import 'package:flutter/material.dart';

class InfoWidgets extends StatefulWidget {
  @override
  _InfoWidgetsState createState() => _InfoWidgetsState();
}

class _InfoWidgetsState extends State<InfoWidgets> {
  TextEditingController dzController = TextEditingController();
  TextEditingController aircraftController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> formData = {
    'Dz': '',
    'Aircraft': '',
  };
  List<String> dz = [
    'Skydive Mossel Bay',
    'Skydive Robertson',
    'Skydive Rustenberg',
    'JSC',
    'Skydive Mother City',
  ];
  List<String> aircraft = [
    'Cessna 206',
    'Atlas Angel',
    'PAC 750',
    'Cessna 182',
  ];

  // List<String> _jumpType = [
  //   'Fun Jump',
  //   'Coaching Jump',
  //   'Training Jump',
  //   'Competition Jump',
  //   'Specialized Camera',
  //   'Tandem',
  //   'Demo',
  //   'Static Line',
  //   'AFF',
  // ];
  var _currentJumpSelected = '';
  var _currentJumpSelected2 = '';
  var _currentJumpSelected3 = '';

  var _isTrue = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidate: false,
      child: Container(
        // color: Colors.red,
        child: Column(
          children: <Widget>[
            Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    ///////////   Number Field  ///////////
                    Padding(
                      padding: const EdgeInsets.fromLTRB(2, 8, 2, 8),
                      child: Text(
                        "400 ",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 40,
                            fontFamily: 'Roboto',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    ///////////////////   Date Field  ///////////
                    Container(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "22/11/2017",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                // Container(
                //   alignment: Alignment.centerRight,
                //   child: Icon(
                //     Icons.outlined_flag,
                //     size: 60,
                //     color: Colors.red.withOpacity(0.9),
                //   ),
                // )
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    // color: Colors.yellow,
                    // width: MediaQuery.of(context).size.width / 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //////////   Location  Field  //////////
                        locationRow(),
                        SizedBox(height: 8),

                        ////////////////////   Aircraft Field  /////////
                        aircraftContainer(),
                        SizedBox(height: 4),

                        //////////////////////   Jump Type Field  /////////
                        jumpTypeContainer(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row locationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 2, top: 2),
            child: Image.asset(
              'assets/img/locationIcon.png',
              height: 30,
              // width: 60,
              fit: BoxFit.contain,
            )
            // child: Icon(
            //   Icons.location_on,
            //   size: 15,
            // ),
            ),
        Padding(
          padding: const EdgeInsets.only(top: 3),
          child: Text(
            "DZ :  ",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 15,
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Container(
            //constraints: BoxConstraints.expand(),
            child: DropDownField(
                value: formData['Dz'],
                //icon: Icon(Icons.location_city),
                required: false,
                hintText: 'Select',
                hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                //labelText: 'dz',
                items: dz,
                strict: true,
                itemsVisibleInDropdown: 3,
                setter: (dynamic newValue) {
                  setState(() {
                    formData['Dz'] = newValue;
                    print(formData[dz]);
                  });
                }),
          ),
        ),
      ],
    );
  }

  Container aircraftContainer() {
    return Container(
      padding: EdgeInsets.only(left: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              "Aircraft :  ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),
            ),
          ),
          // Text(
          //   ":  ",
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,
          //   style: TextStyle(
          //       fontSize: 15,
          //       fontFamily: 'Roboto',
          //       color: Colors.black87,
          //       fontWeight: FontWeight.bold),
          // ),
          Expanded(
            child: Container(
              child: DropDownField(
                  value: formData['Aircraft'],
                  //icon: Icon(Icons.location_city),
                  required: false,
                  hintText: 'Select',
                  hintStyle:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                  //labelText: 'dz',
                  items: aircraft,
                  strict: true,
                  itemsVisibleInDropdown: 4,
                  setter: (dynamic newValue) {
                    setState(() {
                      formData['Aircraft'] = newValue;
                      print(newValue);
                    });
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Container jumpTypeContainer() {
    return Container(
      padding: EdgeInsets.only(left: 12, top: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 3),
                child: Text(
                  "Jump Type :  ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.fromLTRB(5, 3, 5, 2),
                      decoration: BoxDecoration(
                          // border: Border. .fromBorderSide(BorderSide(color: Colors.grey))
                          // color: Colors.grey[200],
                          // borderRadius: BorderRadius.all(Radius.circular(1))
                          ),
                      child: GestureDetector(
                          onTap: () {
                            _showJumpTypeDialog();
                          },
                          child: (_currentJumpSelected != '')
                              ? Text(
                                  _currentJumpSelected,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Colors.black54,
                                      //height: 1.6,
                                      decoration: TextDecoration.underline,
                                      // decorationStyle:
                                      //     TextDecorationStyle.solid,
                                      // decorationColor:
                                      //     Colors.black.withOpacity(0.7),
                                      fontWeight: FontWeight.w500),
                                )
                              : Text('Add new Jump Type',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Roboto',
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w500))),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 3),
                      padding: EdgeInsets.fromLTRB(5, 3, 5, 10),
                      // decoration: (_currentJumpSelected2 != '')
                      //         ?BoxDecoration(
                      //     color: Colors.grey[200],
                      //     borderRadius: BorderRadius.all(Radius.circular(1)))
                      //     :BoxDecoration(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                _currentJumpSelected2,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Roboto',
                                    color: Colors.black54,
                                    // height: 1.0,
                                    decoration: TextDecoration.underline,
                                    // decorationStyle: TextDecorationStyle.solid,
                                    // decorationColor: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(width: 5),
                              Text(
                                _currentJumpSelected3,
                                maxLines: 4,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Roboto',
                                    color: Colors.black54,
                                    // height: 1.0,
                                    //decoration: TextDecoration.underline,
                                    // decorationStyle: TextDecorationStyle.solid,
                                    // decorationColor: Colors.black.withOpacity(0.7),
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          // Divider(endIndent: 10)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //             //             // children:
              //             //             //     _listOfExpansions.map((expansionTile) => expansionTile).toList(),
              //             //           ),
              //             //         ),

              //             //       ],
              //             //     ),
              //             //   ),
              //             // width: 100,
              //             //padding: EdgeInsets.only(right: 25.0),
              //             //     child: DropdownButton<String>(
              //             //   value: _currentJumpSelected,
              //             //   iconSize: 30,
              //             //   iconEnabledColor: Colors.black54,
              //             //   iconDisabledColor: Colors.black54,
              //             //   isExpanded: true,
              //             //   // isDense: true,
              //             //   underline: Container(
              //             //     height: 2,
              //             //     color: Color(0XFFF2F4F7),
              //             //   ),

              //             //   onChanged: (String newValue) {
              //             //     _onDropdownSelectedJumpType(newValue);
              //             //   },

              //             //   hint: Text('Add new Jump Type',
              //             //       style: TextStyle(
              //             //           fontSize: 12,
              //             //           fontFamily: 'Roboto',
              //             //           color: Colors.black54,
              //             //           fontWeight: FontWeight.w400)),
              //             //   items: _jumpType.map<DropdownMenuItem<String>>((String value) {
              //             //     return DropdownMenuItem<String>(
              //             //       value: value,
              //             //       child: Text(value,
              //             //           style: TextStyle(
              //             //               fontSize: 14.5,
              //             //               fontFamily: 'Roboto',
              //             //               color: Colors.black54,
              //             //               fontWeight: FontWeight.w500)),
              //             //     );
              //             //   }).toList(),
              //             // )
              ///////   Dropdown Button For MonthSelection End ////////
            ],
          ),
        ],
      ),
    );
  }

  Future<bool> buildFutures() async {
    return true;
  }

  void _showJumpTypeDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Color(0XFFF2F4F7),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            contentPadding: EdgeInsets.fromLTRB(8, 5, 5, 5),
            content: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                //height: 200,
                // alignment: Alignment.centerLeft,
                padding: EdgeInsets.only(left: 2.0, bottom: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //////  Text Container  //////
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(top: 10),
                      child: Text('Add new Jump Type',
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.black87,
                              fontWeight: FontWeight.bold)),
                    ),
                    //////  Text Container  //////
                    Container(
                        padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                        //color: Colors.red,
                        //     width: MediaQuery.of(context).size.width / 1.3,
                        //     child: Row(
                        //       children: <Widget>[
                        //         Expanded(
                        child: ListView(
                          physics: BouncingScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                          children: <Widget>[
                            ListTile(
                              onTap: () {
                                setState(() {
                                  _currentJumpSelected = 'Fun Jump';
                                  _currentJumpSelected2 = '';
                                  _currentJumpSelected3 = '';
                                  print(_currentJumpSelected);
                                  print(_currentJumpSelected2);
                                  Navigator.pop(context);
                                });
                              },
                              title: Text("Fun Jump"),
                              //children: <Widget>[Text("children 1"), Text("children 2")],
                            ),
                            ExpansionTile(
                              title: Text("Coaching Jump"),
                              children: <Widget>[
                                  ListView(
                                  physics: BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  children: <Widget>[
                                    ListTile(
                                      title: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            _currentJumpSelected = 'Coaching Jump';
                                            print(_currentJumpSelected);
                                            _currentJumpSelected2 = 'Student';
                                            _currentJumpSelected3 = '';
                                            print(_currentJumpSelected2);
                                            Navigator.pop(context);
                                          });
                                        },
                                        child: Text("Student")),
                                    ),
                                    ListTile(
                                      title: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'Coaching Jump';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'Coach';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Coach"),
                                    ),
                                    ),
                                    ExpansionTile(
                                      title:GestureDetector(
                                      onTap: () {
                                        // setState(() {
                                        //   _showLicenceDialog();
                                        //  // Navigator.pop(context);
                                        // });
                                      },
                                      child: Text("Licence Progression"),
                                    ),
                                    children: <Widget>[
                                      licenceContainer(),
                                    ]
                                    ),
                                  ],
                                )
                              ],
                            ),
                            ListTile(
                              title: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currentJumpSelected = 'Training Jump';
                                    _currentJumpSelected2 = '';
                                    _currentJumpSelected3 = '';
                                    print(_currentJumpSelected);
                                    print(_currentJumpSelected2);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Training Jump"),
                              ),
                              // children: <Widget>[Text("children 3"), Text("children 4")],
                            ),
                            ListTile(
                              title: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currentJumpSelected = 'Competition Jump';
                                    _currentJumpSelected2 = '';
                                    _currentJumpSelected3 = '';
                                    print(_currentJumpSelected);
                                    print(_currentJumpSelected2);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Competition Jump"),
                              ),
                              //children: <Widget>[Text("children 3"), Text("children 4")],
                            ),
                            ExpansionTile(
                              title: Text("Specialized Camera"),
                              children: <Widget>[
                                Container(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'Specialized Camera';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'Tandem';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Tandem"),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'Specialized Camera';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'AFF';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("AFF"),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            ExpansionTile(
                              title: Text("Tandem"),
                              children: <Widget>[
                                Container(
                                    // padding: EdgeInsets.only(left: 18),
                                    // alignment: Alignment.topLeft,
                                    // //color: Colors.red,
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'Tandem';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'Passenger';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Passenger"),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'Tandem';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'Instructor';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Instructor"),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                )),
                              ],
                            ),
                            ListTile(
                              title: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currentJumpSelected = 'Demo';
                                    _currentJumpSelected2 = '';
                                    print(_currentJumpSelected);
                                    _currentJumpSelected3 = '';
                                    print(_currentJumpSelected2);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Demo"),
                              ),
                              // children: <Widget>[Text("children 3"), Text("children 4")],
                            ),
                            ListTile(
                              title: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _currentJumpSelected = 'Static Line';
                                    _currentJumpSelected2 = '';
                                    _currentJumpSelected3 = '';
                                    print(_currentJumpSelected);
                                    print(_currentJumpSelected2);
                                    Navigator.pop(context);
                                  });
                                },
                                child: Text("Static Line"),
                              ),
                              //children: <Widget>[Text("children 3"), Text("children 4")],
                            ),
                            ExpansionTile(
                              title: Text("AFF"),
                              children: <Widget>[
                                Container(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'AFF';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'Student';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Student"),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _currentJumpSelected = 'AFF';
                                          print(_currentJumpSelected);
                                          _currentJumpSelected2 = 'Instructor';
                                          _currentJumpSelected3 = '';
                                          print(_currentJumpSelected2);
                                          Navigator.pop(context);
                                        });
                                      },
                                      child: Text("Instructor"),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                  ],
                                )),
                              ],
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
          );
        });
  }

  Container licenceContainer() => Container(
    padding: EdgeInsets.only(bottom: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            setState(() {
              _currentJumpSelected = 'Coaching Jump';
              print(_currentJumpSelected);
              _currentJumpSelected2 = 'Licence Progression';
              _currentJumpSelected3 = 'A';
              print(_currentJumpSelected2);
              print('_currentJumpSelected3 = ' + _currentJumpSelected3);
              Navigator.pop(context);
            });
          },
          child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border:
                      Border.all(width: 2, color: Colors.grey)),
              child: Text('A')),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _currentJumpSelected = 'Coaching Jump';
              print(_currentJumpSelected);
              _currentJumpSelected2 = 'Licence Progression';
              _currentJumpSelected3 = 'B';
              print(_currentJumpSelected2);
              print('_currentJumpSelected3 = ' + _currentJumpSelected3);
              Navigator.pop(context);
            });
          },
          child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Text('B')),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _currentJumpSelected = 'Coaching Jump';
              print(_currentJumpSelected);
              _currentJumpSelected2 = 'Licence Progression';
              _currentJumpSelected3 = 'C';
              print(_currentJumpSelected2);
              print('_currentJumpSelected3 = ' + _currentJumpSelected3);
              Navigator.pop(context);
            });
          },
          child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Text('C')),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              _currentJumpSelected = 'Coaching Jump';
              print(_currentJumpSelected);
              _currentJumpSelected2 = 'Licence Progression';
              _currentJumpSelected3 = 'D';
              print(_currentJumpSelected2);
              print('_currentJumpSelected3 = ' + _currentJumpSelected3);
              Navigator.pop(context);
            });
          },
          child: Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                  border: Border.all(width: 2, color: Colors.grey)),
              child: Text('D')),
        ),
      ],
    ),
  );

/////////////////////////      Info Container End    ////////////////////////////////
}
