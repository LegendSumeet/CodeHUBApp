import 'package:codehub/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:codehub/main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class deatils extends StatefulWidget {
  const deatils({super.key});

  @override
  State<deatils> createState() => _deatilsState();
}

class _deatilsState extends State<deatils> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: Color(0xFFF5F4EF),
            image: DecorationImage(
              image: AssetImage("assets/images/ux_big.png"),
              alignment: Alignment.topRight,
            )),
            child: Padding(padding: EdgeInsets.only(left: 20, top: 50, right: 20),
            child: Column(children: <Widget>[
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Myroutes.homeRoute);
                    },
                    child: Icon(Icons.arrow_back_ios),
                  ),
                  SizedBox(width: 20),
                  Text("Back", style: GoogleFonts.robotoMono(fontSize: 20, fontWeight: FontWeight.w400),)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(

                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Center(child: Text("JAVA", style: GoogleFonts.robotoMono(fontSize: 30, fontWeight: FontWeight.w400),)),
                ),
              )              
              
            ]),
            
            ))
      );
    
  }
}
