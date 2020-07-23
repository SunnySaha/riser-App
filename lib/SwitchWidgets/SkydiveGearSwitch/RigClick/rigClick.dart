import 'package:flutter/material.dart';

class SkydiveRigClick extends StatefulWidget {
  @override
  _SkydiveRigClickState createState() => _SkydiveRigClickState();
}

class _SkydiveRigClickState extends State<SkydiveRigClick> {
  List len1 = [5];
  List len2 = [5];
  List itemsLen = [5, 5, 5, 5];
  bool selectRig = false;
  bool selectSavedRig = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      /// height: MediaQuery.of(context).size.height / 2.8,
      /// h
      color: Colors.blueGrey[50],
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Colors.white,
                    // height: MediaQuery.of(context).size.height / 3.1,
                    // width: MediaQuery.of(context).size.width / 2.5,
                    margin: EdgeInsets.only(right: 5),
                    padding: EdgeInsets.fromLTRB(8, 8, 0, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'MY RIGS: ',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: _showRigList(),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'SAVED RIGS: ',
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: _showSavedRigList(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            'Add new rig',
                            maxLines: 4,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Roboto',
                                color: Colors.blueGrey[300],
                                fontWeight: FontWeight.w500),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: (selectRig == true || selectSavedRig == true)
                      ? Container(
                          color: Colors.blueGrey.withOpacity(0.1),
                          // height: MediaQuery.of(context).size.height / 3.1,
                          padding: EdgeInsets.fromLTRB(6, 8, 5, 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              _rigItems('CONTAINER', 'Black & Red Vortex'),
                              _rigItems('MAIN CANOPY', 'Black Hurricane 135'),
                              _rigItems('RESERVE CANOPY', 'Smart 150 LPV'),
                              _rigItems('ADD', 'Cypres'),
                            ],
                            //children: _showRigItems()
                          ),
                        )
                      : Opacity(
                          opacity: 0.25,
                          child: Container(
                            color: Colors.blueGrey[50],
                            // height: MediaQuery.of(context).size.height / 3.1,
                            margin: EdgeInsets.only(left: 5),
                            padding: EdgeInsets.fromLTRB(8, 8, 5, 5),
                          ),
                        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _showRigList() {
    // print(widget.data.order_details);
    List<Widget> list = [];

    for (var d in len1
        // widget.data.order_details
        ) {
      list.add(Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectSavedRig = false;
              selectRig = true;
              print(selectRig);
            });
          },
          child: Container(
            padding: EdgeInsets.only(left: 8.0, top: 5, bottom: 2),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: (selectRig == true)
                  ? Colors.blueGrey.withOpacity(0.1)
                  : Colors.white,
            ),
            child: Text(
              'Vortex',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  color: Colors.blueGrey[300],
                  // decoration: TextDecoration.underline,
                  // decorationStyle: TextDecorationStyle.solid,
                  // decorationColor: Colors.black.withOpacity(0.7),
                  fontWeight:
                      (selectRig == true) ? FontWeight.w500 : FontWeight.w400),
            ),
          ),
        ),
      ));
    }

    return list;
  }

  List<Widget> _showSavedRigList() {
    List<Widget> list = [];
    for (var d in len2) {
      list.add(Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectRig = false;
              selectSavedRig = true;
              print(selectSavedRig);
            });
          },
          child: Container(
            padding: EdgeInsets.only(left: 8.0, top: 5, bottom: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: (selectSavedRig == true)
                  ? Colors.blueGrey.withOpacity(0.1)
                  : Colors.white,
            ),
            child: Text(
              'Alesso',
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Roboto',
                  color: Colors.blueGrey[300],
                  fontWeight: (selectSavedRig == true)
                      ? FontWeight.w500
                      : FontWeight.w400),
            ),
          ),
        ),
      ));
    }

    return list;
  }

  // List<Widget> _showRigItems() {
  //   List<Widget> list = [];
  //   for (var d in itemsLen) {
  //     list.add(Container(
  //       padding: EdgeInsets.only(bottom: 5),
  //       child: Column(
  //         crossAxisAlignment: CrossAxisAlignment.start,
  //         children: <Widget>[
  //           Text(
  //             'CONTAINER',
  //             maxLines: 4,
  //             overflow: TextOverflow.ellipsis,
  //             style: TextStyle(
  //                 fontSize: 11,
  //                 fontFamily: 'Roboto',
  //                 color: Colors.black,
  //                 fontWeight: FontWeight.w500),
  //           ),
  //           Container(
  //             padding: EdgeInsets.fromLTRB(2, 8, 2, 8),
  //             decoration: BoxDecoration(
  //               color: Colors.blueGrey[50],
  //             ),
  //             child: Row(
  //               children: <Widget>[
  //                 Expanded(
  //                   child: Container(
  //                     padding: EdgeInsets.fromLTRB(3, 0, 1, 0),
  //                     child: Text(
  //                       'Black & Red Vortex',
  //                       maxLines: 4,
  //                       overflow: TextOverflow.ellipsis,
  //                       style: TextStyle(
  //                           fontSize: 12,
  //                           fontFamily: 'Roboto',
  //                           color: Colors.grey,
  //                           fontWeight: FontWeight.w500),
  //                     ),
  //                   ),
  //                 ),
  //                 GestureDetector(
  //                   onTap: () {
  //                     print('object');
  //                   },
  //                   child: Container(
  //                     padding: EdgeInsets.fromLTRB(3, 0, 1, 0),
  //                     child: Text(
  //                       'Edit',
  //                       maxLines: 4,
  //                       overflow: TextOverflow.ellipsis,
  //                       style: TextStyle(
  //                           fontSize: 13,
  //                           fontFamily: 'Roboto',
  //                           decoration: TextDecoration.underline,
  //                           color: Colors.blue,
  //                           fontWeight: FontWeight.w500),
  //                     ),
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         ],
  //       ),
  //     ));
  //   }

  //   return list;
  // }

  _rigItems(String title, String subtitle) {
    return Container(
     // color: Colors.red,
        padding: EdgeInsets.only(bottom: 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              title,// 'CONTAINER',
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
                        subtitle,//'Black & Red Vortex',
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
                      print('object');
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
}
