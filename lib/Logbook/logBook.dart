// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_speed_dial/flutter_speed_dial.dart';
// import 'package:riser/Screens/AddBaseJump/addBaseJump.dart';
// import 'package:riser/Screens/AddSkydive/addSkydive.dart';
// import 'package:riser/Screens/AddSpaceDive/addSpaceDive.dart';
// import 'package:riser/Screens/AddTunnel/addTunnel.dart';

// class LogBook extends StatefulWidget {
//   @override
//   _LogBookState createState() => _LogBookState();
// }

// class _LogBookState extends State<LogBook> {

//   ScrollController _hideButtonController;
// var _isVisible = true;

//   @override
//   void initState() {
//     super.initState();

//      _hideButtonController = ScrollController();

//     _isVisible = true;
//     _hideButtonController = new ScrollController();
//     _hideButtonController.addListener(() {
//       if (_hideButtonController.position.userScrollDirection ==
//           ScrollDirection.reverse) {
//         if (_isVisible == true) {
//           /* only set when the previous state is false
//              * Less widget rebuilds 
//              */
//           //Move IO away from setState
//           setState(() {
//             _isVisible = true;
//           });
//         }
//       } else {
//         if (_hideButtonController.position.userScrollDirection ==
//             ScrollDirection.forward) {
//           if (_isVisible == false) {
//             /* only set when the previous state is false
//                * Less widget rebuilds 
//                */
//             //Move IO away from setState
//             setState(() {
//               _isVisible = true;
//             });
//           }
//         }
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ListView.builder(
//       physics: BouncingScrollPhysics(),
//       itemCount: 15,
//       controller: _hideButtonController,
//       itemBuilder: (BuildContext context, int index) {
//         return Card(
//           elevation: 3.0,
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
//             child: Container(
//               height: 60,
//               color: Colors.white,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Column(
//                     children: <Widget>[
//                       Text(
//                         "390",
//                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                       ),
//                       SizedBox(
//                         height: 7.0,
//                       ),
//                       Text(
//                         "1/111996",
//                         style: TextStyle(color: Colors.black, fontSize: 14.0),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: <Widget>[
//                       Text(
//                         "Fun Jump",
//                         style: TextStyle(color: Colors.black, fontSize: 18.0),
//                       ),
//                       SizedBox(
//                         height: 7.0,
//                       ),
//                       Text(
//                         "Freefly",
//                         style: TextStyle(color: Colors.black, fontSize: 14.0),
//                       ),
//                     ],
//                   ),
//                   Column(
//                     children: <Widget>[
//                       Text(
//                         "C1896",
//                         style: TextStyle(color: Colors.red, fontSize: 18.0),
//                       ),
//                       SizedBox(
//                         height: 7.0,
//                       ),
//                       Text(
//                         "Skydive Mossel Bay",
//                         style: TextStyle(color: Colors.black, fontSize: 12.0),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       },
//     ),

// floatingActionButton: new Visibility(
//           visible: _isVisible,
//           child: SpeedDial(
//             animatedIcon: AnimatedIcons.add_event,
//             animatedIconTheme: IconThemeData(color: Colors.black, size: 30,),
//             overlayColor: Colors.white,
//             overlayOpacity: 0.9,
//             closeManually: false,
//             children: [
//               SpeedDialChild(
//                 child: Icon(Icons.add, color: Colors.black, size: 28,),
//                 label: "ADD SKYDIVE",
//                 labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                 backgroundColor: Colors.blue,
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return AddSkydive();
//                   }));
//                 },
//               ),
//               SpeedDialChild(
//                   child: Icon(Icons.add, color: Colors.black, size: 28,),
//                   label: "ADD TUNNEL",
//                   labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return AddTunnel();
//                   }));
//                   }
//                   ),
//               SpeedDialChild(
//                   child: Icon(Icons.add, color: Colors.black, size: 28,),
//                   label: "ADD B.A.S.E JUMP",
//                   labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                   onTap: (){
//                     Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return AddBaseJump();
//                   }));
//                   }
//                   ),
//               SpeedDialChild(
//                   child: Icon(Icons.add, color: Colors.black, size: 28,),
//                   label: "ADD SPACE DIVE",
//                   labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (context){
//                     return AddSpaceDive();
//                   }));
//                   }
//                   ),
//             ],
//           ),
//         ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:riser/Logbook/logbookDetail.dart';
import 'package:riser/Screens/AddBaseJump/addBaseJump.dart';
import 'package:riser/Screens/AddSkydive/addSkydive.dart';
import 'package:riser/Screens/AddSpaceDive/addSpaceDive.dart';
import 'package:riser/Screens/AddTunnel/addTunnel.dart';

class LogBook extends StatefulWidget {
  @override
  _LogBookState createState() => _LogBookState();
}

class _LogBookState extends State<LogBook> {
  int i = 15;
  ScrollController _hideButtonController;
  var _isVisible = true;

  @override
  void initState() {
    super.initState();

    _hideButtonController = ScrollController();

    _isVisible = true;
    _hideButtonController = new ScrollController();
    _hideButtonController.addListener(() {
      if (_hideButtonController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        if (_isVisible == true) {
          /* only set when the previous state is false
             * Less widget rebuilds 
             */
          //Move IO away from setState
          setState(() {
            _isVisible = true;
          });
        }
      } else {
        if (_hideButtonController.position.userScrollDirection ==
            ScrollDirection.forward) {
          if (_isVisible == false) {
            /* only set when the previous state is false
               * Less widget rebuilds 
               */
            //Move IO away from setState
            setState(() {
              _isVisible = true;
            });
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: i,
        controller: _hideButtonController,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              //dialog values start
               Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LogbookDetail();
                }));
                            // showGeneralDialog(
                            //     context: context,
                            //     barrierDismissible: true,
                            //     barrierLabel: MaterialLocalizations.of(context)
                            //         .modalBarrierDismissLabel,
                            //     barrierColor: Colors.black45,
                            //     transitionDuration: const Duration(milliseconds: 200),
                            //     pageBuilder: (BuildContext buildContext, Animation animation,
                            //         Animation secondaryAnimation) {
                            //       return SingleChildScrollView(
                            //         child: Container(
                            //           width: MediaQuery.of(context).size.width - 10,
                            //           height: MediaQuery.of(context).size.height,
                            //           margin: EdgeInsets.only(
                            //               top: 70, left: 5.0, right: 5.0, bottom: 20.0),
                            //           color: Colors.white,
                            //           child: Container(
                            //             color: Colors.blueGrey[50],
                            //             height: MediaQuery.of(context).size.height / 2,
                            //             margin: EdgeInsets.only(
                            //                 top: 15.0, left: 15.0, right: 15.0, bottom: 10.0),
                            //             child: Column(
                            //               children: [
                            //                 Row(
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.spaceEvenly,
                            //                   children: <Widget>[
                            //                     Column(
                            //                       children: <Widget>[
                            //                         Text(
                            //                           " SPEED",
                            //                           style: TextStyle(
                            //                               fontSize: 16.0,
                            //                               color: Colors.black),
                            //                         ),
                            //                       ],
                            //                     ),
                            //                     Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment.start,
                            //                       children: <Widget>[
                            //                         Row(
                            //                           crossAxisAlignment:
                            //                               CrossAxisAlignment.center,
                            //                           children: <Widget>[
                            //                             Icon(
                            //                               Icons.airplanemode_active,
                            //                               color: Colors.grey,
                            //                               size: 40.0,
                            //                             ),
                            //                             Text(
                            //                               "King Air ZH-OHB",
                            //                               style: (TextStyle(
                            //                                   fontSize: 14.0,
                            //                                   color: Colors.grey)),
                            //                             ),
                            //                           ],
                            //                         ),
                            //                       ],
                            //                     ),
                            //                     Column(
                            //                       children: <Widget>[
                            //                         Icon(
                            //                           Icons.play_circle_outline,
                            //                           color: Colors.blue,
                            //                           size: 40.0,
                            //                         ),
                            //                       ],
                            //                     ),
                            //                   ],
                            //                 ),
              
                            //                 SizedBox(
                            //                   height: 10.0,
                            //                 ),
                            //                 Row(
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.spaceEvenly,
                            //                   children: <Widget>[
                            //                     Text(
                            //                       "AVERAGE",
                            //                       style: TextStyle(
                            //                           fontSize: 13.0, color: Colors.black38),
                            //                     ),
                            //                     SizedBox(
                            //                       width: 15.0,
                            //                     ),
                            //                     Text(
                            //                       " EXIT ALTITUDE",
                            //                       style: TextStyle(
                            //                           fontSize: 13.0, color: Colors.black),
                            //                     ),
                            //                   ],
                            //                 ),
              
                            //                 Row(
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.spaceEvenly,
                            //                   children: <Widget>[
                            //                     Row(
                            //                       mainAxisAlignment: MainAxisAlignment.start,
                            //                       children: <Widget>[
                            //                         Text("135",
                            //                             style: TextStyle(
                            //                                 fontSize: 35.0,
                            //                                 color: Colors.black)),
                            //                         Text(
                            //                           "mph",
                            //                           style: TextStyle(
                            //                               fontSize: 18.0,
                            //                               color: Colors.black),
                            //                         )
                            //                       ],
                            //                     ),
                            //                     Icon(
                            //                       Icons.people_outline,
                            //                       size: 35.0,
                            //                       color: Colors.black,
                            //                     ),
                            //                     Text(
                            //                       "16,100ft",
                            //                       style: TextStyle(
                            //                           fontSize: 30.0, color: Colors.black),
                            //                     )
                            //                   ],
                            //                 ),
              
                            //                 SizedBox(
                            //                   height: 10.0,
                            //                 ),
                            //                 Row(
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.spaceEvenly,
                            //                   children: <Widget>[
                            //                     Text(
                            //                       "MAXIMUM",
                            //                       style: TextStyle(
                            //                           fontSize: 13.0, color: Colors.black38),
                            //                     ),
                            //                     SizedBox(
                            //                       width: 15.0,
                            //                     ),
                            //                     Text(
                            //                       " DEPLOYMENT ALTITUDE",
                            //                       style: TextStyle(
                            //                           fontSize: 13.0, color: Colors.black),
                            //                     ),
                            //                   ],
                            //                 ),
                            //                 SizedBox(
                            //                   height: 5.0,
                            //                 ),
              
                            //                 Row(
                            //                   mainAxisAlignment:
                            //                       MainAxisAlignment.spaceEvenly,
                            //                   children: <Widget>[
                            //                     Row(
                            //                       mainAxisAlignment: MainAxisAlignment.start,
                            //                       children: <Widget>[
                            //                         Text("143",
                            //                             style: TextStyle(
                            //                                 fontSize: 35.0,
                            //                                 color: Colors.black)),
                            //                         Text(
                            //                           "mph",
                            //                           style: TextStyle(
                            //                               fontSize: 18.0,
                            //                               color: Colors.black),
                            //                         )
                            //                       ],
                            //                     ),
                            //                     Icon(
                            //                       Icons.android,
                            //                       size: 35.0,
                            //                       color: Colors.black,
                            //                     ),
                            //                     Text(
                            //                       "24,000ft",
                            //                       style: TextStyle(
                            //                           fontSize: 30.0, color: Colors.black),
                            //                     )
                            //                   ],
                            //                 ),
              
                            //                 SizedBox(
                            //                   height: 15.0,
                            //                 ),
                            //                 Column(
                            //                   children: <Widget>[
                            //                     Row(
                            //                       mainAxisAlignment: MainAxisAlignment.start,
                            //                       children: <Widget>[
                            //                         SizedBox(
                            //                           width: 35.0,
                            //                         ),
                            //                         Text(
                            //                           "FREEFALL TIME",
                            //                           style: TextStyle(
                            //                               fontSize: 14.0,
                            //                               color: Colors.black),
                            //                         ),
                            //                       ],
                            //                     ),
                            //                     Row(
                            //                       mainAxisAlignment:
                            //                           MainAxisAlignment.spaceBetween,
                            //                       children: <Widget>[
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment.start,
                            //                           children: <Widget>[
                            //                             SizedBox(
                            //                               width: 39.0,
                            //                             ),
                            //                             Text("56",
                            //                                 style: TextStyle(
                            //                                     fontSize: 35.0,
                            //                                     color: Colors.black)),
                            //                             Text(
                            //                               "s",
                            //                               style: TextStyle(
                            //                                   fontSize: 18.0,
                            //                                   color: Colors.black),
                            //                             )
                            //                           ],
                            //                         ),
                            //                         Column(
                            //                           children: <Widget>[
                            //                             Icon(
                            //                               Icons.location_on,
                            //                               size: 30.0,
                            //                               color: Colors.black,
                            //                             ),
                            //                             Text(
                            //                               "Skydive Mossel Bay",
                            //                               style: TextStyle(
                            //                                   fontSize: 14.0,
                            //                                   color: Colors.black),
                            //                             ),
                            //                           ],
                            //                         )
                            //                       ],
                            //                     ),
                            //                     SizedBox(
                            //                       height: 7.0,
                            //                     ),
                            //                     Container(
                            //                       color: Colors.white,
                            //                       height: 6.0,
                            //                     ),
                            //                     //divider
                            //                     Container(
                            //                       color: Colors.grey,
                            //                       // height: MediaQuery.of(context).size.height /
                            //                       //     4.5,
                            //                       margin:
                            //                           EdgeInsets.only(left: 0.0, top: 10.0),
                            //                       child: Row(
                            //                         mainAxisAlignment:
                            //                             MainAxisAlignment.spaceEvenly,
                            //                         children: <Widget>[
                            //                           Expanded(
                            //                             child: Container(
                                                          
                            //                               child: Column(
                            //                                 crossAxisAlignment:CrossAxisAlignment.start,
                            //                                 children: <Widget>[
                            //                                   Row(
                            //                                     children: <Widget>[
                            //                                       Text(
                            //                                         "Gear: ",
                            //                                         style: TextStyle(
                            //                                             fontSize: 17.0,
                            //                                             color: Colors.black),
                            //                                       ),
                            //                                     ],
                            //                                   ),
                            //                                   SizedBox(
                            //                                     height: 10.0,
                            //                                   ),
                            //                                   Row(
                            //                                     children: <Widget>[
                            //                                       Row(
                            //                                         children: <Widget>[
                            //                                           Image.asset(
                            //                                             "assets/img/gearimage.jpg",
                            //                                             height: 50.0,
                            //                                             fit: BoxFit.contain,
                            //                                           ),
                            //                                           SizedBox(
                            //                                             width: 2.0,
                            //                                           ),
                            //                                         ],
                            //                                       ),
                            //                                       Row(
                            //                                         children: <Widget>[
                            //                                           Column(
                            //                                             mainAxisAlignment:
                            //                                                 MainAxisAlignment
                            //                                                     .start,
                            //                                             children: <Widget>[
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Image.asset(
                            //                                                     "assets/img/gearimage.jpg",
                            //                                                     height: 10.0,
                            //                                                     fit: BoxFit
                            //                                                         .contain,
                            //                                                   ),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text(
                            //                                                       "Vortex 135 STD",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               11.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                 ],
                            //                                               ),
                            //                                               SizedBox(
                            //                                                 height: 10.0,
                            //                                               ),
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Image.asset(
                            //                                                     "assets/img/gearimage.jpg",
                            //                                                     height: 10.0,
                            //                                                     fit: BoxFit
                            //                                                         .contain,
                            //                                                   ),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text(
                            //                                                       "Vortex 135 ",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                 ],
                            //                                               ),
                            //                                               SizedBox(
                            //                                                 height: 10.0,
                            //                                               ),
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Image.asset(
                            //                                                     "assets/img/gearimage.jpg",
                            //                                                     height: 10.0,
                            //                                                     fit: BoxFit
                            //                                                         .contain,
                            //                                                   ),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text(
                            //                                                       "Smart UPV 150",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                 ],
                            //                                               ),
                            //                                               SizedBox(
                            //                                                 height: 10.0,
                            //                                               ),
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Image.asset(
                            //                                                     "assets/img/gearimage.jpg",
                            //                                                     height: 10.0,
                            //                                                     fit: BoxFit
                            //                                                         .contain,
                            //                                                   ),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text(
                            //                                                       "Cypress 2 Expert",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                 ],
                            //                                               ),
                            //                                             ],
                            //                                           ),
                            //                                         ],
                            //                                       ),
                            //                                     ],
                            //                                   ),
                            //                                   SizedBox(
                            //                                     height: 10.0,
                            //                                   ),
                            //                                   Row(
                            //                                     mainAxisAlignment:
                            //                                         MainAxisAlignment.start,
                            //                                     children: <Widget>[
                            //                                       Icon(Icons.camera_alt),
                            //                                       SizedBox(
                            //                                         width: 5.0,
                            //                                       ),
                            //                                       Text("Go Pro Hero 4",
                            //                                           style: TextStyle(
                            //                                               fontSize: 14.0,
                            //                                               color: Colors.black)),
                            //                                     ],
                            //                                   ),
                            //                                 ],
                            //                               ),
              
                            //                               //first item container
                            //                             ),
                            //                           ),
                            //                           SizedBox(
                            //                             width: 4.0,
                            //                           ),
                            //                           Container(
                            //                             height: MediaQuery.of(context)
                            //                                         .size
                            //                                         .height /
                            //                                     4.5 +
                            //                                 16,
                            //                             width: 6.0,
                            //                             color: Colors.white,
                            //                             margin: EdgeInsets.only(
                            //                                 right: 5.0, left: 5.0),
                            //                           ),
              
                            //                           Expanded(
                            //                             child: Container(
                            //                               child: Column(
                            //                                 crossAxisAlignment:
                            //                                     CrossAxisAlignment.start,
                            //                                 children: <Widget>[
                            //                                   Row(
                            //                                     children: <Widget>[
                            //                                       Icon(
                            //                                         Icons.present_to_all,
                            //                                         size: 19.0,
                            //                                         color: Colors.black,
                            //                                       ),
                            //                                       Text(
                            //                                         "Tagged",
                            //                                         style: TextStyle(
                            //                                             fontSize: 17.0,
                            //                                             color: Colors.black),
                            //                                       ),
                            //                                     ],
                            //                                   ),
                            //                                   SizedBox(
                            //                                     height: 5.0,
                            //                                   ),
                            //                                   Row(
                            //                                     children: <Widget>[
                            //                                       Row(
                            //                                         children: <Widget>[
                            //                                           Column(
                            //                                             crossAxisAlignment:
                            //                                                 CrossAxisAlignment
                            //                                                     .start,
                            //                                             children: <Widget>[
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Icon(
                            //                                                       Icons
                            //                                                           .person_pin,
                            //                                                       size: 15.0,
                            //                                                       color: Colors
                            //                                                           .black),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text("Jessica",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                   SizedBox(
                            //                                                     width: 6.0,
                            //                                                   ),
                            //                                                 ],
                            //                                               ),
                            //                                               SizedBox(
                            //                                                 height: 10.0,
                            //                                               ),
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Icon(
                            //                                                       Icons
                            //                                                           .person_pin,
                            //                                                       size: 15.0,
                            //                                                       color: Colors
                            //                                                           .black),
                            //                                                   SizedBox(
                            //                                                     width: 2.0,
                            //                                                   ),
                            //                                                   Text("Richard",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                   SizedBox(
                            //                                                     width: 6.0,
                            //                                                   ),
                            //                                                 ],
                            //                                               ),
                            //                                               SizedBox(
                            //                                                 height: 10.0,
                            //                                               ),
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Icon(
                            //                                                       Icons
                            //                                                           .person_pin,
                            //                                                       size: 15.0,
                            //                                                       color: Colors
                            //                                                           .black),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text("Andrew",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                   SizedBox(
                            //                                                     width: 6.0,
                            //                                                   ),
                            //                                                 ],
                            //                                               ),
                            //                                               SizedBox(
                            //                                                 height: 10.0,
                            //                                               ),
                            //                                               Row(
                            //                                                 children: <Widget>[
                            //                                                   Icon(
                            //                                                       Icons
                            //                                                           .person_pin,
                            //                                                       size: 15.0,
                            //                                                       color: Colors
                            //                                                           .black),
                            //                                                   SizedBox(
                            //                                                     width: 1.0,
                            //                                                   ),
                            //                                                   Text("Naomi",
                            //                                                       style: TextStyle(
                            //                                                           fontSize:
                            //                                                               10.0,
                            //                                                           color: Colors
                            //                                                               .black)),
                            //                                                   SizedBox(
                            //                                                     width: 4.0,
                            //                                                   ),
                            //                                                 ],
                            //                                               ),
                            //                                             ],
                            //                                           ),
                            //                                         ],
                            //                                       ),
                            //                                       Container(
                            //                                         height: 70.0,
                            //                                         width: 2.0,
                            //                                         color: Colors.grey,
                            //                                         margin: EdgeInsets.only(
                            //                                             right: 4.0),
                            //                                       ),
                            //                                       Container(
                            //                                         margin: EdgeInsets.only(
                            //                                             top: 16),
                            //                                         child: Column(
                            //                                           crossAxisAlignment:
                            //                                               CrossAxisAlignment
                            //                                                   .start,
                            //                                           children: <Widget>[
                            //                                             Row(
                            //                                               children: <Widget>[
                            //                                                 Icon(
                            //                                                     Icons
                            //                                                         .person_pin,
                            //                                                     size: 15.0,
                            //                                                     color: Colors
                            //                                                         .black),
                            //                                                 SizedBox(
                            //                                                   width: 2.0,
                            //                                                 ),
                            //                                                 Text("Oliver",
                            //                                                     style: TextStyle(
                            //                                                         fontSize:
                            //                                                             10.0,
                            //                                                         color: Colors
                            //                                                             .black)),
                            //                                                 SizedBox(
                            //                                                   width: 6.0,
                            //                                                 ),
                            //                                               ],
                            //                                             ),
                            //                                             SizedBox(
                            //                                               height: 10.0,
                            //                                             ),
                            //                                             Row(
                            //                                               children: <Widget>[
                            //                                                 Icon(
                            //                                                     Icons
                            //                                                         .person_pin,
                            //                                                     size: 15.0,
                            //                                                     color: Colors
                            //                                                         .black),
                            //                                                 SizedBox(
                            //                                                   width: 2.0,
                            //                                                 ),
                            //                                                 Text("Andrew",
                            //                                                     style: TextStyle(
                            //                                                         fontSize:
                            //                                                             10.0,
                            //                                                         color: Colors
                            //                                                             .black)),
                            //                                                 SizedBox(
                            //                                                   width: 6.0,
                            //                                                 ),
                            //                                               ],
                            //                                             ),
                            //                                             SizedBox(
                            //                                               height: 10.0,
                            //                                             ),
                            //                                             Row(
                            //                                               children: <Widget>[
                            //                                                 Icon(
                            //                                                     Icons
                            //                                                         .person_pin,
                            //                                                     size: 15.0,
                            //                                                     color: Colors
                            //                                                         .black),
                            //                                                 SizedBox(
                            //                                                   width: 2.0,
                            //                                                 ),
                            //                                                 Text("Cameron",
                            //                                                     style: TextStyle(
                            //                                                         fontSize:
                            //                                                             10.0,
                            //                                                         color: Colors
                            //                                                             .black)),
                            //                                                 SizedBox(
                            //                                                   width: 6.0,
                            //                                                 ),
                            //                                               ],
                            //                                             ),
                            //                                             SizedBox(
                            //                                               height: 10.0,
                            //                                             ),
                            //                                             Row(
                            //                                               children: <Widget>[
                            //                                                 Icon(
                            //                                                     Icons
                            //                                                         .add_circle,
                            //                                                     size: 15.0,
                            //                                                     color: Colors
                            //                                                         .blue),
                            //                                                 SizedBox(
                            //                                                   width: 1.0,
                            //                                                 ),
                            //                                                 Text("Tag friend",
                            //                                                     style: TextStyle(
                            //                                                         fontSize:
                            //                                                             9.0,
                            //                                                         color: Colors
                            //                                                             .blue)),
                            //                                               ],
                            //                                             ),
                            //                                             SizedBox(
                            //                                               height: 10.0,
                            //                                             ),
                            //                                           ],
                            //                                         ),
                            //                                       ),
                            //                                     ],
                            //                                   ),
                            //                                 ],
                            //                               ),
              
                            //                               //first item container
                            //                             ),
                            //                           ),
              
                            //                           //main row for this part
                            //                         ],
                            //                       ),
                            //                     ),
              
                            //                     Container(
                            //                       height: 6.0,
                            //                       color: Colors.white,
                            //                       margin:
                            //                           EdgeInsets.only(top: 7.0, bottom: 4.0),
                            //                     ),
              
                            //                     Container(
                            //                       margin:
                            //                           EdgeInsets.only(top: 5.0, left: 6.0),
                            //                       width: MediaQuery.of(context).size.width,
                            //                       child: Column(
                            //                         crossAxisAlignment:
                            //                             CrossAxisAlignment.start,
                            //                         children: <Widget>[
                            //                           Text(
                            //                             "Comments:",
                            //                             style: TextStyle(
                            //                                 fontSize: 20.0,
                            //                                 color: Colors.black38),
                            //                           ),
                            //                           SizedBox(
                            //                             height: 7.0,
                            //                           ),
                            //                           Text(
                            //                             "7 way freefly with Jess, Noami, Richard, Andrew and Spinner",
                            //                             style: TextStyle(
                            //                                 fontSize: 10.0,
                            //                                 color: Colors.black38),
                            //                           ),
                            //                         ],
                            //                       ),
                            //                     ),
                            //                   ],
                            //                 ),
                            //                 //main Column
              
                            //                 SizedBox(
                            //                   height: 20.0,
                            //                 ),
              
                            //                 new RawMaterialButton(
                            //                   onPressed: () {
                            //                     Navigator.pop(context);
                            //                   },
                            //                   child: new Icon(
                            //                     Icons.done,
                            //                     color: Colors.white,
                            //                     size: 35.0,
                            //                   ),
                            //                   shape: new CircleBorder(),
                            //                   elevation: 5.0,
                            //                   fillColor: Colors.deepPurple,
                            //                   padding: const EdgeInsets.all(15.0),
                            //                 ),
                            //               ],
                            //             ),
                            //           ),
                            //         ),
                            //       );
                            //     });
              
                            //dialog end
              
                            
                          },
                          child: Card(
                            elevation: 3.0,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8.0, right: 8.0, top: 4.0, bottom: 4.0),
                              child: Container(
                                height: 60,
                                color: Colors.white,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          "390",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 18.0),
                                        ),
                                        SizedBox(
                                          height: 7.0,
                                        ),
                                        Text(
                                          "1/111996",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          "Fun Jump",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 18.0),
                                        ),
                                        SizedBox(
                                          height: 7.0,
                                        ),
                                        Text(
                                          "Freefly",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 14.0),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          "C1896",
                                          style: TextStyle(color: Colors.red, fontSize: 18.0),
                                        ),
                                        SizedBox(
                                          height: 7.0,
                                        ),
                                        Text(
                                          "Skydive Mossel Bay",
                                          style:
                                              TextStyle(color: Colors.black, fontSize: 12.0),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    floatingActionButton: new Visibility(
                      visible: _isVisible,
                      child: SpeedDial(
                        animatedIcon: AnimatedIcons.add_event,
                        animatedIconTheme: IconThemeData(
                          color: Colors.black,
                          size: 30,
                        ),
                        overlayColor: Colors.white,
                        overlayOpacity: 0.9,
                        closeManually: false,
                        children: [
                          SpeedDialChild(
                            child: Icon(
                              Icons.add,
                              color: Colors.black,
                              size: 28,
                            ),
                            label: "ADD SKYDIVE",
                            labelStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                            backgroundColor: Colors.blue,
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) {
                                return AddSkydive();
                              }));
                            },
                          ),
                          SpeedDialChild(
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 28,
                              ),
                              label: "ADD TUNNEL",
                              labelStyle:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return AddTunnel();
                                }));
                              }),
                          SpeedDialChild(
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 28,
                              ),
                              label: "ADD B.A.S.E JUMP",
                              labelStyle:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return AddBaseJump();
                                }));
                              }),
                          SpeedDialChild(
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 28,
                              ),
                              label: "ADD SPACE DIVE",
                              labelStyle:
                                  TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                              onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) {
                                  return AddSpaceDive();
                                }));
                              }),
                        ],
                      ),
                    ),
                  );
                }
              
               
                
}
