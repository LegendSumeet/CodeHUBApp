import 'package:codehub/widegts/drawer.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Roadmaps extends StatefulWidget {
  const Roadmaps({super.key});

  @override
  State<Roadmaps> createState() => _RoadmapsState();
}

class _RoadmapsState extends State<Roadmaps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        title: Text("Roadmaps"),
        centerTitle: true,
        backgroundColor: Mytheme.darkbluishcolor,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Roadmaps"),
        ],
      )),
    );
  }
}
