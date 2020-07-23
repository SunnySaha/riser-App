import 'package:flutter/material.dart';

class SpaceDiveParasuitClick extends StatefulWidget {
  @override
  _SpaceDiveParasuitClickState createState() => _SpaceDiveParasuitClickState();
}

class _SpaceDiveParasuitClickState extends State<SpaceDiveParasuitClick> {
List len1 = [5];
  List len2 = [];
  List itemsLen = [5, 5, 5, 5];
  bool selectWing = false;
  bool selectSavedWing = false;
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
                          padding: EdgeInsets.only(bottom: 7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'MY WINGSUITS: ',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: _showWingList(),
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
                                'SAVED WINGSUITS: ',
                                style: TextStyle(
                                    fontSize: 11, fontWeight: FontWeight.w500),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: _showSavedWingList(),
                              )
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 12, top: 5),
                          child: Text(
                            'Add new wingsuit',
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
                  child: (selectWing == true || selectSavedWing == true)
                      ? Container(
                          color: Colors.blueGrey.withOpacity(0.1),
                          // height: MediaQuery.of(context).size.height / 3.1,
                          padding: EdgeInsets.fromLTRB(6, 8, 5, 5),
                          // child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: _showWingItems()),
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

  List<Widget> _showWingList() {
    // print(widget.data.order_details);
    List<Widget> list = [];

    for (var d in len1
        // widget.data.order_details
        ) {
      list.add(Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectSavedWing = false;
              selectWing = true;
              print(selectWing);
            });
          },
          child: Container(
            padding: EdgeInsets.only(left: 8.0, top: 5, bottom: 2),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: (selectWing == true)
                  ? Colors.blueGrey.withOpacity(0.1)
                  : Colors.white,
            ),
            child: Text(
              'Birdman',
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
                      (selectWing == true) ? FontWeight.w500 : FontWeight.w400),
            ),
          ),
        ),
      ));
    }

    return list;
  }

  List<Widget> _showSavedWingList() {
    List<Widget> list = [];
    for (var d in len2) {
      list.add(Container(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selectWing = false;
              selectSavedWing = true;
              print(selectSavedWing);
            });
          },
          child: Container(
            padding: EdgeInsets.only(left: 8.0, top: 5, bottom: 5),
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: (selectSavedWing == true)
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
                  fontWeight: (selectSavedWing == true)
                      ? FontWeight.w500
                      : FontWeight.w400),
            ),
          ),
        ),
      ));
    }

    return list;
  }

  List<Widget> _showWingItems() {
    List<Widget> list = [];
    for (var d in itemsLen) {
      list.add(Container(
        padding: EdgeInsets.only(bottom: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'CONTAINER',
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
                        'Black & Red Vortex',
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
      ));
    }

    return list;
  }
}
