import 'package:flutter/material.dart';
import 'package:rahil_shaikh/core/core.dart';

class TimeBoxPageUI extends StatelessWidget {
  const TimeBoxPageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customScaffold(body: SizedBox(height: double.infinity,width: double.infinity,child: comingSoonView()));
  }
}
