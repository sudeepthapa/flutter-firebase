import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

enum AppState { initial, authenticated, authenticating, unauthenticated }

class AuthProvider extends ChangeNotifier {
  FirebaseAuth _auth;
  User _user;
  AppState _appState = AppState.initial;

  AppState get appState => _appState;
  User get user => _user;
}
