import 'package:codehub/courses/info.dart';
import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class MyWidget extends StatelessWidget {
  final Info coures;

  const MyWidget({super.key, required this.coures});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: const IconThemeData(color: Colors.black),
          title: Text(
            coures.name,
            style: const TextStyle(color: Colors.black),
          )),
      bottomNavigationBar: ButtonBar(
        children: [
          ElevatedButton(
            onPressed: () {},
            child: "Start".text.make(),
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Mytheme.darkbluishcolor),
                shape: MaterialStateProperty.all(StadiumBorder())),
          ).w40(context),
        ],
      ).p16(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Image.asset(coures.image).h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                edge: VxEdge.TOP,
                child: Container(
                    color: Colors.white,
                    width: context.screenWidth,
                    child: Column(
                      children: [
                        coures.name.text
                            .color(Mytheme.darkbluishcolor)
                            .textStyle(context.captionStyle)
                            .xl3
                            .bold
                            .center
                            .make()
                            .p16(),
                        coures.description.text.center
                            .color(Mytheme.darkbluishcolor)
                            .textStyle(context.captionStyle)
                            .xl
                            .make(),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
