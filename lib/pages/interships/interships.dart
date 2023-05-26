import 'package:codehub/widegts/drawer.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widegts/theme.dart';


class Interships extends StatefulWidget {
  const Interships({super.key});

  @override
  State<Interships> createState() => _IntershipsState();
}

class _IntershipsState extends State<Interships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        backgroundColor: Mytheme.creamcolor,
        iconTheme: const IconThemeData(color: Colors.black),
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
                const header(),
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
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Interships"
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