import 'package:flutter/material.dart';
import 'package:riser/SwitchWidgets/SpaceDiveSwitch/CameraClick/cameraClick.dart';
import 'package:riser/SwitchWidgets/SpaceDiveSwitch/ParasuitClick/parasuitClick.dart';
import 'package:riser/SwitchWidgets/SpaceDiveSwitch/RigClick/rigClick.dart';


enum WidgetMarker {
  rig,
  parasuit,
  camera,
}

class SpaceDiveGearSwitch extends StatefulWidget {
  @override
  _SpaceDiveGearSwitchState createState() => _SpaceDiveGearSwitchState();
}

class _SpaceDiveGearSwitchState extends State<SpaceDiveGearSwitch> {
  WidgetMarker selectedWidgetMarker;
  bool _gearSelected = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.fromLTRB(2, 2, 8, 2),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /////////    Rig Container Start   //////////
                Expanded(
                    child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                      //border: (selectedWidgetMarker == WidgetMarker.rig)?null:Border.all(width: 0.5),
                      color: (selectedWidgetMarker == WidgetMarker.rig)
                        ? Colors.blueGrey[50]
                        : Colors.white,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        //_getDivData(false);
                        setState(() {
                          selectedWidgetMarker = WidgetMarker.rig;
                          _gearSelected = true;
                        });
                      },
                      child: Image.asset('assets/img/RIGSYSTEM.png',
                      height: 75,
                      // width: 60,
                      fit: BoxFit.contain,
                      )
                     // child: Column(
                      //   children: <Widget>[
                      //     Expanded(
                      //       child: Image.asset('assets/img/bag.jpg',
                      //       height: 75,
                      //       // width: 60,
                      //       fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //     Text('Vortex',
                      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey[50]),)
                      //   ],
                      // )
                    ),
                  ),
                ),
                ////////////  Rig Container End ///////////////
                SizedBox(width: 8),
                ////////////  parasuit Container Start  //////////
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                     // border: Border.all(width: 0.5),
                      color: (selectedWidgetMarker == WidgetMarker.parasuit)
                        ? Colors.blueGrey[50]
                        : Colors.white,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        // _getDivData(true);
                        setState(() {
                          selectedWidgetMarker = WidgetMarker.parasuit;
                          _gearSelected = true;
                        });
                      },
                      child: Image.asset('assets/img/WINGSUITS.png',
                      height: 75,
                      //width: 60,
                      fit: BoxFit.contain,
                      )
                     // child: Column(
                      //   children: <Widget>[
                      //     Expanded(
                      //       child: Image.asset('assets/img/parasuit2.png',
                      //       height: 75,
                      //       //width: 60,
                      //       fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //     Text('',
                      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey[50]),)
                      //   ],
                      // )
                    ),
                  ),
                ),
                ////////////  parasuit Container End  //////////
                SizedBox(width: 8),
                ////////////  camera Container Start   //////////
                Expanded(
                  child: Container(
                    height: 90,
                    decoration: BoxDecoration(
                     // border: Border.all(width: 0.5),
                    color: (selectedWidgetMarker == WidgetMarker.camera)
                        ? Colors.blueGrey[50]
                        : Colors.white,
                    ),
                    child: FlatButton(
                      onPressed: () {
                        //_getDivData(false);
                        setState(() {
                          selectedWidgetMarker = WidgetMarker.camera;
                          _gearSelected = true;
                        });
                      },
                      child: Image.asset('assets/img/CAMERAS.png',
                      height: 75,
                      //width: 60,
                      fit: BoxFit.contain,
                      )
                     // child: Column(
                      //   children: <Widget>[
                      //     Expanded(
                      //       child: Image.asset('assets/img/camera2.png',
                      //       height: 75,
                      //       //width: 60,
                      //       fit: BoxFit.cover,
                      //       ),
                      //     ),
                      //     Text('Go Pro',
                      //     style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey[50]),)
                      //   ],
                      // )
                    ),
                  ),
                ),
                ////////////  camera Container End  //////////
              ],
            ),
            _gearSelected? Container(
              child: getCustomContainer(),
            ): Container()
          ],
        ),
      ),
    );
  }

//////// Selected Body Method Start /////////
  Widget getCustomContainer() {
    switch (selectedWidgetMarker) {
      case WidgetMarker.rig:
        return getRigWidget();
      case WidgetMarker.parasuit:
        return getParasuitWidget();
      case WidgetMarker.camera:
        return getCameraWidget();
    }
    return getRigWidget();
  }
  //////// Selected Body Method End  /////////

  ////////  Calling All Body Start /////////
  Widget getRigWidget() {
    return Container(
    child: SpaceDiveRigClick(),
    );
  }

  Widget getParasuitWidget() {
    return Container(
      child: SpaceDiveParasuitClick(),
    );
  }

  Widget getCameraWidget() {
    return Container(
      child: SpaceDiveCameraClick(),
    );
  }
  //////// Calling All Body End /////////

}
