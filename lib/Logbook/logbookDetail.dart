import 'package:flutter/material.dart';

import '../main.dart';

class LogbookDetail extends StatefulWidget {
  @override
  _LogbookDetailState createState() => _LogbookDetailState();
}

class _LogbookDetailState extends State<LogbookDetail> {
  TextEditingController commentController = TextEditingController();

  TextEditingController avarageController = TextEditingController();
  TextEditingController maximumController = TextEditingController();
  TextEditingController freefallTimeController = TextEditingController();

  TextEditingController exitAltitudeController = TextEditingController();
  TextEditingController deploymentAltitudeController = TextEditingController();

  String avarageValue = '135';
  String exitAltitudeValue = '16,100';
  String maximunValue = '243';
  String deploymentValue = '24,000';
  String frefallTimeValue = '56';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            width: MediaQuery.of(context).size.width,
            //height: MediaQuery.of(context).size.height,
            margin:
                EdgeInsets.only(top: 15, left: 5.0, right: 5.0, bottom: 20.0),
            color: Colors.white,
            child: Container(
              color: Colors.blueGrey[50],
              //height: MediaQuery.of(context).size.height / 2,
              margin:
                  EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    // height: MediaQuery.of(context).size.height / 2,
                    //color: Colors.yellow,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8),
                        firstRow(),
                        SizedBox(height: 8),
                        //secondRow(context),
                        secondRow(),
                        SizedBox(height: 20),
                        thirdRow(),
                        SizedBox(height: 30),
                        fouthRow(),
                        SizedBox(height: 8),
                      ],
                    ),
                  ),

                  // divider start //
                  Container(
                    height: 6.0,
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 7.0, bottom: 4.0),
                  ),
                  // divider end //

                  Container(
                    //height: MediaQuery.of(context).size.height / 3,
                    //color: Colors.red,
                    child: Container(
                      //color: Colors.grey[300],
                      // height: MediaQuery.of(context).size.height /
                      //     4.5,
                      margin: EdgeInsets.only(left: 5.0, top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "Gear: ",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Image.asset(
                                            "assets/img/RIGSYSTEM.png",
                                            height: 50.0,
                                            fit: BoxFit.contain,
                                          ),
                                          SizedBox(
                                            width: 2.0,
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: <Widget>[
                                              Row(
                                                children: <Widget>[
                                                  Image.asset(
                                                    "assets/img/CONTAINER.png",
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    width: 1.0,
                                                  ),
                                                  Text("Vortex 135 STD",
                                                      style: TextStyle(
                                                          fontSize: 11.0,
                                                          color: Colors.black)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image.asset(
                                                    "assets/img/MAINCANOPY.png",
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    width: 1.0,
                                                  ),
                                                  Text("Vortex 135 ",
                                                      style: TextStyle(
                                                          fontSize: 10.0,
                                                          color: Colors.black)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image.asset(
                                                    "assets/img/AAD.png",
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    width: 1.0,
                                                  ),
                                                  Text("Smart UPV 150",
                                                      style: TextStyle(
                                                          fontSize: 10.0,
                                                          color: Colors.black)),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 10.0,
                                              ),
                                              Row(
                                                children: <Widget>[
                                                  Image.asset(
                                                    "assets/img/WINGSUITS.png",
                                                    height: 20.0,
                                                    fit: BoxFit.contain,
                                                  ),
                                                  SizedBox(
                                                    width: 1.0,
                                                  ),
                                                  Text("Cypress 2 Expert",
                                                      style: TextStyle(
                                                          fontSize: 10.0,
                                                          color: Colors.black)),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      Icon(Icons.camera_alt),
                                      SizedBox(
                                        width: 5.0,
                                      ),
                                      Text("Go Pro Hero 4",
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.black)),
                                    ],
                                  ),
                                ],
                              ),

                              //first item container
                            ),
                          ),
                          SizedBox(
                            width: 4.0,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 4.5 + 16,
                            width: 6.0,
                            color: Colors.white,
                            margin: EdgeInsets.only(right: 5.0, left: 5.0),
                          ),

                          Expanded(
                            child: Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.present_to_all,
                                        size: 19.0,
                                        color: Colors.black,
                                      ),
                                      Text(
                                        "Tagged",
                                        style: TextStyle(
                                            fontSize: 17.0,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                          height: 150,
                                          // color: Colors.red,
                                          child: ListView.builder(
                                            itemCount: 8,
                                            itemBuilder: (BuildContext context,
                                                int index) {
                                              return Container(
                                                padding:
                                                    EdgeInsets.only(left: 5),
                                                child: Row(
                                                  children: <Widget>[
                                                    Icon(Icons.person_pin,
                                                        size: 15.0,
                                                        color: Colors.black),
                                                    SizedBox(
                                                      width: 1.0,
                                                    ),
                                                    Text("Jessica",
                                                        style: TextStyle(
                                                            fontSize: 14.0,
                                                            color:
                                                                Colors.black)),
                                                    SizedBox(
                                                      width: 6.0,
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 1.0,
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, bottom: 10),
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.add_circle,
                                            size: 18.0, color: Colors.blue),
                                        SizedBox(
                                          width: 1.0,
                                        ),
                                        Text("Tag friend",
                                            style: TextStyle(
                                                fontSize: 14.0,
                                                color: Colors.blue)),
                                      ],
                                    ),
                                  ),
                                  // Row(
                                  //   children: <Widget>[
                                  //     Row(
                                  //       children: <Widget>[
                                  //         Column(
                                  //           crossAxisAlignment: CrossAxisAlignment.start,
                                  //           children: <Widget>[
                                  //             Row(
                                  //               children: <Widget>[
                                  //                 Icon(Icons.person_pin,
                                  //                     size: 15.0,
                                  //                     color: Colors.black),
                                  //                 SizedBox(
                                  //                   width: 1.0,
                                  //                 ),
                                  //                 Text("Jessica",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10.0,
                                  //                         color: Colors.black)),
                                  //                 SizedBox(
                                  //                   width: 6.0,
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //             SizedBox(
                                  //               height: 10.0,
                                  //             ),
                                  //             Row(
                                  //               children: <Widget>[
                                  //                 Icon(Icons.person_pin,
                                  //                     size: 15.0,
                                  //                     color: Colors.black),
                                  //                 SizedBox(
                                  //                   width: 2.0,
                                  //                 ),
                                  //                 Text("Richard",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10.0,
                                  //                         color: Colors.black)),
                                  //                 SizedBox(
                                  //                   width: 6.0,
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //             SizedBox(
                                  //               height: 10.0,
                                  //             ),
                                  //             Row(
                                  //               children: <Widget>[
                                  //                 Icon(Icons.person_pin,
                                  //                     size: 15.0,
                                  //                     color: Colors.black),
                                  //                 SizedBox(
                                  //                   width: 1.0,
                                  //                 ),
                                  //                 Text("Andrew",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10.0,
                                  //                         color: Colors.black)),
                                  //                 SizedBox(
                                  //                   width: 6.0,
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //             SizedBox(
                                  //               height: 10.0,
                                  //             ),
                                  //             Row(
                                  //               children: <Widget>[
                                  //                 Icon(Icons.person_pin,
                                  //                     size: 15.0,
                                  //                     color: Colors.black),
                                  //                 SizedBox(
                                  //                   width: 1.0,
                                  //                 ),
                                  //                 Text("Naomi",
                                  //                     style: TextStyle(
                                  //                         fontSize: 10.0,
                                  //                         color: Colors.black)),
                                  //                 SizedBox(
                                  //                   width: 4.0,
                                  //                 ),
                                  //               ],
                                  //             ),
                                  //           ],
                                  //         ),
                                  //       ],
                                  //     ),
                                  //     Container(
                                  //       height: 70.0,
                                  //       width: 2.0,
                                  //       color: Colors.grey,
                                  //       margin: EdgeInsets.only(right: 4.0),
                                  //     ),
                                  //     Container(
                                  //       margin: EdgeInsets.only(top: 16),
                                  //       child: Column(
                                  //         crossAxisAlignment:
                                  //             CrossAxisAlignment.start,
                                  //         children: <Widget>[
                                  //           Row(
                                  //             children: <Widget>[
                                  //               Icon(Icons.person_pin,
                                  //                   size: 15.0,
                                  //                   color: Colors.black),
                                  //               SizedBox(
                                  //                 width: 2.0,
                                  //               ),
                                  //               Text("Oliver",
                                  //                   style: TextStyle(
                                  //                       fontSize: 10.0,
                                  //                       color: Colors.black)),
                                  //               SizedBox(
                                  //                 width: 6.0,
                                  //               ),
                                  //             ],
                                  //           ),
                                  //           SizedBox(
                                  //             height: 10.0,
                                  //           ),
                                  //           Row(
                                  //             children: <Widget>[
                                  //               Icon(Icons.person_pin,
                                  //                   size: 15.0,
                                  //                   color: Colors.black),
                                  //               SizedBox(
                                  //                 width: 2.0,
                                  //               ),
                                  //               Text("Andrew",
                                  //                   style: TextStyle(
                                  //                       fontSize: 10.0,
                                  //                       color: Colors.black)),
                                  //               SizedBox(
                                  //                 width: 6.0,
                                  //               ),
                                  //             ],
                                  //           ),
                                  //           SizedBox(
                                  //             height: 10.0,
                                  //           ),
                                  //           Row(
                                  //             children: <Widget>[
                                  //               Icon(Icons.person_pin,
                                  //                   size: 15.0,
                                  //                   color: Colors.black),
                                  //               SizedBox(
                                  //                 width: 2.0,
                                  //               ),
                                  //               Text("Cameron",
                                  //                   style: TextStyle(
                                  //                       fontSize: 10.0,
                                  //                       color: Colors.black)),
                                  //               SizedBox(
                                  //                 width: 6.0,
                                  //               ),
                                  //             ],
                                  //           ),
                                  //           SizedBox(
                                  //             height: 10.0,
                                  //           ),
                                  //           Row(
                                  //             children: <Widget>[
                                  //               Icon(Icons.add_circle,
                                  //                   size: 15.0,
                                  //                   color: Colors.blue),
                                  //               SizedBox(
                                  //                 width: 1.0,
                                  //               ),
                                  //               Text("Tag friend",
                                  //                   style: TextStyle(
                                  //                       fontSize: 9.0,
                                  //                       color: Colors.blue)),
                                  //             ],
                                  //           ),
                                  //           SizedBox(
                                  //             height: 10.0,
                                  //           ),
                                  //         ],
                                  //       ),
                                  //     ),
                                  //   ],
                                  // ),
                                ],
                              ),

                              //first item container
                            ),
                          ),

                          //main row for this part
                        ],
                      ),
                    ),
                  ),

                  // divider start //
                  Container(
                    height: 6.0,
                    color: Colors.white,
                    margin: EdgeInsets.only(top: 7.0, bottom: 4.0),
                  ),
                  // divider end //
                  _buildCommentWidget(),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: Padding(
          padding: const EdgeInsets.all(8.0),
          child: FloatingActionButton(
            elevation: 5.0,
            backgroundColor: Colors.deepPurple,
            child: Icon(
              Icons.done,
              color: Colors.white,
              size: 35.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      ),
    );
  }

  Row fouthRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "FREEFALL TIME",
                  style: TextStyle(fontSize: 14.0, color: Colors.black),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showFreefallDialog(frefallTimeValue);
                        },
                        child: Text(
                          frefallTimeValue,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 90),
                      child: Text(
                        's',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(
                    right: 15,
                  ),
                  child: Image.asset(
                    "assets/img/locationIcon.png",
                    height: 40.0,
                    fit: BoxFit.contain,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                        "Skydive Mossel Bay",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 14.0,
                            height: 1.9,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }

  Row thirdRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "MAXIMUM",
                  style: TextStyle(
                      fontSize: 14.0, height: 1.9, color: Colors.black),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showMaximumDialog(maximunValue);
                        },
                        child: Text(
                          maximunValue,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Text(
                        'mph',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(2, 2, 5, 2),
          child: Icon(
            Icons.android,
            color: Colors.black54,
            size: 25.0,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(right: 1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "DEPLOYMENT  ALTITUDE",
                  style: TextStyle(
                      fontSize: 12.0, height: 1.5, color: Colors.black),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 2),
                        child: GestureDetector(
                          onTap: () {
                            _showDeploymentDialog(deploymentValue);
                          },
                          child: Text(
                            deploymentValue,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: Text(
                        'ft',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row secondRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          child: Container(
            padding: EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "AVERAGE",
                  style: TextStyle(
                      fontSize: 14.0, height: 1.9, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showAvarageDialog(avarageValue);
                        },
                        child: Text(
                          avarageValue,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 22),
                      child: Text(
                        'mph',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(8, 2, 10, 2),
          child: Icon(
            Icons.people_outline,
            color: Colors.black87,
            size: 25.0,
          ),
        ),
        Expanded(
          child: Container(
            padding: EdgeInsets.only(right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "EXIT ALTITUDE",
                  style: TextStyle(
                      fontSize: 14.0, height: 1.9, color: Colors.black),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          _showExitAltitudeDialog(exitAltitudeValue);
                        },
                        child: Text(
                          exitAltitudeValue,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 25.0,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Text(
                        'ft',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Row firstRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          " SPEED",
          style: TextStyle(fontSize: 16.0, height: 1.9, color: Colors.black),
        ),
        Row(
          //mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Icon(
              Icons.airplanemode_active,
              color: Colors.grey,
              size: 35.0,
            ),
            Text(
              "King Air ZH-OHB",
              style: (TextStyle(fontSize: 14.0, color: Colors.grey)),
            ),
          ],
        ),
        Icon(
          Icons.play_circle_outline,
          color: Colors.blue,
          size: 35.0,
        ),
      ],
    );
  }

  _buildCommentWidget() {
    return Container(
      padding: EdgeInsets.only(left: 10, top: 15, bottom: 10, right: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Comment',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontSize: 16,
                fontFamily: 'Roboto',
                color: Colors.black87,
                fontWeight: FontWeight.normal),
          ),
          Container(
            //height: 100,
            padding: EdgeInsets.only(top: 5),
            //decoration: BoxDecoration(color: Colors.red),
            child: TextField(
              maxLines: 15,
              minLines: 1,
              scrollPhysics: BouncingScrollPhysics(),
              style:
                  TextStyle(color: Colors.black54, fontSize: 16, height: 1.5),
              cursorColor: Color(0xFF9b9b9b),
              controller: commentController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText:
                    "7 way freefly with Jess, Noami, Richard, Andrew and Spinner",
                hintStyle: TextStyle(
                    fontSize: 16.0, color: Colors.black54, height: 1.5),
                border: InputBorder.none,
                contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 10),
                fillColor: Colors.blueGrey[50],
                filled: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _showAvarageDialog(String value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Edit the Value'),
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return SingleChildScrollView(
                  child: Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "AVARAGE",
                        //   style: TextStyle(
                        //       fontSize: 14.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                maxLines: 5,
                                minLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: avarageController,
                                onChanged: (text) {
                                  setState(() {
                                    avarageValue = text;
                                    print(value);
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  // suffix: Text('mph'),
                                  // suffixText: 'mph',
                                  // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
                                  hintText: value,
                                  hintStyle: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  fillColor: Colors.blueGrey[50],
                                  filled: true,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, right: 10),
                            //   child: Text(
                            //     'mph',
                            //     style: TextStyle(
                            //         fontSize: 20.0,
                            //         color: Colors.black,
                            //         height: 1.5,
                            //         fontWeight: FontWeight.w500),
                            //   ),
                            // )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            shape: RoundedRectangleBorder(),
                            color: appColor,
                            child: Text('Ok'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }));
        });
  }

  void _showMaximumDialog(String value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Edit the Value'),
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return SingleChildScrollView(
                  child: Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "AVARAGE",
                        //   style: TextStyle(
                        //       fontSize: 14.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                maxLines: 5,
                                minLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: maximumController,
                                onChanged: (text) {
                                  setState(() {
                                    maximunValue = text;
                                    print(maximunValue);
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  // suffix: Text('mph'),
                                  // suffixText: 'mph',
                                  // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
                                  hintText: value,
                                  hintStyle: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  fillColor: Colors.blueGrey[50],
                                  filled: true,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, right: 10),
                            //   child: Text(
                            //     'mph',
                            //     style: TextStyle(
                            //         fontSize: 20.0,
                            //         color: Colors.black,
                            //         height: 1.5,
                            //         fontWeight: FontWeight.w500),
                            //   ),
                            // )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            shape: RoundedRectangleBorder(),
                            color: appColor,
                            child: Text('Ok'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }));
        });
  }

  void _showExitAltitudeDialog(String value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Edit the Value'),
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return SingleChildScrollView(
                  child: Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "AVARAGE",
                        //   style: TextStyle(
                        //       fontSize: 14.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                maxLines: 5,
                                minLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: exitAltitudeController,
                                onChanged: (text) {
                                  setState(() {
                                    exitAltitudeValue = text;
                                    print(exitAltitudeValue);
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  // suffix: Text('mph'),
                                  // suffixText: 'mph',
                                  // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
                                  hintText: value,
                                  hintStyle: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  fillColor: Colors.blueGrey[50],
                                  filled: true,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, right: 10),
                            //   child: Text(
                            //     'mph',
                            //     style: TextStyle(
                            //         fontSize: 20.0,
                            //         color: Colors.black,
                            //         height: 1.5,
                            //         fontWeight: FontWeight.w500),
                            //   ),
                            // )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            shape: RoundedRectangleBorder(),
                            color: appColor,
                            child: Text('Ok'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }));
        });
  }

  void _showDeploymentDialog(String value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Edit the Value'),
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return SingleChildScrollView(
                  child: Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "AVARAGE",
                        //   style: TextStyle(
                        //       fontSize: 14.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                maxLines: 5,
                                minLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: deploymentAltitudeController,
                                onChanged: (text) {
                                  setState(() {
                                    deploymentValue = text;
                                    print(deploymentValue);
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  // suffix: Text('mph'),
                                  // suffixText: 'mph',
                                  // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
                                  hintText: value,
                                  hintStyle: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  fillColor: Colors.blueGrey[50],
                                  filled: true,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, right: 10),
                            //   child: Text(
                            //     'mph',
                            //     style: TextStyle(
                            //         fontSize: 20.0,
                            //         color: Colors.black,
                            //         height: 1.5,
                            //         fontWeight: FontWeight.w500),
                            //   ),
                            // )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            shape: RoundedRectangleBorder(),
                            color: appColor,
                            child: Text('Ok'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }));
        });
  }

  void _showFreefallDialog(String value) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
              shape:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
              title: Text('Edit the Value'),
              content: StatefulBuilder(
                  builder: (BuildContext context, StateSetter setState) {
                return SingleChildScrollView(
                  child: Container(
                    height: 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        // Text(
                        //   "AVARAGE",
                        //   style: TextStyle(
                        //       fontSize: 14.0,
                        //       color: Colors.black,
                        //       fontWeight: FontWeight.w500),
                        // ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Flexible(
                              child: TextField(
                                maxLines: 5,
                                minLines: 1,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    height: 1.5,
                                    fontWeight: FontWeight.w500),
                                cursorColor: Color(0xFF9b9b9b),
                                controller: freefallTimeController,
                                onChanged: (text) {
                                  setState(() {
                                    frefallTimeValue = text;
                                    print(frefallTimeValue);
                                  });
                                },
                                keyboardType: TextInputType.number,
                                decoration: InputDecoration(
                                  // suffix: Text('mph'),
                                  // suffixText: 'mph',
                                  // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
                                  hintText: value,
                                  hintStyle: TextStyle(
                                      fontSize: 24.0,
                                      color: Colors.black,
                                      height: 1.5,
                                      fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                  contentPadding:
                                      EdgeInsets.fromLTRB(10, 0, 0, 0),
                                  fillColor: Colors.blueGrey[50],
                                  filled: true,
                                ),
                              ),
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(top: 5, right: 10),
                            //   child: Text(
                            //     'mph',
                            //     style: TextStyle(
                            //         fontSize: 20.0,
                            //         color: Colors.black,
                            //         height: 1.5,
                            //         fontWeight: FontWeight.w500),
                            //   ),
                            // )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          alignment: Alignment.bottomCenter,
                          child: RaisedButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            shape: RoundedRectangleBorder(),
                            color: appColor,
                            child: Text('Ok'),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }));
        });
  }
}

