// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:im_stepper/main.dart';
import 'package:im_stepper/stepper.dart';

class Stepper extends StatefulWidget {
  const Stepper({
    Key key,
    this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;

  @override
  _StepperState createState() => _StepperState();
}

class _StepperState extends State<Stepper> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      IconStepper(
        icons: [
          const Icon(Icons.supervised_user_circle),
          const Icon(Icons.flag),
          const Icon(Icons.access_alarm),
          const Icon(Icons.supervised_user_circle),
          const Icon(Icons.flag),
          const Icon(Icons.access_alarm),
          const Icon(Icons.supervised_user_circle),
        ],
      ),
    ]);
  }
}
