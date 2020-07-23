import 'package:flutter/material.dart';

import '../../../main.dart';

class TextfieldWidgets extends StatefulWidget {
  @override
  _TextfieldWidgetsState createState() => _TextfieldWidgetsState();
}

class _TextfieldWidgetsState extends State<TextfieldWidgets> {
  bool pinValueSwitch = false;
  TextEditingController exitAltitudeController = TextEditingController();
  TextEditingController deploymentController = TextEditingController();
  TextEditingController freefallTimeController = TextEditingController();
  TextEditingController freefallSpeedMaxController = TextEditingController();
  TextEditingController freefallSpeedAvgController = TextEditingController();


  void onPINValueChanged(bool value) {
    setState(() {
      pinValueSwitch = value;
      // if (pinValueSwitch == true) {
      //   _showSetPINDialog();
      // }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5),
      child: Container(
        padding: EdgeInsets.only(left: 12),
        child: Column(
          children: <Widget>[
            //////////////   Switch Button   /////////////
            // Container(
            //   padding: EdgeInsets.only(right: 2, bottom: 5),
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.end,
            //     children: <Widget>[
            //       Switch(
            //         onChanged: onPINValueChanged,
            //         value: pinValueSwitch,
            //         materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            //         activeColor: Colors.white,
            //         activeTrackColor: appColor,
            //         inactiveThumbColor: Colors.black87,
            //         inactiveTrackColor: Colors.grey[400],
            //       ),
            //     ],
            //   ),
            // ),

            //////////////  Exit Altitude   /////////////
            measureContainer("Exit Altitude", exitAltitudeController),
            SizedBox(height: 5),

            //////////////  Deployment Container   /////////////
            measureContainer("Deployment", deploymentController),
            SizedBox(height: 5),

            //////////////   Freefall Time Container   /////////////
            measureContainer("Freefall Time", freefallTimeController),
            SizedBox(height: 5),

            //////////////   Freefall Speed Container   /////////////
            freefallContainer()
          ],
        ),
      ),
    );
  }

  Container measureContainer(String title, TextEditingController controller) {
    return Container(
      //padding: EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 3.2,
            //color: Colors.yellow,
            child: Row(
              children: <Widget>[
                Text(
                  title, //"Exit Altitudue",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ":  ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
             // width: MediaQuery.of(context).size.width / 1.8,
              //margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.fromLTRB(10, 0, 12, 0),
              child: TextField(
                style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                ),
                cursorColor: Color(0xFF9b9b9b),
                controller: controller,
                keyboardType: TextInputType.number,
                // textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  suffix: Text(
                    'ft',
                    style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Colors.grey.withOpacity(0.5),
                        decorationStyle: TextDecorationStyle.solid,
                        decorationColor: Colors.black.withOpacity(0.7),
                        fontWeight: FontWeight.bold),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[300]),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey[300]),
                  ),
                  contentPadding:
                      EdgeInsets.only(left: 10, bottom: 8, top: 8, right: 5),
                  fillColor: Color(0xFFF8F8F8),
                  filled: true,
                ),
              ),
              // width: MediaQuery.of(context).size.width / 2,
              // margin: EdgeInsets.only(right: 20),
              // padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
              // decoration: BoxDecoration(
              //     border: Border(
              //       right: BorderSide(color: Colors.grey[300]),
              //       bottom: BorderSide(color: Colors.grey[300]),
              //       top: BorderSide(color: Colors.grey[300].withOpacity(0.1)),
              //     ),
              //     boxShadow: [
              //       BoxShadow(
              //           blurRadius: 30,
              //           color: Colors.grey[100],
              //           offset: Offset(1, 3))
              //     ]),
              // child: Text(
              //   ft, // " ft", // widget.index.id == null ? "" : '${widget.index.id}',
              //   maxLines: 4,
              //   textAlign: TextAlign.end,
              //   overflow: TextOverflow.ellipsis,
              //   style: TextStyle(
              //       fontSize: 15,
              //       fontFamily: 'Roboto',
              //       color: Colors.grey,
              //       decorationStyle: TextDecorationStyle.solid,
              //       decorationColor: Colors.black.withOpacity(0.7),
              //       fontWeight: FontWeight.bold),
              // ),
            ),
          ),
        ],
      ),
    );
  }

  Container freefallContainer() {
    return Container(
      //color: Colors.red,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 30),
            width: MediaQuery.of(context).size.width / 3.2,
            //color: Colors.yellow,
            child: Row(
              children: <Widget>[
                Text(
                  "Freefall Speed",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  ":  ",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
              child: Column(
                children: <Widget>[
                  Container(
                  //width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.fromLTRB(10, 0, 12, 0),
                    child: TextField(
                      maxLines: 4,
                      minLines: 1,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Colors.grey,
                      ),
                      cursorColor: Color(0xFF9b9b9b),
                      controller: freefallSpeedMaxController,
                      keyboardType: TextInputType.number,
                      //autofocus: true,
                      // textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        prefixText:
                          'max ',
                        prefixStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.grey.withOpacity(0.4),
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold),
                        suffixText:
                          'mph',
                          suffixStyle: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              color: Colors.grey.withOpacity(0.4),
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        contentPadding: EdgeInsets.only(left: 10, bottom: 8, top: 8, right: 5),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                 // width: MediaQuery.of(context).size.width / 2,
                  padding: EdgeInsets.fromLTRB(10, 5, 12, 0),
                    child: TextField(
                      maxLines: 4,
                      minLines: 1,
                      style: TextStyle(
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Colors.grey,
                      ),
                      cursorColor: Color(0xFF9b9b9b),
                      controller: freefallSpeedAvgController,
                      keyboardType: TextInputType.number,
                      // textInputAction: TextInputAction.search,
                      decoration: InputDecoration(
                        prefixText: 'avarage ',
                        prefixStyle: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              color: Colors.grey.withOpacity(0.4),
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold),
                        suffixText:
                          'mph',
                          suffixStyle: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Roboto',
                              color: Colors.grey.withOpacity(0.4),
                              decorationStyle: TextDecorationStyle.solid,
                              decorationColor: Colors.black.withOpacity(0.7),
                              fontWeight: FontWeight.bold),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey[300]),
                        ),
                        contentPadding:
                            EdgeInsets.only(left: 10, bottom: 8, top: 8, right: 5),
                        fillColor: Color(0xFFF8F8F8),
                        filled: true,
                      ),
                    ),
                  ),
                  //Container(
                  // color: Colors.yellow,
                  // child: Wrap(
                  //   direction: Axis.vertical,
                  //   children: <Widget>[
                  //     Container(
                  //       width: MediaQuery.of(context).size.width / 2,
                  //       margin: EdgeInsets.only(right: 20, bottom: 5, top: 5),
                  //       padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                  //       decoration: BoxDecoration(
                  //           border: Border(
                  //             right: BorderSide(color: Colors.grey[300]),
                  //             bottom: BorderSide(color: Colors.grey[300]),
                  //             top: BorderSide(
                  //                 color: Colors.grey[300].withOpacity(0.1)),
                  //           ),
                  //           boxShadow: [
                  //             BoxShadow(
                  //                 blurRadius: 30,
                  //                 color: Colors.grey[100],
                  //                 offset: Offset(1, 3))
                  //           ]),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Text(
                  //             "max", // widget.index.id == null ? "" : '${widget.index.id}',
                  //             maxLines: 4,
                  //             textAlign: TextAlign.end,
                  //             overflow: TextOverflow.ellipsis,
                  //             style: TextStyle(
                  //                 fontSize: 15,
                  //                 fontFamily: 'Roboto',
                  //                 color: Colors.grey[300],
                  //                 decorationStyle: TextDecorationStyle.solid,
                  //                 decorationColor: Colors.black.withOpacity(0.5),
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //           Expanded(
                  //             child: Text(
                  //               " mgh", // widget.index.id == null ? "" : '${widget.index.id}',
                  //               maxLines: 4,
                  //               textAlign: TextAlign.end,
                  //               overflow: TextOverflow.ellipsis,
                  //               style: TextStyle(
                  //                   fontSize: 15,
                  //                   fontFamily: 'Roboto',
                  //                   color: Colors.grey,
                  //                   decorationStyle: TextDecorationStyle.solid,
                  //                   decorationColor: Colors.black.withOpacity(0.7),
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //     Container(
                  //       width: MediaQuery.of(context).size.width / 2,
                  //       margin: EdgeInsets.only(right: 20),
                  //       padding: EdgeInsets.fromLTRB(5, 5, 10, 0),
                  //       decoration: BoxDecoration(
                  //           border: Border(
                  //             right: BorderSide(color: Colors.grey[300]),
                  //             bottom: BorderSide(color: Colors.grey[300]),
                  //             top: BorderSide(
                  //                 color: Colors.grey[300].withOpacity(0.1)),
                  //           ),
                  //           boxShadow: [
                  //             BoxShadow(
                  //                 blurRadius: 30,
                  //                 color: Colors.grey[100],
                  //                 offset: Offset(1, 3))
                  //           ]),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //         children: <Widget>[
                  //           Text(
                  //             "avarage", // widget.index.id == null ? "" : '${widget.index.id}',
                  //             maxLines: 4,
                  //             textAlign: TextAlign.end,
                  //             overflow: TextOverflow.ellipsis,
                  //             style: TextStyle(
                  //                 fontSize: 15,
                  //                 fontFamily: 'Roboto',
                  //                 color: Colors.grey[300],
                  //                 decorationStyle: TextDecorationStyle.solid,
                  //                 decorationColor: Colors.black.withOpacity(0.5),
                  //                 fontWeight: FontWeight.bold),
                  //           ),
                  //           Expanded(
                  //             child: Text(
                  //               " mgh", // widget.index.id == null ? "" : '${widget.index.id}',
                  //               maxLines: 4,
                  //               textAlign: TextAlign.end,
                  //               overflow: TextOverflow.ellipsis,
                  //               style: TextStyle(
                  //                   fontSize: 15,
                  //                   fontFamily: 'Roboto',
                  //                   color: Colors.grey,
                  //                   decorationStyle: TextDecorationStyle.solid,
                  //                   decorationColor: Colors.black.withOpacity(0.7),
                  //                   fontWeight: FontWeight.bold),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ),
                  //   ],
                  // ),
            //),
                ],
              ),
          ),
        ],
      ),
    );
  }
}