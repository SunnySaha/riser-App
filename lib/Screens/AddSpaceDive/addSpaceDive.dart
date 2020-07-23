import 'package:flutter/material.dart';
import 'package:riser/Forms/SpaceDiveForm/spaceDiveForm.dart';

class AddSpaceDive extends StatefulWidget {
  @override
  _AddSpaceDiveState createState() => _AddSpaceDiveState();
}

class _AddSpaceDiveState extends State<AddSpaceDive> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SpaceDiveForm(),
    );
  }
}