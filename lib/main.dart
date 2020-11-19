import 'package:flutter/material.dart';
import 'package:messageapp/app/routes.dart';
import 'package:messageapp/ui/auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Message App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(color:Colors.black.withAlpha(180), fontSize: 32, fontWeight: FontWeight.w700),
          bodyText2: TextStyle(color:Colors.black54, fontSize: 14) 
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: Routes.generateRoute(),
      initialRoute: Routes.login,
    );
  }
}
