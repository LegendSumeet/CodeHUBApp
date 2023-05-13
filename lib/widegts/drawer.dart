import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

class Mydrawer extends StatefulWidget {
  const Mydrawer({super.key});

  @override
  State<Mydrawer> createState() => _MydrawerState();
}

class _MydrawerState extends State<Mydrawer> {
  @override
  Widget build(BuildContext context) {
    final url =
        "https://res.cloudinary.com/practicaldev/image/fetch/s--kf7OGsr1--/c_fill,f_auto,fl_progressive,h_320,q_auto,w_320/https://dev-to-uploads.s3.amazonaws.com/uploads/user/profile_image/675165/f50cce0a-84e5-407e-b992-4d98b02a023f.jpeg";
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
                accountEmail: const Text("sumeet@gmail.com",
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)
                ),
                accountName: const Text("sumeet",
                style: TextStyle(color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold)
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(url),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
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
