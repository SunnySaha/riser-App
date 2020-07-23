import 'package:flutter/material.dart';
import 'package:riser/gears/mygear.dart';



enum GearWidgetMarker {
  myGear,
  riggig,
  shop,
}


class geartab extends StatefulWidget {
  @override
  _geartabState createState() => _geartabState();
}

class _geartabState extends State<geartab> {

  GearWidgetMarker selectwidget = GearWidgetMarker.myGear;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: EdgeInsets.all(8.0),
        
        //physics: BouncingScrollPhysics(),
      child: SingleChildScrollView(
              child: Column(
          
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10.0),
                  alignment: Alignment.center,
                  height: 30,
                  child: Container(
                    height: 30,
                    alignment: Alignment.center,
                    child: Row(
                      children: <Widget>[
                        /////////    Rigging Container Start   //////////

                        Container(
                          height: 29,
                          child: GestureDetector(
                            onTap: () {
                              //_getDivData(false);
                              setState(() {
                                selectwidget = GearWidgetMarker.riggig;
                              });
                            },
                            child: Text(
                              "Rigging",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                    (selectwidget == GearWidgetMarker.riggig)
                                        ? Color(0XFF1A3D7A)
                                        : Colors.grey,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(
                          width: 30.0,
                        ),
                        ////////////  Rigging Container End ///////////////

                        ////////////  My Gear Container Start  //////////
                        Container(
                          height: 29,
                          child: GestureDetector(
                            onTap: () {
                              // _getDivData(true);
                              setState(() {
                                selectwidget = GearWidgetMarker.myGear;
                              });
                            },
                            child: Text(
                              "My Gear",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color:
                                    (selectwidget == GearWidgetMarker.myGear)
                                        ? Color(0XFF1A3D7A)
                                        : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        ////////////  My Gear Container End  //////////

                        SizedBox(
                          width: 30.0,
                        ),
                        //////  Shop Container Start   ///////
                        Container(
                          height: 29,
                          child: GestureDetector(
                            onTap: () {
                              //_getDivData(false);
                              setState(() {
                                selectwidget = GearWidgetMarker.shop;
                              });
                            },
                            child: Text(
                              "Shop",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: (selectwidget == GearWidgetMarker.shop)
                                    ? Color(0XFF1A3D7A)
                                    : Colors.grey,
                              ),
                            ),
                          ),
                        ),
                        ////////////  Shop Container End  //////////
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              child: getListView(),
            ),
          ],
        ),
      ),
    ),

  //   floatingActionButton: FloatingActionButton(
  // child: Icon(Icons.add),
  // onPressed: () { print('Clicked'); },),
    );
  }

   Widget getListView() {
    switch (selectwidget) {
      case GearWidgetMarker.myGear:
        return getGearWidget();
      case GearWidgetMarker.riggig:
        return getRigWidget();
      case GearWidgetMarker.shop:
        return getShopWidget();
    }
    return getGearWidget();
  }

  Widget getRigWidget() {
    return Container(
      child: Text("Rigging Widget"),
    );
  }

  Widget getShopWidget() {
    return Container(
      child: Text("Shop widget"),
    );
  }

   getGearWidget() {
    return Container(
      child: mygear(),
    );
  }

}