import 'dart:convert';

import 'package:codehub/courses/info.dart';
import 'package:codehub/pages/register.dart';
import 'package:codehub/widegts/drawer.dart';
import 'package:codehub/widegts/itemwidget.dart';
import 'package:flutter/material.dart';
import 'package:codehub/main.dart';
import 'package:flutter/services.dart';
import 'package:codehub/utils/routes.dart';
import 'package:codehub/utils/constants.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  void initState() {
    super.initState();
    loaddate();
  }

  loaddate() async {
    var couresjson = await rootBundle.loadString("assets/files/courses.json");
    var decode = jsonDecode(couresjson);
    var product = decode["avail"];
    Coures.itemsco =
        List.from(product).map<Info>((info) => Info.fromJson(info)).toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          Controller.googleaccount.value == null
              ? "CodeHub"
              : Controller.googleaccount.value!.displayName.toString(),
          style: GoogleFonts.lato(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Controller.logout();
              
            },
            icon: Icon(Icons.login),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, Myroutes.register);
            },
            icon: Icon(Icons.person_add),
          ),
        ],
      ),

      body: SafeArea(child: 
      Text("Welcome to CodeHub",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
      ),
      );
    
  }
}
