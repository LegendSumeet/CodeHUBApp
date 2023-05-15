import "package:codehub/pages/register.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:google_sign_in/google_sign_in.dart";
import "../utils/logincontrol.dart";

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blueAccent),
                margin: EdgeInsets.zero,
                accountEmail: Text(Controller.googleaccount.value!.email ?? '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                accountName: Text(
                    Controller.googleaccount.value?.displayName ?? '',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage(Controller.googleaccount.value?.photoUrl??''),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                '',
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email Me",
                textScaleFactor: 1.3,
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
