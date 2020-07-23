import 'package:flutter/material.dart';
import 'package:riser/Forms/SkydiveForm/skydiveForm.dart';

class AddSkydive extends StatefulWidget {
  @override
  _AddSkydiveState createState() => _AddSkydiveState();
}

class _AddSkydiveState extends State<AddSkydive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SkydiveForm(),
    );
  }
}