// import 'package:dropdownfield/dropdownfield.dart';
// import 'package:flutter/material.dart';



// class Tst extends StatefulWidget {
//   @override
//   _TstState createState() => _TstState();
// }

// class _TstState extends State<Tst> {
//   final _formKey = GlobalKey<FormState>();
//   Map<String, dynamic> formData = {
//       'City': '',
//       'Country': '',
//     };
//   List<String> cities = [
//     'Bangalore',
//     'Chennai',
//     'New York',
//     'Mumbai',
//     'Delhi',
//     'Tokyo',
//   ];
//   List<String> countries = [
//     'INDIA',
//     'USA',
//     'JAPAN',
//   ];

//   // _ExampleFormState() {
//   //   formData = {
//   //     'City': 'Bangalore',
//   //     'Country': 'INDIA',
//   //   };
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return FutureBuilder(
//         future: buildFutures(),
//         builder: (BuildContext context, AsyncSnapshot snapshot) {
//           switch (snapshot.connectionState) {
//             default:
//               if (snapshot.hasError) {
//                 return Text(snapshot.error.toString());
//               } else {
//                 if (snapshot.data != null)
//                   return Scaffold(
//                       appBar: AppBar(
//                         titleSpacing: 5.0,
//                         title: Text(
//                           'Custom Dropdown Field Example',
//                           style: TextStyle(fontSize: 15.0),
//                         ),
//                         actions: <Widget>[
//                           Builder(
//                             builder: (BuildContext context) {
//                               return IconButton(
//                                   icon: const Icon(Icons.check),
//                                   iconSize: 20.0,
//                                   tooltip: 'Save',
//                                   onPressed: () async {
//                                     if (_formKey.currentState.validate()) {
//                                       _formKey.currentState.save();
//                                       //_formKey.currentState.save();
//                                       showDialog<String>(
//                                           context: context,
//                                           builder:
//                                               (BuildContext dialogContext) =>
//                                                   AlertDialog(
//                                                     content: Text(
//                                                         'Data submitted is \n${formData.toString()}'),
//                                                   ));
//                                     }
//                                   });
//                             },
//                           )
//                         ],
//                       ),
//                       body: Container(
//                         color: Colors.white,
//                         constraints: BoxConstraints.expand(),
//                         child: Form(
//                             key: _formKey,
//                             autovalidate: false,
//                             child: SingleChildScrollView(
//                                 child: Column(
//                               children: <Widget>[
//                                 Divider(
//                                     height: 10.0,
//                                     color: Theme.of(context).primaryColor),
//                                 DropDownField(
//                                     value: formData['City'],
//                                     icon: Icon(Icons.location_city),
//                                     required: true,
//                                     hintText: 'Choose a city',
//                                     labelText: 'City *',
//                                     items: cities,
//                                     strict: false,
//                                     setter: (dynamic newValue) {
//                                       formData['City'] = newValue;
//                                     }),
//                                 Divider(
//                                     height: 10.0,
//                                     color: Theme.of(context).primaryColor),
//                                 DropDownField(
//                                     value: formData['Country'],
//                                     icon: Icon(Icons.map),
//                                     required: false,
//                                     hintText: 'Choose a country',
//                                     labelText: 'Country',
//                                     items: countries,
//                                     setter: (dynamic newValue) {
//                                       formData['Country'] = newValue;
//                                     }),
//                               ],
//                             ))),
//                       ));
//                 else
//                   return LinearProgressIndicator();
//               }
//           }
//         });
//   }

//   Future<bool> buildFutures() async {
//     return true;
//   }
// }
// //   static final List<String> _listViewData = [
// //     'Fun Jump',
// //     'Coaching Jump',
// //     'Training Jump',
// //     'Competition Jump',
// //     'Specialized Camera',
// //     'Tandem',
// //     'Demo',
// //     'Static Line',
// //     'AFF',
// //   ];
// //   List len1 = [5];

// //   List<ExpansionTile> _listOfExpansions = List<ExpansionTile>.generate(
// //       9,
// //       (i) => ExpansionTile(
// //             title: Text("Jump Type $i"),
// //             children: _listViewData
// //                 .map((data) => ListTile(
// //                      // leading: Icon(Icons.person),
// //                       contentPadding: EdgeInsets.all(2),
// //                       title: Column(
// //                         crossAxisAlignment: CrossAxisAlignment.start,
// //                         children: <Widget>[
// //                           Text(data),
// //                           // Column(
// //                           //   children: listViwData()
// //                           // ),
// //                         ],
// //                       ),
// //                      // subtitle: Text("a subtitle here"),
// //                     ))
// //                 .toList(),
// //           ));



// //   // List<Widget> listViwData() {
// //   //   // print(widget.data.order_details);
// //   //   List<Widget> list = [];

// //   //   for (var d in len1
// //   //       // widget.data.order_details
// //   //       ) {
// //   //     list.add(Container());
// //   //   }

// //   //   return list;
// //   // }


// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text('Expandable ListView Example'),
// //       ),
// //       body: Container(
// //         width: MediaQuery.of(context).size.width / 1.3,
// //         child: Row(
// //           children: <Widget>[
// //             Expanded(
// //               child: ListView(
// //                 padding: EdgeInsets.all(8.0),
// //                 children: <Widget>[
// //       ListTile(
// //         title: Text("Fun Jump"),
// //         //children: <Widget>[Text("children 1"), Text("children 2")],
// //       ),
// //       ExpansionTile(
// //         title: Text("Coaching Jump"),
// //         children: <Widget>[Text("Student"), Text("Coach"), Text("Licence Progression")],
// //       ),
// //       ListTile(
// //         title: Text("Training Jump"),
// //        // children: <Widget>[Text("children 3"), Text("children 4")],
// //       ),
// //       ListTile(
// //         title: Text("Competition Jump"),
// //        //children: <Widget>[Text("children 3"), Text("children 4")],
// //       ),
// //       ExpansionTile(
// //         title: Text("Specialized Camera"),
// //         children: <Widget>[Text("Tandem"), Text("AFF")],
// //       ),
// //       ExpansionTile(
// //         title: Text("Tandem"),
// //         children: <Widget>[Text("Passenger"), Text("Instructor")],
// //       ),
// //       ListTile(
// //         title: Text("Demo"),
// //        // children: <Widget>[Text("children 3"), Text("children 4")],
// //       ),
// //       ListTile(
// //         title: Text("Static Line"),
// //         //children: <Widget>[Text("children 3"), Text("children 4")],
// //       ),
// //       ExpansionTile(
// //         title: Text("AFF"),
// //         children: <Widget>[Text("Student"), Text("Instructor")],
// //       ),
// //     ],
// //                 // children:
// //                 //     _listOfExpansions.map((expansionTile) => expansionTile).toList(),
// //               ),
// //             ),
// //             Container(
// //             //  width: 120,
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }