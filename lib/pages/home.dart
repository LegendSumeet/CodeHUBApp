import 'dart:convert';

import 'package:codehub/courses/info.dart';
import 'package:codehub/pages/details.dart';
import 'package:codehub/widegts/drawer.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
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
        appBar: appbar(),
        drawer: MyDrawer(),
        backgroundColor: Mytheme.creamcolor,
        body: SafeArea(
          child: Container(
            padding: Vx.mH24,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                header(),
                if (Coures.itemsco != null && Coures.itemsco.isNotEmpty)
                  CouresList().expand()
                else
                  Center(
                    child: const CircularProgressIndicator().py16(),
                  ),
              ],
            ),
          ),
        ));
  }

  AppBar appbar() {
    return AppBar(
        backgroundColor: Mytheme.creamcolor,
        actions: [
          IconButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
              },
              icon: Icon(Icons.logout))
        ],
      );
  }
}

class header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
    
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Courses".text.xl5.bold.color(Mytheme.darkbluishcolor).make(),
        "Learn to Code".text.xl2.make().p12(),
      ],
    );
  }
}

class CouresList extends StatelessWidget {
  const CouresList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: Coures.itemsco.length,
      itemBuilder: (context, index) {
        final numberofcourese = Coures.itemsco[index];
        return InkWell(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyWidget(
                          coures: numberofcourese,
                        ))),
            child: CouresItem(info: numberofcourese));
      },
    );
  }
}

class CouresItem extends StatelessWidget {
  final Info info;

  const CouresItem({super.key, required this.info}) : assert(info != null);

  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        imageslist(info: info),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            info.name.text.bold.lg.color(Mytheme.darkbluishcolor).make(),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: "Start".text.make(),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Mytheme.darkbluishcolor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                ),
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(150).make().py16();
  }
}

class imageslist extends StatelessWidget {
  final Info info;

  const imageslist({super.key, required this.info});

  @override
  Widget build(BuildContext context) {
    return Image.asset(info.image)
        .box
        .p8
        .rounded
        .color(Mytheme.creamcolor)
        .make()
        .p16()
        .wh48(context);
  }
}
