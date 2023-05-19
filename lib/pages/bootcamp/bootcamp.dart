import 'package:codehub/widegts/drawer.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:velocity_x/velocity_x.dart';

class Bootcamp extends StatefulWidget {
  const Bootcamp({super.key});

  @override
  State<Bootcamp> createState() => _BootcampState();
}

class _BootcampState extends State<Bootcamp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
      
        backgroundColor: Mytheme.creamcolor,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Center(
        child: Container(
          color: Mytheme.creamcolor,
          padding: Vx.mH24,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                header(),
                Center(
                  child: const CircularProgressIndicator().py16(),
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}


class header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Bootcamp"
            .text
            .xl5
            .bold
            .color(Mytheme.darkbluishcolor)
            .make()
            .p16(),
      ],
    );
  }
}