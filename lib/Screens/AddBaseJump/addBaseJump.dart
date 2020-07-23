import 'package:flutter/material.dart';
import 'package:riser/Forms/BaseJumpForm/baseJumpForm.dart';

class AddBaseJump extends StatefulWidget {
  @override
  _AddBaseJumpState createState() => _AddBaseJumpState();
}

class _AddBaseJumpState extends State<AddBaseJump> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BaseJumpForm(),
    );
  }
}