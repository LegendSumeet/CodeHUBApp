import 'package:codehub/widegts/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../widegts/theme.dart';

class Interships extends StatefulWidget {
  const Interships({super.key});

  @override
  State<Interships> createState() => _IntershipsState();
}

class _IntershipsState extends State<Interships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Interships"),
        centerTitle: true,
        backgroundColor: Mytheme.darkbluishcolor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}