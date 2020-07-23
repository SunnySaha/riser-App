// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:riser/Logbook/logBook.dart';
// import 'package:riser/gears/geartab.dart';
// import 'package:riser/statistics/jumptypes.dart';
// import 'package:riser/statistics/currency.dart';
// import 'package:riser/statistics/freefall.dart';
// import 'package:riser/myrig.dart';

// enum GearWidgetMarker {
//   myGear,
//   riggig,
//   shop,
// }

// class tabMain extends StatefulWidget {
//   @override
//   _tabMainState createState() => _tabMainState();
// }

// class _tabMainState extends State<tabMain> with SingleTickerProviderStateMixin{

// GearWidgetMarker selectwidget = GearWidgetMarker.myGear;

//   TabController _tabController;

//  @override
//   void initState() {
//     super.initState();
//     _tabController = new TabController(length: 4, vsync: this);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 4,
//       child: Scaffold(
//         backgroundColor: Colors.grey,
//         appBar: AppBar(
//           actions: <Widget>[
//             IconButton(
//               icon: Icon(Icons.message),
//               onPressed: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context) {
//                   return myrig();
//                 }));
//               },
//             ),
//           ],
//           backgroundColor: Colors.blue,
//           leading: Icon(Icons.menu, color: Colors.black,),
//           title: Text("C Gorden-Forbes | C1861", style: TextStyle(color: Colors.black),),
//           bottom: TabBar(
//             unselectedLabelColor: Colors.white30,
//             labelColor: Colors.white,
//             labelPadding: EdgeInsets.only(right: 2),
//             tabs: [
//               Tab(text: "LOGBOOK"),
//               Tab(text: "STATS"),
//               Tab(text: "GEAR"),
//               Tab(text: "SOCIAL"),
//             ],
//             controller: _tabController,
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             LogBook(),
//             _stats(),
//             geartab(),
//             _social(),
//           ],
//           controller: _tabController,
//         ),
//       ),
//     );
//   }

//    Widget _stats() {
//     var singleChildScrollView = SingleChildScrollView(
//       child: Container(
//         height: MediaQuery.of(context).size.height,
//         width: MediaQuery.of(context).size.width,
//         margin: EdgeInsets.only(top: 4.0),
//         child: Column(
//           children: <Widget>[
//             Container(
//               height: MediaQuery.of(context).size.height / 3,
//               width: MediaQuery.of(context).size.width,
//               child: currency(),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height / 3,
//               width: MediaQuery.of(context).size.width,
//               child: jumptypes(),
//             ),
//             Container(
//               height: MediaQuery.of(context).size.height / 3,
//               width: MediaQuery.of(context).size.width,
//               child: freefall(),
//             ),
//           ],
//         ),
//       ),
//     );
//     return singleChildScrollView;
//   }

// Widget _social() {
//     return Center(
//       child: Text("Social Will add later"),
//     );
//   }

// }

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


import 'package:riser/gears/geartab.dart';
import 'package:riser/statistics/jumptypes.dart';
import 'package:riser/statistics/currency.dart';
import 'package:riser/statistics/freefall.dart';




import 'package:riser/profile/profile.dart';
import 'package:riser/Logbook/logBook.dart';



import '../main.dart';

enum GearWidgetMarker {
  myGear,
  riggig,
  shop,
}

class TabMain extends StatefulWidget {
  @override
  _tabMainState createState() => _tabMainState();
}

