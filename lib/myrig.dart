// import 'package:flutter/material.dart';

// enum GetRigWidget {
//   rig,
//   container,
//   maincanopy,
//   reservecanopy,
//   aad,
// }

// class myrig extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _Myrig();
//   }
// }

// class _Myrig extends State<myrig> {
//   GetRigWidget getRigWidget = GetRigWidget.rig;
//   final TextEditingController containerMake = new TextEditingController();
//   final TextEditingController containerModel = new TextEditingController();

//   final TextEditingController containerName = new TextEditingController();

// final TextEditingController maincanopyMake = new TextEditingController();
//   final TextEditingController maincanopyModel = new TextEditingController();
//   final TextEditingController maincanopyName = new TextEditingController();
// final TextEditingController maincanopySize = new TextEditingController();

// final TextEditingController reservecanopyMake = new TextEditingController();
//   final TextEditingController reservecanopyModel = new TextEditingController();
//   final TextEditingController reservecanopyName = new TextEditingController();
// final TextEditingController reservecanopySize = new TextEditingController();

// final TextEditingController aadMake = new TextEditingController();
//   final TextEditingController aadModel = new TextEditingController();

//   final TextEditingController aadName = new TextEditingController();

//   @override
//   void initState() {
//     super.initState();
//     getRigWidget = GetRigWidget.rig;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(

//         title: GestureDetector(
//           onTap: (){
//             setState(() {
//               getRigWidget = GetRigWidget.rig;
//             });
//           },
//           child:Text(
//           "My Rig",
//           style: TextStyle(fontSize: 18.0, color: Colors.white),
//         ),
//         ),
//         centerTitle: true,
//       ),
//       body: SingleChildScrollView(
//               child: Container(
//           color: Color(0xFFE6E6E6),
//           height: MediaQuery.of(context).size.height,
//           child: Column(
//             children: <Widget>[
//               SizedBox(
//                 height: 15.0,
//               ),
//               Row(
//                 children: <Widget>[
//                   Image.asset("assets/img/gearimage.jpg", height: 300,fit: BoxFit.contain,),
//                   SizedBox(
//                     width: 10.0,
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 15.0,
//               ),
//               Row(
//                 children: <Widget>[
//                   Container(
//                     color: Color(0xFFFFFFFF),
//                     height: MediaQuery.of(context).size.height / 2 - 30,
//                     width: MediaQuery.of(context).size.width / 2,
//                     child: getCustomContainer(),
//                   ),
//                   Container(
//                     margin: EdgeInsets.only(left: 10.0),
//                     color: Color(0xFFF2F2F2),
//                     height: MediaQuery.of(context).size.height / 2 - 30,
//                     width: MediaQuery.of(context).size.width / 2 - 10,
//                     child: Center(
//                       child: Column(
//                         children: <Widget>[
//                           Container(
//                             height: 60.0,
//                             margin: EdgeInsets.only(top: 20.0),
//                             width: MediaQuery.of(context).size.width / 2 - 30,
//                             color: Colors.grey,
//                             child: Column(
//                               children: <Widget>[
//                                 Row(
//                                   children: <Widget>[
//                                     Text(
//                                       "  CONTAINER",
//                                       style: TextStyle(fontSize: 16.0),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Center(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         getRigWidget = GetRigWidget.container;
//                                       });
//                                     },
//                                     child: Icon(Icons.add, color:Colors.blue),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 15.0,
//                           ),
//                           Container(
//                             height: 60.0,
//                             width: MediaQuery.of(context).size.width / 2 - 30,
//                             color: Colors.grey,
//                             child: Column(
//                               children: <Widget>[
//                                 Row(
//                                   children: <Widget>[
//                                     Text(
//                                       "  MAIN CANOPY",
//                                       style: TextStyle(fontSize: 16.0),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Center(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         getRigWidget = GetRigWidget.maincanopy;
//                                       });
//                                     },
//                                     child: Icon(Icons.add, color:Colors.blue),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 15.0,
//                           ),
//                           Container(
//                             height: 60.0,
//                             width: MediaQuery.of(context).size.width / 2 - 30,
//                             color: Colors.grey,
//                             child: Column(
//                               children: <Widget>[
//                                 Row(
//                                   children: <Widget>[
//                                     Text(
//                                       "  RESERVE CANOPY",
//                                       style: TextStyle(fontSize: 16.0),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Center(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         getRigWidget = GetRigWidget.reservecanopy;
//                                       });
//                                     },
//                                     child: Icon(Icons.add,color:Colors.blue),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           SizedBox(
//                             height: 15.0,
//                           ),
//                           Container(
//                             height: 60.0,
//                             width: MediaQuery.of(context).size.width / 2 - 30,
//                             color: Colors.grey,
//                             child: Column(
//                               children: <Widget>[
//                                 Row(
//                                   children: <Widget>[
//                                     Text(
//                                       "  AAD",
//                                       style: TextStyle(fontSize: 16.0),
//                                     ),
//                                   ],
//                                 ),
//                                 SizedBox(
//                                   height: 5.0,
//                                 ),
//                                 Center(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       setState(() {
//                                         getRigWidget = GetRigWidget.aad;
//                                       });
//                                     },
//                                     child: Icon(Icons.add, color:Colors.blue),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget getCustomContainer() {
//     switch (getRigWidget) {
//       case GetRigWidget.rig:
//         return getrigItems();
//         break;
//       case GetRigWidget.container:
//         return getcontainerItems();
//         break;
//       case GetRigWidget.maincanopy:
//         return getmaincanopyItems();
//         break;
//       case GetRigWidget.reservecanopy:
//         return getreservecanopyItems();
//         break;
//       case GetRigWidget.aad:
//         return getaadItems();
//         break;
//     }
//     return getrigItems();
//   }

