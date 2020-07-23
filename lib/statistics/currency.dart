import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class currency extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Currency();
  }
}

class _Currency extends State<currency> {
  List<charts.Series<YearSales, DateTime>> _seriesLineData;

  _generateData() {
    var linesalesdata1 = [
      new YearSales(DateTime(2014, 1, 1), 5),
      new YearSales(DateTime(2015, 2, 1), 25),
      new YearSales(DateTime(2016, 3, 1), 100),
      new YearSales(DateTime(2017, 4, 1), 75),
      new YearSales(DateTime(2018, 5, 1), 25),
    ];

    _seriesLineData.add(charts.Series(
      data: linesalesdata1,
      domainFn: (YearSales yearSales, _) => yearSales.yearval,
      measureFn: (YearSales yearSales, _) => yearSales.salesval,
      fillPatternFn: (_, __) => charts.FillPatternType.forwardHatch,
      colorFn: (YearSales yearSales, _) =>
          charts.ColorUtil.fromDartColor(Color(0xFF1A3D7A)),
      id: 'Sales',
    ));
  }

  @override
  void initState() {
    super.initState();
    _seriesLineData = List<charts.Series<YearSales, DateTime>>();
    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 6, left: 5, right: 5, top: 2),
      // height: MediaQuery.of(context).size.height,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
            child: Text(
              'CURRENCY',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: 'Roboto'),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Container(
                    //color: Colors.red,
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 8),
                    child: charts.TimeSeriesChart(
                      _seriesLineData,
                      animate: true,
                      animationDuration: Duration(seconds: 1),

                      defaultRenderer: new charts.LineRendererConfig(
                        //includePoints: true,
                        stacked: true,
                        includeLine: true,

                        includeArea: true,
                      ),
                      //             layoutConfig: charts.LayoutConfig(
                      //     leftMarginSpec: charts.MarginSpec.fixedPixel(0),
                      //     topMarginSpec: charts.MarginSpec.fixedPixel(75),
                      //     rightMarginSpec: charts.MarginSpec.fixedPixel(0),
                      //     bottomMarginSpec: charts.MarginSpec.fixedPixel(5)
                      // ),
                      defaultInteractions: false,
                      // dateTimeFactory: const charts.LocalDateTimeFactory(),
                      // domainAxis: charts.DateTimeAxisSpec(
                      //   tickFormatterSpec: charts.AutoDateTimeTickFormatterSpec(
                      //     day: charts.TimeFormatterSpec(
                      //       format: 'EEE',
                      //       transitionFormat: 'EEE',
                      //     ),
                      //   ),
                      //   renderSpec: charts.SmallTickRendererSpec(
                      //     labelOffsetFromAxisPx: 12,
                      //     minimumPaddingBetweenLabelsPx: 1,
                      //     labelAnchor: charts.TickLabelAnchor.centered,
                      //     lineStyle: charts.LineStyleSpec(
                      //       color: charts.Color.fromHex(code: "#2F4F87"),
                      //       thickness: 4,
                      //     ),
                      //     axisLineStyle: charts.LineStyleSpec(
                      //         thickness: 2,
                      //         color: charts.Color.fromHex(code: "#1A3D7A")),
                      //     labelStyle: charts.TextStyleSpec(
                      //         fontSize: 11,
                      //         fontFamily: 'Poppins',
                      //         color: charts.Color.fromHex(code: "#1A3D7A")),
                      //   ),
                      // ),
                      // // domainAxis: charts.NumericAxisSpec(
                      // //   // tickProviderSpec: new charts.StaticNumericTickProviderSpec(tr),
                      // // ),
                      // primaryMeasureAxis: charts.NumericAxisSpec(
                      //   showAxisLine: true,
                      //   renderSpec: charts.SmallTickRendererSpec(
                      //     labelOffsetFromAxisPx: 5,
                      //     minimumPaddingBetweenLabelsPx: 2,
                      //     labelAnchor: charts.TickLabelAnchor.centered,
                      //     lineStyle: charts.LineStyleSpec(
                      //       color: charts.Color.fromHex(code: "#2F4F87"),
                      //       thickness: 4,
                      //     ),
                      //     axisLineStyle: charts.LineStyleSpec(
                      //         thickness: 2,
                      //         color: charts.Color.fromHex(code: "#1A3D7A")),
                      //     labelStyle: charts.TextStyleSpec(
                      //         fontSize: 11,
                      //         fontFamily: 'Poppins',
                      //         // lineHeight: 15,
                      //         color: charts.Color.fromHex(code: "#1A3D7A")),
                      //   ),
                      // ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 4, top: 30),
                  //color: Colors.red,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      buildRow("Total:   ", "399"),
                      buildRow("1 Month: ", "5"),
                      buildRow("3 Month: ", "34"),
                      buildRow("6 Month: ", "69"),
                      buildRow("12 Month: ", "136"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container buildRow(String title, String amount) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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

class YearSales {
  DateTime yearval;
  double salesval;

  YearSales(this.yearval, this.salesval);
}
