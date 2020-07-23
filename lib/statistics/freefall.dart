import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../main.dart';

class freefall extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Freefall();
  }
}

class _Freefall extends State<freefall> {
  bool pinValueSwitch = false;
  void onPINValueChanged(bool value) {
    setState(() {
      pinValueSwitch = value;
      // if (pinValueSwitch == true) {
      //   _showSetPINDialog();
      // }
    });
  }
  List<charts.Series<currencyValue, int>> _seriesLineData;
  _generateData() {
    var freefalldata = [
      new currencyValue(1, 5),
      new currencyValue(2, 25),
      new currencyValue(3, 100),
      new currencyValue(4, 75),
      new currencyValue(5, 50),
    ];

    var freefalldata1 = [
      new currencyValue(1, 10),
      new currencyValue(2, 50),
      new currencyValue(3, 150),
      new currencyValue(4, 200),
      new currencyValue(5, 100),
    ];

    _seriesLineData.add(
      charts.Series(
        colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
        // areaColorFn specifies that the area skirt will be light red.
        areaColorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault.lighter,
        //colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: '109mph',
        data: freefalldata,
        domainFn: (currencyValue c, _) => c.year,
        measureFn: (currencyValue c, _) => c.amount,
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        // areaColorFn specifies that the area skirt will be light red.
        areaColorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault.lighter,
        // colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: '147mph',
        data: freefalldata1,
        domainFn: (currencyValue c, _) => c.year,
        measureFn: (currencyValue c, _) => c.amount,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesLineData = List<charts.Series<currencyValue, int>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
  
    return Container(
      margin: EdgeInsets.only(bottom: 6, left: 5, right: 5, top: 2),
      padding: EdgeInsets.only(bottom: 6, left: 5, right: 5, top: 5),
      color: Colors.white,
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'FREEFALL',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Roboto',),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: charts.LineChart(
                        _seriesLineData,
                        defaultRenderer: new charts.LineRendererConfig(
                            includeArea: true, stacked: true),
                        animate: true,
                        animationDuration: Duration(seconds: 1),
                        behaviors: [
                          new charts.ChartTitle('109mph',
                              behaviorPosition: charts.BehaviorPosition.start,
                              titleOutsideJustification:
                                  charts.OutsideJustification.middleDrawArea),
                          new charts.ChartTitle('147mph',
                              behaviorPosition: charts.BehaviorPosition.bottom,
                              titleOutsideJustification:
                                  charts.OutsideJustification.middleDrawArea),
                        ],
                      ),
                    ),
                  ),
                  Container(
                  padding: EdgeInsets.only(right: 4, top: 0),
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildRow("Total freefall time:   ", "399s"),
                      buildRow("Skydiving:  ", "5s"),
                      buildRow("Tunnel:  ", "34s"),
                      buildRow("Max frrefall speed:  ", "198 mph"),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //   children: <Widget>[
                      //     Text('kph'),
                          // Switch(
                          //   onChanged: onPINValueChanged,
                          //   value: pinValueSwitch,
                          //   materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          //   activeColor: Colors.white,
                          //   activeTrackColor: appColor,
                          //   inactiveThumbColor: Colors.black87,
                          //   inactiveTrackColor: Colors.grey[400],
                          // ),
                      //     Text('mph'),
                      //   ],
                      // ),
                    ],
                  ),
                )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container buildRow(String title, String amount) {
    return Container(
     // color: Colors.red,
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.w400),
          ),
          Text(
            amount,
            style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class currencyValue {
  int year;
  int amount;
  currencyValue(this.year, this.amount);
}
