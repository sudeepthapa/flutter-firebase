import 'package:flutter/material.dart';
import 'package:messageapp/ui/auth/login.dart';
import 'package:messageapp/ui/auth/register.dart';
import 'package:messageapp/ui/home/home.dart';
import 'package:messageapp/ui/splash/splash_screen.dart';

class Routes {
  static final String login = "/login";
  static final String register = "/register";
  static final String home = "/";
  static final String splash = "/splash";

  static generateRoute() {
    return {
      Routes.login: (_) => Login(),
      Routes.register: (_) => Register(),
      Routes.home: (_) => Home(),
      Routes.splash: (_) => SplashScreen(),
    };
  }
}
