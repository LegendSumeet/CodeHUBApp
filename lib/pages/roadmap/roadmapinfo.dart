import 'package:codehub/courses/roadmap1.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widegts/drawer.dart';
class Roadmapinfo extends StatelessWidget {


  final Roadmapitems index;
  const Roadmapinfo({super.key , required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        backgroundColor: Mytheme.creamcolor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: SafeArea(
        child: Container(
          padding: Vx.mH24,
          
          color: Mytheme.creamcolor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(index.name).text.xl4.bold.color(Mytheme.darkbluishcolor).make(),
              Text(index.description),
              
            ],
          ),
        ),
      ),
    );
  }
}