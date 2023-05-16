import 'package:codehub/pages/details.dart';
import 'package:codehub/pages/home.dart';
import 'package:codehub/pages/login.dart';
import 'package:codehub/pages/register.dart';
import 'package:codehub/utils/routes.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:codehub/pages/splash.dart';
import 'package:velocity_x/velocity_x.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.dark,
      theme: Mytheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: Myroutes.homeRoute,
      routes: {
        Myroutes.homeRoute: (context) => homepage(),
        Myroutes.loginRoute: (context) => login(),
        Myroutes.register: (context) => register(),
        Myroutes.details: (context) => deatils(),
       
      },
    );
  }
}
