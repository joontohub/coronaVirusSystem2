import 'package:flutter/material.dart';

import 'components/body.dart';

class HomePage extends StatelessWidget {
  static String routeName = "/Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Login Success"),
      ),
      body: Body(),
    );
  }
}
