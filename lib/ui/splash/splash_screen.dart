import 'dart:async';

import 'package:flutter/material.dart';
import 'package:messageapp/app/routes.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    new Timer(new Duration(seconds: 5), () {
      Navigator.pushNamed(context, Routes.login);
    });
    return Scaffold(
      body: Center(child: SpinKitFadingCube(
  color: Colors.red,
  size: 50.0,
)),
    );
  }
}
