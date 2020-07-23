import 'package:flutter/material.dart';
import 'package:riser/SwitchWidgets/TunnelGearSwitch/CameraClick/cameraClick.dart';
import 'package:riser/SwitchWidgets/TunnelGearSwitch/ParasuitClick/parasuitClick.dart';
import 'package:riser/SwitchWidgets/TunnelGearSwitch/RigClick/rigClick.dart';


enum WidgetMarker {
  rig,
  parasuit,
  camera,
}

class TunnelGearSwitch extends StatefulWidget {
  @override
  _TunnelGearSwitchState createState() => _TunnelGearSwitchState();
}

class _TunnelGearSwitchState extends State<TunnelGearSwitch> {
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
    child: TunnelRigClick(),
    );
  }

  Widget getParasuitWidget() {
    return Container(
      child: TunnelParasuitClick(),
    );
  }

  Widget getCameraWidget() {
    return Container(
      child: TunnelCameraClick(),
    );
  }
  //////// Calling All Body End /////////

}
