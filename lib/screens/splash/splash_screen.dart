import 'package:flutter/material.dart';
import 'package:virus_bob/screens/splash/components/body.dart';
import 'package:virus_bob/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/splash";
  @override
  Widget build(BuildContext context) {
    // You have to call it on your starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
