import 'package:riser/gears/rigGear.dart';
import 'package:flutter/material.dart';
import 'package:riser/main.dart';
import 'package:flutter/src/rendering/box.dart';

enum GearItemsEnum {
  rigimage,
  containerimage,
  mainimage,
  reserveimage,
  aadoneimage,
  wingsuitimage,
  cameras,
}

class mygear extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Mygear();
  }
}

class _Mygear extends State<mygear> {
  GearItemsEnum gearItemsEnum = GearItemsEnum.aadoneimage;

  //all controller

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

  //end of controller

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 85.0,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) => Card(
                  margin: EdgeInsets.all(5.0),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.rigimage;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: (gearItemsEnum == GearItemsEnum.rigimage)
                                    ? appColor
                                    : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/RIGSYSTEM.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.containerimage;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: (gearItemsEnum ==
                                        GearItemsEnum.containerimage)
                                    ? appColor
                                    : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/CONTAINER.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.mainimage;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                    (gearItemsEnum == GearItemsEnum.mainimage)
                                        ? appColor
                                        : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/MAINCANOPY.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.reserveimage;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: (gearItemsEnum ==
                                        GearItemsEnum.reserveimage)
                                    ? appColor
                                    : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/RESERVECANOPY.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.aadoneimage;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                    (gearItemsEnum == GearItemsEnum.aadoneimage)
                                        ? appColor
                                        : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/AAD.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.wingsuitimage;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                    (gearItemsEnum == GearItemsEnum.wingsuitimage)
                                        ? appColor
                                        : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/WINGSUITS.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),


                         GestureDetector(
                          onTap: () {
                            setState(() {
                              gearItemsEnum = GearItemsEnum.cameras;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color:
                                    (gearItemsEnum == GearItemsEnum.cameras)
                                        ? appColor
                                        : Colors.grey[300],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: Image.asset(
                              "assets/img/CAMERAS.png",
                              height: 80.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.grey,
              child: getImageGearItems(),
            ),
          ],
        ),
      ),
    );
  }

  getImageGearItems() {
    switch (gearItemsEnum) {
      case GearItemsEnum.rigimage:
        return RigImageItem();
        break;
      case GearItemsEnum.containerimage:
        return ContainerImageItem();
        break;
      case GearItemsEnum.mainimage:
        return MainImageItem();
        break;
      case GearItemsEnum.reserveimage:
        return ReserveImageItem();
        break;
      case GearItemsEnum.aadoneimage:
        return AadoneImageItem();
        break;
      case GearItemsEnum.wingsuitimage:
        return WingsuitImageItem();
        break;
      case GearItemsEnum.cameras:
        return CamerasImage();
        break;
    }
    return AadoneImageItem();
  }

  Widget RigImageItem() {
    return Container(
      child: RigGear(),
    );
  }

  Widget ContainerImageItem() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width / 6,
                ),
                Text(
                  'CONTAINER',
                  style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Parachute Systems",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        " Vortex",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "  UPT",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        " Vector 3",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0, top: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  showContainerDialog();
                },
                child: Icon(
                  Icons.add,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget MainImageItem() {
    return SingleChildScrollView(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width / 3,
                ),
                Text(
                  'MAINS',
                  style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Parachute Systems",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        " Vortex",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " UPT",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        " Vector 3",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0, top: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  showMainDialog();
                },
                child: Icon(
                  Icons.add,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget ReserveImageItem() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width / 2.2,
                ),
                Text(
                  'RESERVE',
                  style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Parachute Systems",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        " Vortex",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " UPT",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        " Vector 3",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0, top: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  showReserveDialog();
                },
                child: Icon(
                  Icons.add,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget AadoneImageItem() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width / 1.6,
                ),
                Text(
                  'AADS',
                  style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Airtec",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Cypres 2 Expert",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0, top: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  showAAdDialog();
                },
                child: Icon(
                  Icons.add,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget CamerasImage() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width / 1.4,
                ),
                Text(
                  'Cameras',
                  style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Airtec",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Cypres 2 Expert",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),

                      
                    ],
                  )
                ],
              ),
            ),
           
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        " Camera",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Cypres 2 Expert",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),

                      
                    ],
                  )
                ],
              ),
            ),
            
              ],
            ),

            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0, top: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  showCameraDialog();
                },
                child: Icon(
                  Icons.add,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }


  Widget WingsuitImageItem() {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey[300],
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  height: 40.0,
                  width: MediaQuery.of(context).size.width / 1.6,
                ),
                Text(
                  'WINGSUITS',
                  style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              height: 60.0,
              margin: EdgeInsets.only(left: 15.0, right: 8.0, top: 3.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "wingsuit Items",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      SizedBox(height: 10.0),
                      Text(
                        "Cypres 2 Expert",
                        style: (TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text(
                        " 0323229",
                        style: (TextStyle(fontSize: 10.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "Rides: 44",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                      SizedBox(height: 5.0),
                      Text(
                        "DOM: 6/2016",
                        style: (TextStyle(fontSize: 12.0, color: Colors.black)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0, top: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  showWingsuitDialog();
                },
                child: Icon(
                  Icons.add,
                  size: 18.0,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
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
                title: Text('Add Main Canopy'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "NAME:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: maincanopyName,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MAKE:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        TextField(
                          controller: maincanopyMake,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MODEL:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        TextField(
                          controller: maincanopyModel,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Text(
                          "Size:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        TextField(
                          controller: maincanopySize,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            new RawMaterialButton(
                              onPressed: () {},
                              child: new Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.deepPurple,
                              padding: const EdgeInsets.all(15.0),
                            ),
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
                title: Text('Add Reserve Canopy'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "NAME:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: maincanopyName,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MAKE:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        TextField(
                          controller: maincanopyMake,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MODEL:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        TextField(
                          controller: maincanopyModel,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        Text(
                          "Size:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        TextField(
                          controller: maincanopySize,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            new RawMaterialButton(
                              onPressed: () {
                                setState(() {});
                                Navigator.pop(context);
                              },
                              child: new Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.deepPurple,
                              padding: const EdgeInsets.all(15.0),
                            ),
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
                title: Text('Add Container'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "NAME:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerName,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MAKE:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerMake,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MODEL:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerModel,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            new RawMaterialButton(
                              onPressed: () {},
                              child: new Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.deepPurple,
                              padding: const EdgeInsets.all(15.0),
                            ),
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
                title: Text('Add AADs'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "NAME:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerName,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MAKE:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerMake,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MODEL:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerModel,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            new RawMaterialButton(
                              onPressed: () {},
                              child: new Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.deepPurple,
                              padding: const EdgeInsets.all(15.0),
                            ),
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


  void showWingsuitDialog() {
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
                title: Text('Add WINGSUITS'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "NAME:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerName,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MAKE:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerMake,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MODEL:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerModel,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            new RawMaterialButton(
                              onPressed: () {},
                              child: new Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.deepPurple,
                              padding: const EdgeInsets.all(15.0),
                            ),
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



  void showCameraDialog() {
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
                title: Text('Add Camera'),
                content: SingleChildScrollView(
                  child: Container(
                    color: Color(0xFFF2F2F2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "NAME:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerName,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MAKE:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerMake,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 3.0,
                        ),
                        Text(
                          "MODEL:",
                          style: TextStyle(fontSize: 18.0),
                        ),
                        SizedBox(
                          height: 6.0,
                        ),
                        TextField(
                          controller: containerModel,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            new RawMaterialButton(
                              onPressed: () {},
                              child: new Icon(
                                Icons.done,
                                color: Colors.white,
                                size: 35.0,
                              ),
                              shape: new CircleBorder(),
                              elevation: 5.0,
                              fillColor: Colors.deepPurple,
                              padding: const EdgeInsets.all(15.0),
                            ),
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
}
