import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class jumptypes extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Jumps();
  }
}

class _Jumps extends State<jumptypes> {
  List<charts.Series<Task, String>> _seriesPieData;

  _generateData() {
    var piedata = [
      new Task('Coaching', 58, Color(0xff3366cc)),
      new Task('Training', 36, Color(0xff990099)),
      new Task('FunJump', 80, Color(0xff109618)),
      new Task('Competetion', 65, Color(0xfffdbe19)),
      new Task('Sleep', 75, Color(0xffff9900)),
    ];

    _seriesPieData.add(
      charts.Series(
        data: piedata,
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'jumptypes',
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _seriesPieData = List<charts.Series<Task, String>>();

    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.white,
      child: Padding(
        padding: EdgeInsets.only(bottom: 6, left: 5, right: 5, top: 2),
        // padding: EdgeInsets.all(4.0),
        child: Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.height,
          // margin: EdgeInsets.only(top: 6.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                  child: Text(
                    'JUMP TYPES',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Roboto',),
                  ),
                ),
                Expanded(
                  child: Container(
                    child: charts.PieChart(_seriesPieData,
                        animate: true,
                        animationDuration: Duration(seconds: 1),
                        behaviors: [
                          new charts.DatumLegend(
                            position: charts.BehaviorPosition.end,
                            outsideJustification:
                                charts.OutsideJustification.startDrawArea,
                            horizontalFirst: false,
                            desiredMaxRows: 5,
                            showMeasures: true,
                            measureFormatter: (num value) {
                              return value == null ? '-' : '${value}k';
                            },
                            cellPadding: new EdgeInsets.only(right: 15.0, bottom: 4.0, top: 4.0),
                            entryTextStyle: charts.TextStyleSpec(
                                //color: charts.MaterialPalette.purple.shadeDefault,
                                fontFamily: 'Roboto',
                                fontSize: 14,
                                ),
                          )
                        ],
                        defaultRenderer: new charts.ArcRendererConfig(
                            arcWidth: 250,
                            arcRendererDecorators: [
                              new charts.ArcLabelDecorator(
                                  labelPosition: charts.ArcLabelPosition.inside)
                            ])),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Task {
  String task;
  int taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}