//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Container(
//             width: MediaQuery.of(context).size.width,
//             //height: MediaQuery.of(context).size.height,
//             margin:
//                 EdgeInsets.only(top: 15, left: 5.0, right: 5.0, bottom: 20.0),
//             color: Colors.white,
//             child: Container(
//               color: Colors.blueGrey[50],
//               //height: MediaQuery.of(context).size.height / 2,
//               margin:
//                   EdgeInsets.only(top: 8.0, left: 8.0, right: 8.0, bottom: 8.0),
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Column(
//                         children: <Widget>[
//                           Text(
//                             " SPEED",
//                             style:
//                                 TextStyle(fontSize: 16.0, color: Colors.black),
//                           ),
//                         ],
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: <Widget>[
//                           Row(
//                             crossAxisAlignment: CrossAxisAlignment.center,
//                             children: <Widget>[
//                               Icon(
//                                 Icons.airplanemode_active,
//                                 color: Colors.grey,
//                                 size: 40.0,
//                               ),
//                               Text(
//                                 "King Air ZH-OHB",
//                                 style: (TextStyle(
//                                     fontSize: 14.0, color: Colors.grey)),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                       Column(
//                         children: <Widget>[
//                           Icon(
//                             Icons.play_circle_outline,
//                             color: Colors.blue,
//                             size: 40.0,
//                           ),
//                         ],
//                       ),
//                     ],
//                   ),

//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   // Row(
//                   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   //   children: <Widget>[
//                   //     Text(
//                   //       "AVERAGE",
//                   //       style: TextStyle(fontSize: 13.0, color: Colors.black38),
//                   //     ),
//                   //     SizedBox(
//                   //       width: 15.0,
//                   //     ),
//                   //     Text(
//                   //       " EXIT ALTITUDE",
//                   //       style: TextStyle(fontSize: 13.0, color: Colors.black),
//                   //     ),
//                   //   ],
//                   // ),

//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Text(
//                         "AVERAGE",
//                         style: TextStyle(fontSize: 13.0, color: Colors.black38),
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: <Widget>[
//                           Expanded(
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: <Widget>[
//                                 Expanded(
//                                   child: Text("135",
//                                       maxLines: 2,
//                                       overflow: TextOverflow.ellipsis,
//                                       style: TextStyle(
//                                           fontSize: 35.0, color: Colors.black)),
//                                 ),
//                                 Expanded(
//                                   child: Text(
//                                     "mph",
//                                     style: TextStyle(
//                                         fontSize: 18.0, color: Colors.black),
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                           Icon(
//                             Icons.people_outline,
//                             size: 35.0,
//                             color: Colors.black,
//                           ),
//                           Expanded(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: <Widget>[
//                                 Text(
//                                   " EXIT ALTITUDE",
//                                   style: TextStyle(
//                                       fontSize: 13.0, color: Colors.black),
//                                 ),
//                                 Row(
//                                   mainAxisAlignment: MainAxisAlignment.start,
//                                   children: <Widget>[
//                                     Expanded(
//                                       child: Text(
//                                         "16,100",
//                                         maxLines: 2,
//                                         overflow: TextOverflow.ellipsis,
//                                         style: TextStyle(
//                                             fontSize: 30.0,
//                                             color: Colors.black),
//                                       ),
//                                     ),
//                                     Text(
//                                       "ft",
//                                       style: TextStyle(
//                                           fontSize: 28.0, color: Colors.black),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ),
//                     ],
//                   ),

//                   SizedBox(
//                     height: 10.0,
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Text(
//                         "MAXIMUM",
//                         style: TextStyle(fontSize: 13.0, color: Colors.black38),
//                       ),
//                       SizedBox(
//                         width: 15.0,
//                       ),
//                       Text(
//                         " DEPLOYMENT ALTITUDE",
//                         style: TextStyle(fontSize: 13.0, color: Colors.black),
//                       ),
//                     ],
//                   ),
//                   SizedBox(
//                     height: 5.0,
//                   ),

//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: <Widget>[
//                           Text("143",
//                               style: TextStyle(
//                                   fontSize: 35.0, color: Colors.black)),
//                           Text(
//                             "mph",
//                             style:
//                                 TextStyle(fontSize: 18.0, color: Colors.black),
//                           )
//                         ],
//                       ),
//                       Icon(
//                         Icons.android,
//                         size: 35.0,
//                         color: Colors.black,
//                       ),
//                       Text(
//                         "24,000ft",
//                         style: TextStyle(fontSize: 30.0, color: Colors.black),
//                       )
//                     ],
//                   ),

//                   SizedBox(
//                     height: 15.0,
//                   ),
//                   Column(
//                     children: <Widget>[
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         children: <Widget>[
//                           SizedBox(
//                             width: 35.0,
//                           ),
//                           Text(
//                             "FREEFALL TIME",
//                             style:
//                                 TextStyle(fontSize: 14.0, color: Colors.black),
//                           ),
//                         ],
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: <Widget>[
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: <Widget>[
//                               SizedBox(
//                                 width: 39.0,
//                               ),
//                               Text("56",
//                                   style: TextStyle(
//                                       fontSize: 35.0, color: Colors.black)),
//                               Text(
//                                 "s",
//                                 style: TextStyle(
//                                     fontSize: 18.0, color: Colors.black),
//                               )
//                             ],
//                           ),
//                           Column(
//                             children: <Widget>[
//                               Icon(
//                                 Icons.location_on,
//                                 size: 30.0,
//                                 color: Colors.black,
//                               ),
//                               Text(
//                                 "Skydive Mossel Bay",
//                                 style: TextStyle(
//                                     fontSize: 14.0, color: Colors.black),
//                               ),
//                             ],
//                           )
//                         ],
//                       ),
//                       SizedBox(
//                         height: 7.0,
//                       ),
//                       //divider
//                       Container(
//                         color: Colors.white,
//                         height: 6.0,
//                       ),
//                       //divider
//                       Container(
//                         //color: Colors.grey[300],
//                         // height: MediaQuery.of(context).size.height /
//                         //     4.5,
//                         margin: EdgeInsets.only(left: 0.0, top: 10.0),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: <Widget>[
//                             Expanded(
//                               child: Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Text(
//                                           "Gear: ",
//                                           style: TextStyle(
//                                               fontSize: 17.0,
//                                               color: Colors.black),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 10.0,
//                                     ),
//                                     Row(
//                                       children: <Widget>[
//                                         Row(
//                                           children: <Widget>[
//                                             Image.asset(
//                                               "assets/img/RIGSYSTEM.png",
//                                               height: 50.0,
//                                               fit: BoxFit.contain,
//                                             ),
//                                             SizedBox(
//                                               width: 2.0,
//                                             ),
//                                           ],
//                                         ),
//                                         Row(
//                                           children: <Widget>[
//                                             Column(
//                                               mainAxisAlignment:
//                                                   MainAxisAlignment.start,
//                                               children: <Widget>[
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Image.asset(
//                                                       "assets/img/CONTAINER.png",
//                                                       height: 20.0,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Vortex 135 STD",
//                                                         style: TextStyle(
//                                                             fontSize: 11.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10.0,
//                                                 ),
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Image.asset(
//                                                       "assets/img/MAINCANOPY.png",
//                                                       height: 20.0,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Vortex 135 ",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10.0,
//                                                 ),
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Image.asset(
//                                                       "assets/img/AAD.png",
//                                                       height: 20.0,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Smart UPV 150",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10.0,
//                                                 ),
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Image.asset(
//                                                       "assets/img/WINGSUITS.png",
//                                                       height: 20.0,
//                                                       fit: BoxFit.contain,
//                                                     ),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Cypress 2 Expert",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 10.0,
//                                     ),
//                                     Row(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: <Widget>[
//                                         Icon(Icons.camera_alt),
//                                         SizedBox(
//                                           width: 5.0,
//                                         ),
//                                         Text("Go Pro Hero 4",
//                                             style: TextStyle(
//                                                 fontSize: 14.0,
//                                                 color: Colors.black)),
//                                       ],
//                                     ),
//                                   ],
//                                 ),

//                                 //first item container
//                               ),
//                             ),
//                             SizedBox(
//                               width: 4.0,
//                             ),
//                             Container(
//                               height:
//                                   MediaQuery.of(context).size.height / 4.5 + 16,
//                               width: 6.0,
//                               color: Colors.white,
//                               margin: EdgeInsets.only(right: 5.0, left: 5.0),
//                             ),

//                             Expanded(
//                               child: Container(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: <Widget>[
//                                     Row(
//                                       children: <Widget>[
//                                         Icon(
//                                           Icons.present_to_all,
//                                           size: 19.0,
//                                           color: Colors.black,
//                                         ),
//                                         Text(
//                                           "Tagged",
//                                           style: TextStyle(
//                                               fontSize: 17.0,
//                                               color: Colors.black),
//                                         ),
//                                       ],
//                                     ),
//                                     SizedBox(
//                                       height: 5.0,
//                                     ),
//                                     Row(
//                                       children: <Widget>[
//                                         Row(
//                                           children: <Widget>[
//                                             Column(
//                                               crossAxisAlignment:
//                                                   CrossAxisAlignment.start,
//                                               children: <Widget>[
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Icon(Icons.person_pin,
//                                                         size: 15.0,
//                                                         color: Colors.black),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Jessica",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                     SizedBox(
//                                                       width: 6.0,
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10.0,
//                                                 ),
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Icon(Icons.person_pin,
//                                                         size: 15.0,
//                                                         color: Colors.black),
//                                                     SizedBox(
//                                                       width: 2.0,
//                                                     ),
//                                                     Text("Richard",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                     SizedBox(
//                                                       width: 6.0,
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10.0,
//                                                 ),
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Icon(Icons.person_pin,
//                                                         size: 15.0,
//                                                         color: Colors.black),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Andrew",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                     SizedBox(
//                                                       width: 6.0,
//                                                     ),
//                                                   ],
//                                                 ),
//                                                 SizedBox(
//                                                   height: 10.0,
//                                                 ),
//                                                 Row(
//                                                   children: <Widget>[
//                                                     Icon(Icons.person_pin,
//                                                         size: 15.0,
//                                                         color: Colors.black),
//                                                     SizedBox(
//                                                       width: 1.0,
//                                                     ),
//                                                     Text("Naomi",
//                                                         style: TextStyle(
//                                                             fontSize: 10.0,
//                                                             color:
//                                                                 Colors.black)),
//                                                     SizedBox(
//                                                       width: 4.0,
//                                                     ),
//                                                   ],
//                                                 ),
//                                               ],
//                                             ),
//                                           ],
//                                         ),
//                                         Container(
//                                           height: 70.0,
//                                           width: 2.0,
//                                           color: Colors.grey,
//                                           margin: EdgeInsets.only(right: 4.0),
//                                         ),
//                                         Container(
//                                           margin: EdgeInsets.only(top: 16),
//                                           child: Column(
//                                             crossAxisAlignment:
//                                                 CrossAxisAlignment.start,
//                                             children: <Widget>[
//                                               Row(
//                                                 children: <Widget>[
//                                                   Icon(Icons.person_pin,
//                                                       size: 15.0,
//                                                       color: Colors.black),
//                                                   SizedBox(
//                                                     width: 2.0,
//                                                   ),
//                                                   Text("Oliver",
//                                                       style: TextStyle(
//                                                           fontSize: 10.0,
//                                                           color: Colors.black)),
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
//                                                   Icon(Icons.person_pin,
//                                                       size: 15.0,
//                                                       color: Colors.black),
//                                                   SizedBox(
//                                                     width: 2.0,
//                                                   ),
//                                                   Text("Andrew",
//                                                       style: TextStyle(
//                                                           fontSize: 10.0,
//                                                           color: Colors.black)),
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
//                                                   Icon(Icons.person_pin,
//                                                       size: 15.0,
//                                                       color: Colors.black),
//                                                   SizedBox(
//                                                     width: 2.0,
//                                                   ),
//                                                   Text("Cameron",
//                                                       style: TextStyle(
//                                                           fontSize: 10.0,
//                                                           color: Colors.black)),
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
//                                                   Icon(Icons.add_circle,
//                                                       size: 15.0,
//                                                       color: Colors.blue),
//                                                   SizedBox(
//                                                     width: 1.0,
//                                                   ),
//                                                   Text("Tag friend",
//                                                       style: TextStyle(
//                                                           fontSize: 9.0,
//                                                           color: Colors.blue)),
//                                                 ],
//                                               ),
//                                               SizedBox(
//                                                 height: 10.0,
//                                               ),
//                                             ],
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),

//                                 //first item container
//                               ),
//                             ),

//                             //main row for this part
//                           ],
//                         ),
//                       ),

//                       Container(
//                         height: 6.0,
//                         color: Colors.white,
//                         margin: EdgeInsets.only(top: 7.0, bottom: 4.0),
//                       ),

//                       _buildCommentWidget(),
//                       // Container(
//                       //   margin: EdgeInsets.only(top: 5.0, left: 6.0),
//                       //   width: MediaQuery.of(context).size.width,
//                       //   child: Column(
//                       //     crossAxisAlignment: CrossAxisAlignment.start,
//                       //     children: <Widget>[
//                       //       Text(
//                       //         "Comments:",
//                       //         style: TextStyle(
//                       //             fontSize: 20.0, color: Colors.black38),
//                       //       ),
//                       //       SizedBox(
//                       //         height: 7.0,
//                       //       ),
//                       //       Text(
//                       //         "7 way freefly with Jess, Noami, Richard, Andrew and Spinner",
//                       //         maxLines: 5,
//                       //         style: TextStyle(
//                       //             fontSize: 16.0, color: Colors.black38),
//                       //       ),
//                       //     ],
//                       //   ),
//                       // ),
//                     ],
//                   ),
//                   //main Column

//                   SizedBox(
//                     height: 20.0,
//                   ),

//                   // new RawMaterialButton(
//                   //   onPressed: () {
//                   //     Navigator.pop(context);
//                   //   },
//                   //   child: new Icon(
//                   //     Icons.done,
//                   //     color: Colors.white,
//                   //     size: 35.0,
//                   //   ),
//                   //   shape: new CircleBorder(),
//                   //   elevation: 5.0,
//                   //   fillColor: Colors.deepPurple,
//                   //   padding: const EdgeInsets.all(15.0),
//                   // ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//         floatingActionButton: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: FloatingActionButton(
//             elevation: 5.0,
//             backgroundColor: Colors.deepPurple,
//             child: Icon(
//               Icons.done,
//               color: Colors.white,
//               size: 35.0,
//             ),
//             onPressed: () {
//               Navigator.pop(context);
//             },
//           ),
//         ),
//         floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       ),
//     );
//   }

//   /////////////////////////      Comment Container Start    ////////////////////////////////
//   _buildCommentWidget() {
//     return Container(
//       padding: EdgeInsets.only(left: 10, top: 15, bottom: 10, right: 8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           Text(
//             'Comment',
//             maxLines: 1,
//             overflow: TextOverflow.ellipsis,
//             style: TextStyle(
//                 fontSize: 16,
//                 fontFamily: 'Roboto',
//                 color: Colors.black87,
//                 fontWeight: FontWeight.normal),
//           ),
//           Container(
//             //height: 100,
//             padding: EdgeInsets.only(top: 5),
//             //decoration: BoxDecoration(color: Colors.red),
//             child: TextField(
//               maxLines: 15,
//               minLines: 1,
//               scrollPhysics: BouncingScrollPhysics(),
//               style:
//                   TextStyle(color: Colors.black54, fontSize: 16, height: 1.5),
//               cursorColor: Color(0xFF9b9b9b),
//               controller: commentController,
//               keyboardType: TextInputType.text,
//               decoration: InputDecoration(
//                 hintText:
//                     "7 way freefly with Jess, Noami, Richard, Andrew and Spinner",
//                 hintStyle: TextStyle(
//                     fontSize: 16.0, color: Colors.black54, height: 1.5),
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.fromLTRB(12, 10, 8, 10),
//                 fillColor: Colors.blueGrey[50],
//                 filled: true,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// /////////////////////////      Comment Container End    ////////////////////////////////
// }

// Row secondRowww(BuildContext context) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.start,
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: <Widget>[
//       Expanded(
//         child: Container(
//           padding: EdgeInsets.only(left: 20),
//           width: MediaQuery.of(context).size.width / 2.5,
//           color: Colors.red,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 "AVERAGE",
//                 style: TextStyle(fontSize: 13.0, color: Colors.black),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Expanded(
//                     child: TextField(
//                       maxLines: 5,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 24,
//                           height: 1.5,
//                           fontWeight: FontWeight.w500),
//                       cursorColor: Color(0xFF9b9b9b),
//                       controller: avarageController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         //suffix: Text('mph'),
//                         // suffixText: 'mph',
//                         // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
//                         hintText: "135",
//                         hintStyle: TextStyle(
//                             fontSize: 24.0,
//                             color: Colors.black,
//                             height: 1.5,
//                             fontWeight: FontWeight.w500),
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.fromLTRB(3, 0, 0, 0),
//                         fillColor: Colors.blueGrey[50],
//                         filled: true,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                       child: Padding(
//                     padding: const EdgeInsets.only(top: 5),
//                     child: Text(
//                       'mph',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.black,
//                           height: 1.5,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   ))
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//       Container(
//         padding: EdgeInsets.only(right: 8),
//         //width: MediaQuery.of(context).size.width / 3,
//         child: Icon(
//           Icons.people_outline,
//           size: 35.0,
//           color: Colors.black,
//         ),
//       ),
//       Expanded(
//         child: Container(
//           color: Colors.red,
//           width: MediaQuery.of(context).size.width / 2.5,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               Text(
//                 "EXIT ALTITUDE",
//                 style: TextStyle(fontSize: 13.0, color: Colors.black),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Flexible(
//                     child: TextField(
//                       maxLines: 5,
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontSize: 24,
//                           height: 1.5,
//                           fontWeight: FontWeight.w500),
//                       cursorColor: Color(0xFF9b9b9b),
//                       controller: exitAltitudeController,
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         //suffix: Text('mph'),
//                         // suffixText: 'mph',
//                         // suffixStyle: TextStyle(fontSize: 22.0, color: Colors.black,),
//                         hintText: "16,100",
//                         hintStyle: TextStyle(
//                             fontSize: 24.0,
//                             color: Colors.black,
//                             height: 1.5,
//                             fontWeight: FontWeight.w500),
//                         border: InputBorder.none,
//                         contentPadding: EdgeInsets.fromLTRB(10, 0, 0, 0),
//                         fillColor: Colors.blueGrey[50],
//                         filled: true,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 5, right: 10),
//                     child: Text(
//                       'ft',
//                       style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.black,
//                           height: 1.5,
//                           fontWeight: FontWeight.w500),
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     ],
//   );
// }
