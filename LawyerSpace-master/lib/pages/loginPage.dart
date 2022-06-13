// import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lawyer/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool change = false;

  final _formkey = GlobalKey<FormState>();

  movetoHome(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        change = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
        change = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            // SizedBox(
            //   height: screenWidth - 370,
            // ),
            Container(
              height: screenHeight * .3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/logo12.png",
                    fit: BoxFit.cover,
                    height: screenHeight * .15,
                  ),
                  Text("LawyerSpace",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.deepPurple,
                      )),
                ],
              ),
            ),

            // For adding space between widgets
            // SizedBox(
            //   height: screenWidth - 370,
            // ),
            Container(
              height: screenHeight * .7,
              child: Form(
                key: _formkey,
                child: Container(
                  width: double.infinity,
                  height: screenWidth + 101,
                  decoration: BoxDecoration(
                      // color: Colors.blue.shade600,
                      color: Color(0xff6E72E9),
                      boxShadow: [
                        new BoxShadow(
                            color: Color(0xff5B61F9).withOpacity(.7),
                            blurRadius: 10.0)
                      ],
                      borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(80.0),
                        topRight: const Radius.circular(80.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 0, top: 50, right: 0, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: GoogleFonts.poppins().fontFamily,
                              fontSize: 28,
                              color: Colors.white,
                            )),
                        Container(
                          child: Column(
                            children: [
                              Container(
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Email ID",
                                      hintStyle: TextStyle(
                                        color: Color(0xffBEBDBD),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    validator: (value) {
                                      if (value.isEmpty) {
                                        return "Username not found";
                                      }
                                      return null;
                                    },
                                    onChanged: (value) {
                                      name = value;
                                      setState(() {});
                                    },
                                  ),
                                  width: 250,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xffBEBDBD).withOpacity(.5),
                                        blurRadius: 5.0,
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 30.0,
                              ),
                              Container(
                                  child: TextFormField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(
                                        color: Color(0xffBEBDBD),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                    validator: (value) {
                                      if (value.length < 6) {
                                        return "Password has to be filled";
                                      }
                                      return null;
                                    },
                                  ),
                                  width: 250,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 0, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            Color(0xffBEBDBD).withOpacity(.5),
                                        blurRadius: 5.0,
                                      )
                                    ],
                                  )),
                              SizedBox(
                                height: 60.0,
                              ),
                              InkWell(
                                onTap: () => movetoHome(context),
                                child: AnimatedContainer(
                                  duration: Duration(seconds: 1),
                                  width: change ? 50 : 100,
                                  height: 47,
                                  alignment: Alignment.center,
                                  child: change
                                      ? Icon(Icons.done, color: Colors.white)
                                      : Text("Login",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: GoogleFonts.poppins()
                                                  .fontFamily,
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold)),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          change ? 50 : 15),
                                      color: Color(0xffAEB3DA)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don't have an account?",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w200,
                                    fontSize: 16,
                                    color: Colors.white,
                                  )),
                              TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, MyRoutes.registerRoute);
                                },
                                child: Text("Register Here",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      // color: Colors.white,
                                    )),
                              ),
                            ])
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
