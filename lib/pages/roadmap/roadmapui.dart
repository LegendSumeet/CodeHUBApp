import 'dart:convert';

import 'package:codehub/pages/roadmap/roadmapinfo.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../courses/roadmap1.dart';
import '../../widegts/drawer.dart';
import '../../widegts/theme.dart';

class Roadmapsu extends StatefulWidget {
  const Roadmapsu({super.key});

  @override
  State<Roadmapsu> createState() => _RoadmapsuState();
}

class _RoadmapsuState extends State<Roadmapsu> {
  @override
  void initState() {
    super.initState();
    loaddate();
  }

  loaddate() async {
    var couresjson = await rootBundle.loadString("assets/files/roadmap.json");
    var decode = jsonDecode(couresjson);
    var product = decode["roadmaps"];
    Roadmapdata.maps2 = List.from(product)
        .map<Roadmapitems>((json) => Roadmapitems.fromJson(json))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const MyDrawer(),
        appBar: AppBar(
          backgroundColor: Mytheme.creamcolor,
        ),
        backgroundColor: Mytheme.creamcolor,
        body: Container(
          padding: Vx.mH24,
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const header(),
                if (Roadmapdata.maps2.isNotEmpty)
                  const roadmapbilder().expand()
                else
                  Center(
                    child: const CircularProgressIndicator().py16(),
                  ),
              ],
            ),
          ),
        ));
  }
}

class roadmapbilder extends StatelessWidget {
  const roadmapbilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final Roadmapitems item = Roadmapdata.maps2[index];
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Roadmapinfo(
                            index: item,
                          )));
            },
            child: RoadItem(
              info: item,
            ),
          );
        },
        itemCount: Roadmapdata.maps2.length);
  }
}

class RoadItem extends StatelessWidget {
  final Roadmapitems info;

  const RoadItem({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            info.name.text.bold.lg
                .color(Mytheme.darkbluishcolor)
                .make()
                .p1()
                .px4()
                .py16(),
          ],
        ))
      ],
    )).white.rounded.square(60).make().py16();
  }
}

class header extends StatelessWidget {
  const header({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Developer Roadmaps"
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
