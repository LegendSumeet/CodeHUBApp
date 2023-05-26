import 'package:codehub/widegts/theme.dart';
import 'package:flutter/material.dart';

import '../../auth/authFunctions.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';
  String fullname = '';
  bool login = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                
                Image.asset(
                  "assets/images/register.jpg",
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 30,
                ),
                Text(
                  login ? 'Login' : 'Register',
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 30,
                ),
                login
                    ? Container()
                    : TextFormField(
                        key: const ValueKey('fullname'),
                        decoration: InputDecoration(
                          label: const Text('Full Name'),
                          hintText: 'Enter Full Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please Enter Full Name';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (value) {
                          setState(() {
                            fullname = value!;
                          });
                        },
                      ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  key: const ValueKey('email'),
                  decoration: InputDecoration(
                    label: const Text('Email'),
                    hintText: 'Enter Email',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if (value!.isEmpty || !value.contains('@')) {
                      return 'Please Enter valid Email';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      email = value!;
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextFormField(
                  key: const ValueKey('password'),
                  obscureText: true,
                  decoration: InputDecoration(
                    label: const Text('Password'),
                    hintText: 'Enter Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  validator: (value) {
                    if (value!.length < 6) {
                      return 'Please Enter Password of min length 6';
                    } else {
                      return null;
                    }
                  },
                  onSaved: (value) {
                    setState(() {
                      password = value!;
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        login
                            ? AuthServices.signinUser(email, password, context)
                            : AuthServices.signupUser(
                                email, password, fullname, context);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Mytheme.darkbluishcolor,
                        textStyle: const TextStyle(fontSize: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100))),
                    child: Text(login ? 'Login' : 'Register'),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      setState(() {
                        login = !login;
                      });
                    },
                    child: Text(
                        login
                            ? "Don't have an account? Signup"
                            : "Already have an account? Login",
                        style: const TextStyle(color: Colors.deepPurple)))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
