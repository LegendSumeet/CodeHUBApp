import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:codehub/utils/routes.dart';

class gotohome{
  gotohome(BuildContext context) {
    if (FirebaseAuth.instance.currentUser != null) {
      Navigator.pushNamed(context, Myroutes.homeRoute);
    } else {
      Navigator.pushNamed(context, Myroutes.loginRoute);
    }
  }
}