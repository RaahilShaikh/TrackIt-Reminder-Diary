import 'package:flutter/material.dart';
import 'package:rahil_shaikh/core/core.dart';

class AccountPageUI extends StatelessWidget {
  const AccountPageUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return customScaffold(body: SizedBox(height: double.infinity,width: double.infinity,child: comingSoonView()));
  }
}