class _tabMainState extends State<TabMain> with SingleTickerProviderStateMixin {
  bool isSwitched = true;
  GearWidgetMarker selectwidget = GearWidgetMarker.myGear;

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 4, vsync: this);
  }

  // bool pinValueSwitch = false;
  // void onPINValueChanged(bool value) {
  //   setState(() {
  //     pinValueSwitch = value;
  //     // if (pinValueSwitch == true) {
  //     //   _showSetPINDialog();
  //     // }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) {
                //   return myrig();
                // }));
              },
            ),
          ],
          backgroundColor: Colors.blue,
          title: Text(
            "C Gorden-Forbes | C1861",
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.white30,
            labelColor: Colors.white,
            labelPadding: EdgeInsets.only(right: 2),
            tabs: [
              Tab(text: "LOGBOOK"),
              Tab(text: "STATS"),
              Tab(text: "GEAR"),
              Tab(text: "SOCIAL"),
            ],
            controller: _tabController,
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.white12,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 3,
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "User Name",
                      style: TextStyle(fontSize: 22.0, color: Colors.white),
                    ),
                    accountEmail: Text("username@gmail.com",
                        style: TextStyle(fontSize: 18.0, color: Colors.white)),
                    currentAccountPicture: CircleAvatar(
                      backgroundColor:
                          Theme.of(context).platform == TargetPlatform.iOS
                              ? Colors.blue
                              : Colors.white,
                      child: Text(
                        "U",
                        style: TextStyle(fontSize: 40.0),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      // showDialog(
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return AlertDialog(
                      //         shape: OutlineInputBorder(
                      //             borderRadius: BorderRadius.circular(16.0)),
                      //         title: Text('Switch Matrix'),
                      //         content: StatefulBuilder(builder:
                      //             (BuildContext context, StateSetter setState) {
                      //           return Column(
                      //             mainAxisSize: MainAxisSize.min,
                      //             children: <Widget>[
                      //               Container(
                      //           child: Row(
                      //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //             children: <Widget>[
                      //               Text(
                      //                 "kph",
                      //               ),
                      //               Switch(
                      //                 value: isSwitched,
                      //                 onChanged: (value) {
                      //                   setState(() {
                      //                     isSwitched = value;
                      //                   });
                      //                 },
                      //                 activeTrackColor:
                      //                     Colors.lightGreenAccent,
                      //                 activeColor: Colors.green,
                      //               ),
                      //               // Switch(
                      //               //   onChanged: onPINValueChanged,
                      //               //   value: pinValueSwitch,
                      //               //   //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      //               //   activeColor: Colors.white,
                      //               //   activeTrackColor: appColor,
                      //               //   inactiveThumbColor: Colors.black87,
                      //               //   inactiveTrackColor: Colors.grey[400],
                      //               // ),
                      //               Text(
                      //                 "mph",
                      //               ),
                      //             ],
                      //           ),
                      //         ),
                      //             ],
                      //           );
                      //         }),
                      //       );
                      //     });
                      showGeneralDialog(
                          barrierColor: Colors.black.withOpacity(0.5),
                          transitionBuilder: (context, a1, a2, widget) {
                            final curvedValue =
                                Curves.easeInOutBack.transform(a1.value) - 1.0;
                            return Transform(
                              transform: Matrix4.translationValues(
                                  0.0, curvedValue * 200, 0.0),
                              child: Opacity(
                                opacity: a1.value,
                                child: AlertDialog(
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(16.0)),
                              title: Text('Switch Matrix'),
                              content: StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    Text(
                                      "kph",
                                    ),
                                    Switch(
                                      value: isSwitched,
                                      onChanged: (value) {
                                        setState(() {
                                          isSwitched = value;
                                        });
                                      },
                                      activeTrackColor:
                                          Colors.lightGreenAccent,
                                      activeColor: Colors.green,
                                    ),
                                    Text(
                                      "mph",
                                    ),
                                  ],
                                ),
                              ),
                                  ],
                                );
                              }),
                            ),
                              ),
                            );
                          },
                          transitionDuration: Duration(milliseconds: 300),
                          barrierDismissible: true,
                          barrierLabel: '',
                          context: context,
                          pageBuilder: (context, animation1, animation2) {});
                    },
                    leading: Icon(
                      Icons.settings,
                      color: Colors.blue,
                      size: 25.0,
                    ),
                    title: Text("Settings",
                        style:
                            TextStyle(fontSize: 22.0, color: Colors.blueGrey)),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Profile();
                      }));
                    },
                    leading: Icon(Icons.person, color: Colors.blue, size: 25.0),
                    title: Text("Profile",
                        style:
                            TextStyle(fontSize: 22.0, color: Colors.blueGrey)),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            LogBook(),
            _stats(),
            geartab(),
            _social(),
          ],
          controller: _tabController,
        ),
      ),
    );
  }

  Widget _stats() {
    var singleChildScrollView = SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 4.0),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: currency(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: jumptypes(),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              child: freefall(),
            ),
          ],
        ),
      ),
    );
    return singleChildScrollView;
  }

  Widget _social() {
    return Center(
      child: Text("Social Will add later"),
    );
  }
}
