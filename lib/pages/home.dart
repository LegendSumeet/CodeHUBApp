import 'dart:html';

import 'package:codehub/courses/info.dart';
import 'package:codehub/widegts/drawer.dart';
import 'package:codehub/widegts/itemwidget.dart';
import 'package:flutter/material.dart';
import 'package:codehub/main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:codehub/utils/routes.dart';
import 'package:codehub/utils/constants.dart';


class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
    
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, left: 20.0),
          child: Column(
            children: [
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: const Text(
                        "Hello , Sumeet",
                        style: kHeadingextStyle,
                      ),
                    )
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      child: const Text(
                        "Welcome to CodeHub",
                        style: kSubheadingextStyle,
                      ),
                    )
                  ]),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Courses",
                style: kHeadingextStyle,
                textAlign: TextAlign.left,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                child: ListView.builder(
                itemCount: Coures.itemsco.length,
                itemBuilder: (context, index){
                  return ItemWidget(
                    cour: Coures.itemsco[index],
                  );
                },
              )
              )
            
         
            ],
          ),
        ),
            
          ),
        
      )
    ;
  }
}

