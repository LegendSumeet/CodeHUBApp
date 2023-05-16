import 'dart:convert';

import 'package:codehub/courses/info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

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
        body: SafeArea(
      child: Container(
        padding: Vx.mH24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [
            "Codehub".text.xl5.bold.color(Colors.black).make(),
            "Learn to Code ".text.xl2.make(),
          ],
        ),
      ),
    ));
  }
}
