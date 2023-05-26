import 'package:codehub/pages/bootcamp/bootcamp.dart';
import 'package:codehub/pages/home/home.dart';

import 'package:codehub/pages/interships/interships.dart';
import 'package:codehub/pages/auth/register.dart';
import 'package:codehub/pages/roadmap/roadmapui.dart';
import 'package:codehub/pages/splash/Firstscreen.dart';

import 'package:codehub/utils/routes.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'courses/Model.dart';
import 'firebase_options.dart';void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const Homepage();
          } else {
            return const LoginForm();
          }
        },
      ),
      themeMode: ThemeMode.dark,
      theme: Mytheme.lighttheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: Mytheme.lighttheme(context),
      initialRoute: Myroutes.api,
      routes: {
        Myroutes.homeRoute: (context) => const Homepage(),
        Myroutes.loginRoute: (context) => const LoginForm(),
        Myroutes.roadmaps: (context) => const Roadmapsu(),
        Myroutes.interships: (context) => const Interships(),
        Myroutes.bootcamp: (context) => const Bootcamp(),
        Myroutes.screenplay: (context) => const First(),
        Myroutes.api : (context) => const Fetch(),

        
      },
    );
  }
}
