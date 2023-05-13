import 'package:flutter/material.dart';
import 'package:codehub/main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/routes.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}


class _registerState extends State<register> {
   String name = "";
  bool changeButton = false;
  final fromkey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (fromkey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      // ignore: use_build_context_synchronously
      await Navigator.pushNamed(context, Myroutes.homeRoute);
      setState(() {
        changeButton = false;
      });
    }
  }

bool isEmail(String em) {

  String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  RegExp regExp = new RegExp(p);

  return regExp.hasMatch(em);
}

bool isPhoneNoValid(String? phoneNo) {
  if (phoneNo == null) return false;
  final regExp = RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)');
  return regExp.hasMatch(phoneNo);
}
  
  @override
  Widget build(BuildContext context) {
    return Material
    (
      color: Colors.white,
      child: Form(
        key: fromkey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/register.jpg",
              fit: BoxFit.fill,
            ),
            Padding(
              
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                
                children: [
                  const Text("Register", style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),),
                  Center(
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                    decoration: const InputDecoration(
                      hintText: "Enter your name",
                      labelText: "Name",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty";
                      }
                      return null;
                    },
                  )),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email",
                      
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Email cannot be empty";
                      } else if (!isEmail(value)) {
                        return "Email is not valid";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter your password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty";
                      } else if (value.length < 6) {
                        return "Password length should be atleast 6";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Phone Number",
                      labelText: "Phone Number",
              
                      
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Phone Number cannot be empty";
                      } else if (value.length < 10) {
                        return "Phone Number is not valid";
                      }
                      return null;
                    },
                  ),
                  ListTile(
                    leading: Text("ALREADY HAVE AN ACCOUNT?"),
                    trailing: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Myroutes.loginRoute);
                      },
                      child: Text("LOGIN"),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                  child: InkWell(
                    onTap: () => moveToHome(context),
                    child: Ink(
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        child: Center(
                          child: changeButton
                              ? Icon(Icons.done)
                              : const Text(
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
