import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:riser/myrig.dart';
import '../myrig.dart';

class RigGear extends StatefulWidget {
  @override
  _RigGearState createState() => _RigGearState();
}

class _RigGearState extends State<RigGear> {
  int _current;
 
  static bool  rigItems = false;

  final items = List<Container>.generate(
    3,
    (i) => Container(
      color: Colors.grey[200],
      height: 70.0,
      margin: EdgeInsets.only(right: 5),
      padding: EdgeInsets.only(top: 3.0, bottom: 3.0),
      child: Image.asset(
        'assets/img/RIGSYSTEM.png',
        //colorBlendMode:BlendMode.overlay,
        height: 75.0,
        fit: BoxFit.contain,
      ),
    ),
    //  child: Text("Heading $i")),
    // : Text("Sender $i", "Message body $i"),
  );
  @override
  Widget build(BuildContext context) {
    return 
      
      //physics: BouncingScrollPhysics(),
      Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.grey[300],
        padding: EdgeInsets.only(top: 3),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // SizedBox(
                //   height: 40.0,
                //   width: 13.0,
                // ),
                Container(
                  padding:
                      EdgeInsets.only(top: 5, bottom: 5, left: 5.0, right: 5.0),
                  child: Text(
                    'Rigs',
                    style: (TextStyle(fontSize: 20.0, color: Colors.black)),
                  ),
                ),
              ],
            ),
            Container(
              // alignment: Alignment.topLeft,
              margin: EdgeInsets.only(top: 8, bottom: 8),
              padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey), color: Colors.white),
              child: Container(
                
                child: CarouselSlider(
                  
                  items: items,
                  height: 120,
                  //aspectRatio: 4,
                  viewportFraction: 0.4,
                  initialPage: 1,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),

                  autoPlayCurve: Curves.fastOutSlowIn,
                  pauseAutoPlayOnTouch: Duration(seconds: 10),
                  enlargeCenterPage: true,
                  onPageChanged: (index) {
                    setState(() {
                      _current = index;
                      
                     
                    });
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              // height: 100.0,
              // margin: EdgeInsets.only(left: 18.0, right: 18.0, bottom: 7.0),
              // width: MediaQuery.of(context).size.width,
              // color: Colors.white24,
              // child: Image.asset(
              //   "assets/img/gearimage2.jpg",
              //   height: 75.0,
              //   fit: BoxFit.contain,
              // ),
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                  width: 13.0,
                ),
                Text(
                  "CONTAINER",
                  style: (TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
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
            Row(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                  width: 13.0,
                ),
                Text(
                  "MAIN",
                  style: (TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
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
            SizedBox(height: 5.0),
            Row(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                  width: 13.0,
                ),
                Text(
                  "RESERVE",
                  style: (TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
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
            Row(
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                  width: 13.0,
                ),
                Text(
                  "AAD",
                  style: (TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
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
            new Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.only(bottom: 4.0, right: 4.0),
              width: double.infinity,
              child: FloatingActionButton(
                backgroundColor: Colors.blue,
                shape: new CircleBorder(),
                elevation: 5.0,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Myrig();
                  }));
                },
                child: Icon(Icons.add, size: 18.0, color: Colors.white,),
              ),
            )
          ],
        ),
      );
   
  }
}
