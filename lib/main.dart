import 'package:codehub/pages/details.dart';
import 'package:codehub/pages/home.dart';
import 'package:codehub/pages/login.dart';
import 'package:codehub/pages/register.dart';
import 'package:codehub/utils/routes.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    return  MaterialApp(
      
      themeMode: ThemeMode.dark,
      theme: Mytheme.darktheme(context),
      
      
      debugShowCheckedModeBanner: false,

        initialRoute: "/details",
      routes: {
        Myroutes.homeRoute :(context) => homepage(),
        Myroutes.loginRoute :(context) => login(),
        Myroutes.register :(context) => register(),
        Myroutes.details :(context) => deatils(),
        
      },
    );
  }
}

