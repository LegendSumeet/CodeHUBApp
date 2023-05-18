import 'dart:io';

import 'package:codehub/widegts/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final imageUrl = "assets/images/profile.png";

    return SafeArea(
      child: Drawer(
        backgroundColor: Mytheme.darkbluishcolor,
        child: Container(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,

            
            children: [
              const SizedBox(
                height: 30,
              ),
              
              const Text("CodeHub",style: TextStyle(color: Colors.white,fontSize: 30),
              
              ),
              const SizedBox(height: 20,),
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage(imageUrl),
              ),
              const SizedBox(height: 10,),
              const Text("Username",style: TextStyle(color: Colors.white,fontSize: 20),
              
              ),
              const SizedBox(height: 10,),
              const Text("Email",style: TextStyle(color: Colors.white,fontSize: 20),
              
              ),
              const SizedBox(height: 30,),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/home");
                },
                leading: const Icon(CupertinoIcons.home,color: Colors.white,),
                title: const Text("Home",style: TextStyle(color: Colors.white,fontSize: 20),
              
              ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/roadmaps");
                },
                leading: const Icon(CupertinoIcons.arrow_swap,color: Colors.white,),
                title: const Text("Roadmaps",style: TextStyle(color: Colors.white,fontSize: 20),
              
              ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/interships");
                },
                leading: const Icon(CupertinoIcons.bag_fill_badge_plus,color: Colors.white,),
                title: const Text("Interships",style: TextStyle(color: Colors.white,fontSize: 20),
              
              ),
              ),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, "/bootcamp");
                },
                leading: const Icon(CupertinoIcons.bold,color: Colors.white,),
                title: const Text("Bootcamp",style: TextStyle(color: Colors.white,fontSize: 20),
              
              ),
              ),
              
             
              
              

              
            ],
            ),
          ),
        
        ),
        
        
        
        
        );
        
        
        
    
    
  }
}
      
  

