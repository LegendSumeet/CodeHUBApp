import 'package:codehub/widegts/drawer.dart';
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
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    fillColor: Colors.grey[200],
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    suffixIcon: Icon(Icons.search),
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Courses",
                style: kHeadingextStyle,
                textAlign: TextAlign.left,
              ),
              SizedBox(
                height: 20.0,
              ),
            
         
            ],
          ),
        ),
      ),
    );
  }
}
