import 'package:flutter/material.dart';
import 'package:lawyer/utils/routes.dart';

Widget appBar(String text) {
  return AppBar(
    title: Text(
      "$text",
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    // leading: IconButton(
    //     onPressed: () {
    //       // Navigator.pop(context);
    //     },
    //     icon: Icon(
    //       Icons.keyboard_backspace_rounded,
    //       // color: Colors.white,
    //       size: 30,
    //     )),
    // actions: [
    // TextButton(
    //   onPressed: () {},
    //   child: Image.asset("assets/images/lawyer.png"),
    // ),
    // ],
    backgroundColor: Colors.white,
    elevation: 0.0,
    iconTheme: IconThemeData(color: Colors.black),
  );
}

Widget bottomNavBar(context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey,
          blurRadius: 2.0,
          spreadRadius: 0.0,
          offset: Offset(2.0, 2.0), // shadow direction: bottom right
        ),
      ],
    ),
    child: Row(
      children: <Widget>[
        Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 3,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.homeRoute);
              },
              icon: Icon(
                Icons.home_filled,
                color: Colors.blueAccent,
              ),
            )),
        Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 3,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.searchRoute);
              },
              icon: Icon(
                Icons.search_outlined,
                color: Colors.blueAccent,
              ),
            )),
        Container(
            height: 60,
            width: MediaQuery.of(context).size.width / 3,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, MyRoutes.cltProRoute);
              },
              icon: Icon(
                Icons.person,
                color: Colors.blueAccent,
              ),
            ))
      ],
    ),
  );
}
