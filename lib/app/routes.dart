import 'package:flutter/material.dart';
import 'package:messageapp/ui/auth/login.dart';
import 'package:messageapp/ui/auth/register.dart';
import 'package:messageapp/ui/home/home.dart';

class Routes {
  static final String login = "/login";
  static final String register = "/register";
  static final String home = "/";

  static generateRoute() {
    return {
      Routes.login: (_) => Login(),
      Routes.register: (_) => Register(),
      Routes.home: (_) => Home(),
    };
  }
}
