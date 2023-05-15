import 'package:codehub/pages/home.dart';
import 'package:codehub/utils/logincontrol.dart';
import 'package:flutter/material.dart';
import 'package:codehub/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:codehub/utils/routes.dart';

import '../utils/routes.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

final Controller = Get.put(logincontrol());

class _registerState extends State<register> {
  String name = "";
  bool changeButton = false;
  final fromkey = GlobalKey<FormState>();

  bool isEmail(String em) {
    String p =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

    RegExp regExp = new RegExp(p);

    return regExp.hasMatch(em);
  }

  bool isPhoneNoValid(String? phoneNo) {
    if (phoneNo == null) return false;
    final regExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
    return regExp.hasMatch(phoneNo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(name == ""
            ? "assets/images/register.jpg"
            : "assets/images/register.jpg"),
      ),
      floatingActionButton: login(context),
    );
  }

  Obx login(BuildContext context) {
    return Obx(() {
      if (Controller.googleaccount.value == null) {
        return buildloginbutton();
      } else {
        return FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, Myroutes.homeRoute);
            },
            icon: Image.asset(
              "assets/images/google.png",
              height: 32,
              width: 32,
            ),
            backgroundColor: Colors.white,
            label: Text(
              "Sign in with Google",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ));
      }
    });
  }

  FloatingActionButton buildloginbutton() {
    return FloatingActionButton.extended(
        onPressed: () {
          Controller.login();
        },
        icon: Image.asset(
          "assets/images/google.png",
          height: 32,
          width: 32,
        ),
        backgroundColor: Colors.white,
        label: Text(
          "Sign in with Google",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}
