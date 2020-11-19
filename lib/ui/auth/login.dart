import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:messageapp/app/routes.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Confirm Exit"),
                content: Text("Are you sure you want to exit?"),
                actions: <Widget>[
                  FlatButton(
                    child: Text("YES"),
                    onPressed: () {
                      SystemNavigator.pop();
                    },
                  ),
                  FlatButton(
                    child: Text("NO"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  )
                ],
              );
            });
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                  margin: EdgeInsets.only(top: 80),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Welcome Back!",
                          style: Theme.of(context).textTheme.headline1),
                      Text("Sign in to continue",
                          style: Theme.of(context).textTheme.bodyText2)
                    ],
                  )),
              SizedBox(height: 25.0),
              TextField(
                decoration: InputDecoration(
                    labelText: "Username",
                    labelStyle: Theme.of(context).textTheme.bodyText2),
              ),
              SizedBox(height: 25.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: Theme.of(context).textTheme.bodyText2),
              ),
              SizedBox(height: 15.0),
              Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: Text('Forgot Password?',
                      style: Theme.of(context).textTheme.bodyText2)),
              SizedBox(height: 35.0),
              Container(
                width: double.infinity,
                child: RaisedButton(
                  elevation: 1,
                  color: Color.fromRGBO(255, 44, 85, 1),
                  onPressed: () {},
                  child: Text(
                    "SIGN IN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildIcons('facebook'),
                    SizedBox(width: 10),
                    _buildIcons('twitter'),
                    SizedBox(width: 10),
                    _buildIcons('google'),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              SizedBox(height: 25.0),
              Container(
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account ?",
                          style: Theme.of(context).textTheme.bodyText2),
                      SizedBox(width: 10),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, Routes.register);
                        },
                        child: Text("Signup",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2
                                .copyWith(fontWeight: FontWeight.bold)),
                      ),
                    ],
                  )),
            ]),
          ),
        ),
      ),
    );
  }

  _buildIcons(key) {
    switch (key) {
      case 'facebook':
        return Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xff226dc6),
          ),
          child: FaIcon(
            FontAwesomeIcons.facebookF,
            color: Colors.white,
          ),
        );
      case 'twitter':
        return Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xff57ccfd),
          ),
          child: FaIcon(
            FontAwesomeIcons.twitter,
            color: Colors.white,
          ),
        );
      case 'google':
        return Container(
          alignment: Alignment.center,
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Color(0xffff394c),
          ),
          child: FaIcon(
            FontAwesomeIcons.google,
            color: Colors.white,
          ),
        );
      default:
        return Container();
    }
  }
}
