import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../utils/routes.dart';

class First extends StatefulWidget {
  const First({super.key});

  @override
  State<First> createState() => _FirstState();
}

class _FirstState extends State<First> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Mytheme.darkblue,
          elevation: 0.0,
        ),
        body: Container(
          color: Mytheme.darkblue,
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/first.png"),
                "Welcome to CodeHub".text.xl5.white.bold.center.make(),
                
                IconButton(onPressed: () => {
                  Navigator.pushNamed(context, Myroutes.loginRoute)
                }, icon: const Icon(Icons.login_rounded),color: Colors.white,),
              
              ],
            ),
          ),
        ));
  }
}