//   Widget getrigItems() {
//     return Row(
//       children: <Widget>[
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "  MY RIGS: ",
//               style: TextStyle(fontSize: 18.0, color: Colors.black),
//             ),
//             SizedBox(
//               height: 5.0,
//             ),
//             Text(
//               "    Vortex",
//               style: TextStyle(fontSize: 30.0, color: Color(0xFF7F7F7F)),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               "  SAVED RIGS: ",
//               style: TextStyle(fontSize: 18.0, color: Colors.black),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Text(
//               "    Alesso ",
//               style: TextStyle(fontSize: 28.0, color: Color(0xFF7F7F7F)),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 40.0,
//                 ),
//                 Container(
//                   color: Color(0xFFF2F2F2),
//                   height: 50.0,
//                   width: MediaQuery.of(context).size.width / 2 - 40,
//                   child: Center(
//                     child: GestureDetector(
//                       onTap: () {},
//                       child: Text(
//                         "Add New Rig",
//                         style: TextStyle(fontSize: 20.0, color: Colors.grey),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget getcontainerItems() {
//     return SingleChildScrollView(
//           child: Container(
//         color: Color(0xFFF2F2F2),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "NAME:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: containerName,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MAKE:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: containerMake,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MODEL:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: containerModel,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 60.0,
//                 ),
//                 RaisedButton(
//                   color: Color(0xFF00B9F0),
//                   child: Text(
//                     'SAVE',
//                     textScaleFactor: 1.5,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       getRigWidget = GetRigWidget.rig;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//  Widget getaadItems() {
//     return SingleChildScrollView(
//           child: Container(
//         color: Color(0xFFF2F2F2),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "NAME:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: aadName,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MAKE:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: aadMake,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MODEL:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: aadModel,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 60.0,
//                 ),
//                 RaisedButton(
//                   color: Color(0xFF00B9F0),
//                   child: Text(
//                     'SAVE',
//                     textScaleFactor: 1.5,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       getRigWidget = GetRigWidget.rig;

//                     });
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//   Widget getmaincanopyItems() {
//     return SingleChildScrollView(
//           child: Container(
//         color: Color(0xFFF2F2F2),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "NAME:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: maincanopyName,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MAKE:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextField(
//               controller: maincanopyMake,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MODEL:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextField(
//               controller: maincanopyModel,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             Text(
//               "Size:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextField(
//               controller: maincanopySize,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 60.0,
//                 ),
//                 RaisedButton(
//                   color: Color(0xFF00B9F0),
//                   child: Text(
//                     'SAVE',
//                     textScaleFactor: 1.5,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       getRigWidget = GetRigWidget.rig;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//    Widget getreservecanopyItems() {
//     return SingleChildScrollView(
//           child: Container(
//         color: Color(0xFFF2F2F2),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             Text(
//               "NAME:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 6.0,
//             ),
//             TextField(
//               controller: reservecanopyName,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MAKE:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextField(
//               controller: reservecanopyMake,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             Text(
//               "MODEL:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextField(
//               controller: reservecanopyModel,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),

