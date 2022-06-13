import 'package:flutter/material.dart';
import 'package:lawyer/utils/routes.dart';
import 'package:lawyer/widgets/appBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget categoryCol(name, number) => Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$name",
            style: TextStyle(
                fontSize: 34, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text("$number Lawyers",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                  color: Colors.white)),
        ],
      );

// forward button
  final button = IconButton(
      onPressed: () {
        // Navigator.pushNamed(context, MyRoutes.searchRoute);
      },
      icon: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.white,
        size: 30,
      ));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // Header of the app
      appBar: appBar("Home"),

      // Body of the app
      body: Container(
        margin: EdgeInsets.only(left: 10, top: 90, right: 10, bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xff6E72E9),
                    borderRadius: new BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    categoryCol("Criminal Lawyer", "100"),
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(
                              context, MyRoutes.lawyerInfoRoute);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.white,
                          size: 30,
                        )),
                  ],
                ),
              ),
              // tile 2
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xff6E72E9),
                    borderRadius: new BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    categoryCol("Criminal Lawyer", "100"),
                    button,
                  ],
                ),
              ),
              // tile 3
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xff6E72E9),
                    borderRadius: new BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    categoryCol("Criminal Lawyer", "100"),
                    button,
                  ],
                ),
              ),
              // tile 4
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xff6E72E9),
                    borderRadius: new BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    categoryCol("Criminal Lawyer", "100"),
                    button,
                  ],
                ),
              ),
              // tile 5
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xff6E72E9),
                    borderRadius: new BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    categoryCol("Criminal Lawyer", "100"),
                    button,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Adds nav bar
      // drawer: MyDrawer(),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
