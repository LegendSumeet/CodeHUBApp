import 'package:codehub/pages/bootcamp/bootcamp.dart';
import 'package:codehub/pages/home/home.dart';
import 'package:codehub/pages/interships/interships.dart';
import 'package:codehub/pages/auth/login.dart';
import 'package:codehub/pages/auth/register.dart';
import 'package:codehub/pages/roadmap/roadmapui.dart';
import 'package:codehub/pages/roadmap/roadmapui.dart';

import 'package:codehub/utils/routes.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Homepage();
          } else {
            return LoginForm();
          }
        },
      ),
      themeMode: ThemeMode.dark,
      theme: Mytheme.lighttheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.lighttheme(context),
      initialRoute: Myroutes.roadmaps,
      routes: {
        Myroutes.homeRoute: (context) => Homepage(),
        Myroutes.loginRoute: (context) => LoginForm(),
        Myroutes.roadmaps: (context) => Roadmapsu(),
        Myroutes.interships: (context) => Interships(),
        Myroutes.bootcamp: (context) => Bootcamp(),
      },
    );
  }
}