//             Text(
//               "Size:",
//               style: TextStyle(fontSize: 18.0),
//             ),
//             SizedBox(
//               height: 3.0,
//             ),
//             TextField(
//               controller: reservecanopySize,
//               obscureText: true,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             Row(
//               children: <Widget>[
//                 SizedBox(
//                   width: 60.0,
//                 ),
//                 RaisedButton(
//                   color: Color(0xFF00B9F0),
//                   child: Text(
//                     'SAVE',
//                     textScaleFactor: 1.5,
//                   ),
//                   onPressed: () {
//                     setState(() {
//                       getRigWidget = GetRigWidget.rig;
//                     });
//                   },
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

enum ContainerEnum {
  addcontainer,
  editcontainer,
}

enum MaincanopyEnum {
  addmaincanopy,
  editmaincanopy,
}
enum ReservecanopyEnum {
  addreservecanopy,
  editreservecanopy,
}
enum AADEnum {
  addaad,
  editaad,
}

class Myrig extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Myrig();
  }
}

class _Myrig extends State<Myrig> {
  //enum initialization start

  ContainerEnum containerEnum = ContainerEnum.addcontainer;
  MaincanopyEnum maincanopyEnum = MaincanopyEnum.addmaincanopy;
  ReservecanopyEnum reservecanopyEnum = ReservecanopyEnum.addreservecanopy;
  AADEnum aadEnum = AADEnum.addaad;
  //enum initialization stop

  final TextEditingController containerMake = new TextEditingController();
  final TextEditingController containerModel = new TextEditingController();

  final TextEditingController containerName = new TextEditingController();

  final TextEditingController maincanopyMake = new TextEditingController();
  final TextEditingController maincanopyModel = new TextEditingController();
  final TextEditingController maincanopyName = new TextEditingController();
  final TextEditingController maincanopySize = new TextEditingController();

  final TextEditingController reservecanopyMake = new TextEditingController();
  final TextEditingController reservecanopyModel = new TextEditingController();
  final TextEditingController reservecanopyName = new TextEditingController();
  final TextEditingController reservecanopySize = new TextEditingController();

  final TextEditingController aadMake = new TextEditingController();
  final TextEditingController aadModel = new TextEditingController();

  final TextEditingController aadName = new TextEditingController();

  @override
  void initState() {
    super.initState();
    containerEnum = ContainerEnum.addcontainer;
    maincanopyEnum = MaincanopyEnum.addmaincanopy;
    reservecanopyEnum = ReservecanopyEnum.addreservecanopy;
    aadEnum = AADEnum.addaad;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Rig",
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          color: Color(0xFFE6E6E6),
          margin: EdgeInsets.only(bottom: 20),
          // height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset(
                      "assets/img/RIGSYSTEM.png",
                      height: 300,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    color: Color(0xFFFFFFFF),
                    //height: MediaQuery.of(context).size.height / 2 - 30,
                    width: MediaQuery.of(context).size.width / 2,
                    child: getrigItems(),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    color: Color(0xFFF2F2F2),
                    // height: MediaQuery.of(context).size.height / 2 - 30,
                    width: MediaQuery.of(context).size.width / 2 - 10,
                    child: Center(
                      child: Column(
                        children: <Widget>[
                          SingleChildScrollView(
                            child: Container(
                              
                              margin: EdgeInsets.only(top: 20.0),
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              color: Colors.grey,
                              child: GetContainerWidget(),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          SingleChildScrollView(
                            child: Container(
                              
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              color: Colors.grey,
                              child: GetMainCanopyWidget(),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          SingleChildScrollView(
                            child: Container(
                              
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              color: Colors.grey,
                              child: GetReserveCanopyWidget(),
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          SingleChildScrollView(
                            child: Container(
                             
                              width: MediaQuery.of(context).size.width / 2 - 30,
                              color: Colors.grey,
                              child: GetAAdWidget(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget getrigItems() {
    return Container(
      child: Row(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "  MY RIGS: ",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(
                "    Vortex",
                style: TextStyle(fontSize: 30.0, color: Color(0xFF7F7F7F)),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "  SAVED RIGS: ",
                style: TextStyle(fontSize: 18.0, color: Colors.black),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "    Alesso ",
                style: TextStyle(fontSize: 28.0, color: Color(0xFF7F7F7F)),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: <Widget>[
                  SizedBox(
                    width: 40.0,
                  ),
                  Container(
                    color: Color(0xFFF2F2F2),
                    height: 50.0,
                    width: MediaQuery.of(context).size.width / 2 - 40,
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            aadEnum = AADEnum.addaad;
                            containerEnum = ContainerEnum.addcontainer;
                            maincanopyEnum = MaincanopyEnum.addmaincanopy;
                            reservecanopyEnum =
                                ReservecanopyEnum.addreservecanopy;
                          });
                        },
                        child: Text(
                          "Add New Rig",
                          style: TextStyle(fontSize: 20.0, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  void showReserveDialog() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                title: Text('Available Reserve Canopy'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                reservecanopyEnum =
                                    ReservecanopyEnum.editreservecanopy;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("Parachute System"),
                            subtitle: Text("Vortex"),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                reservecanopyEnum =
                                    ReservecanopyEnum.editreservecanopy;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("Parachute System"),
                            subtitle: Text("Vortex"),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                reservecanopyEnum =
                                    ReservecanopyEnum.editreservecanopy;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("UPT"),
                            subtitle: Text("Vector 3"),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new RawMaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: new Icon(
                                Icons.clear,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.redAccent,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            //exit button end

                            //save button start
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void showMainDialog() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                title: Text('Available Main Canopy'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                maincanopyEnum = MaincanopyEnum.editmaincanopy;
                                Navigator.pop(context);
                              });
                            },
                            title: Text("Parachute System"),
                            subtitle: Text("Vortex"),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                maincanopyEnum = MaincanopyEnum.editmaincanopy;
                                Navigator.pop(context);
                              });
                            },
                            title: Text("UPT"),
                            subtitle: Text("Vector 3"),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new RawMaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: new Icon(
                                Icons.clear,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.redAccent,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            //exit button end

                            //save button start
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void showContainerDialog() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                title: Text('Available Container'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                containerEnum = ContainerEnum.editcontainer;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("Parachute System"),
                            subtitle: Text("Vortex"),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                containerEnum = ContainerEnum.editcontainer;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("UPT"),
                            subtitle: Text("Vector 3"),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new RawMaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: new Icon(
                                Icons.clear,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.redAccent,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            //exit button end
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  void showAAdDialog() {
    showGeneralDialog(
        barrierColor: Colors.black.withOpacity(0.5),
        transitionBuilder: (context, a1, a2, widget) {
          final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
          return Transform(
            transform: Matrix4.translationValues(0.0, curvedValue * 200, 0.0),
            child: Opacity(
              opacity: a1.value,
              child: AlertDialog(
                shape: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.0)),
                title: Text('Available AADs'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                aadEnum = AADEnum.editaad;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("Airtec"),
                            subtitle: Text("Cypres 2 Expert"),
                          ),
                        ),
                        Card(
                          elevation: 4.0,
                          child: ListTile(
                            onTap: () {
                              setState(() {
                                aadEnum = AADEnum.editaad;
                              });
                              Navigator.pop(context);
                            },
                            title: Text("Airtec Another"),
                            subtitle: Text("Cypres 2 Expert"),
                          ),
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new RawMaterialButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: new Icon(
                                Icons.clear,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.redAccent,
                              padding: const EdgeInsets.all(15.0),
                            ),
                            //exit button end
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        transitionDuration: Duration(milliseconds: 300),
        barrierDismissible: true,
        barrierLabel: '',
        context: context,
        pageBuilder: (context, animation1, animation2) {});
  }

  Widget GetMainCanopyWidget() {
    switch (maincanopyEnum) {
      case MaincanopyEnum.addmaincanopy:
        return AddMainCanopyItems();
        break;
      case MaincanopyEnum.editmaincanopy:
        return EditMainCanopyItems();
        break;
    }
    return AddMainCanopyItems();
  }

  Widget GetContainerWidget() {
    switch (containerEnum) {
      case ContainerEnum.addcontainer:
        return AddContainerItems();
        break;
      case ContainerEnum.editcontainer:
        return EditContainerItems();
        break;
    }
    return AddContainerItems();
  }

  Widget GetReserveCanopyWidget() {
    switch (reservecanopyEnum) {
      case ReservecanopyEnum.addreservecanopy:
        return AddReserveCanopyItems();
        break;
      case ReservecanopyEnum.editreservecanopy:
        return EditReserveCanopyItems();
        break;
    }
    return AddReserveCanopyItems();
  }

  Widget GetAAdWidget() {
    switch (aadEnum) {
      case AADEnum.addaad:
        return AddAadItems();
        break;
      case AADEnum.editaad:
        return EditAadItems();
        break;
    }
    return AddAadItems();
  }

  Widget AddMainCanopyItems() {
    return GestureDetector(
      onTap: () {
        showMainDialog();
      },
      child: Card(
        color: Colors.grey,
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "  MAIN CANOPY",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Icon(Icons.add, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  Widget AddAadItems() {
    return GestureDetector(
      onTap: () {
        showAAdDialog();
      },
      child: Card(
        color: Colors.grey,
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "  AAD",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Icon(Icons.add, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  Widget AddReserveCanopyItems() {
    return GestureDetector(
      onTap: () {
        showReserveDialog();
      },
      child: Card(
        color: Colors.grey,
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  " RESERVE CANOPY",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Icon(Icons.add, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }

  Widget EditMainCanopyItems() {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      // height: MediaQuery.of(context).size.height / 3.1,
      padding: EdgeInsets.fromLTRB(6, 8, 5, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _rigItems('MAIN CANOPY', 'Smart 150 LPV'),
        ],
        //children: _showRigItems()
      ),
    );
  }

  Widget EditAadItems() {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      // height: MediaQuery.of(context).size.height / 3.1,
      padding: EdgeInsets.fromLTRB(6, 8, 5, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _rigItems('ADD', 'Cypres'),
        ],
        //children: _showRigItems()
      ),
    );
  }

  Widget EditContainerItems() {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      // height: MediaQuery.of(context).size.height / 3.1,
      padding: EdgeInsets.fromLTRB(6, 8, 5, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _rigItems('CONTAINER', 'Black & Red Vortex'),
        ],
        //children: _showRigItems()
      ),
    );
  }

  Widget EditReserveCanopyItems() {
    return Container(
      color: Colors.blueGrey.withOpacity(0.1),
      // height: MediaQuery.of(context).size.height / 3.1,
      padding: EdgeInsets.fromLTRB(6, 8, 5, 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _rigItems('RESERVE CANOPY', 'Smart 150 LPV'),
        ],
        //children: _showRigItems()
      ),
    );
  }

  _rigItems(String title, String subtitle) {
    return Container(
      // color: Colors.red,
      padding: EdgeInsets.only(bottom: 1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title, // 'CONTAINER',
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 11,
                fontFamily: 'Roboto',
                color: Colors.black,
                fontWeight: FontWeight.w500),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3, 0, 1, 0),
                    child: Text(
                      subtitle, //'Black & Red Vortex',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 12,
                          fontFamily: 'Roboto',
                          color: Colors.grey,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (title == "CONTAINER") {
                      showContainerDialog();
                    } else if (title == "ADD") {
                      showAAdDialog();
                    } else if (title == "RESERVE CANOPY") {
                      showReserveDialog();
                    } else {
                      showMainDialog();
                    }
                  },
                  child: Container(
                    padding: EdgeInsets.fromLTRB(3, 0, 1, 0),
                    child: Text(
                      'Edit',
                      maxLines: 4,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                          fontSize: 13,
                          fontFamily: 'Roboto',
                          decoration: TextDecoration.underline,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget AddContainerItems() {
    return GestureDetector(
      onTap: () {
        showContainerDialog();
      },
      child: Card(
        color: Colors.grey,
        elevation: 0.0,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "  CONTAINER",
                  style: TextStyle(fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Center(
              child: Icon(Icons.add, color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
