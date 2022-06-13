import 'package:flutter/material.dart';
import 'package:lawyer/utils/routes.dart';
// import 'package:lawyer/models/catelog.dart';
import 'package:lawyer/widgets/appBar.dart';
// import 'package:lawyer/widgets/drawer.dart';
// import 'package:lawyer/widgets/appBar.dart';

class LawyerInfoPage extends StatefulWidget {
  @override
  _LawyerInfoPageState createState() => _LawyerInfoPageState();
}

class _LawyerInfoPageState extends State<LawyerInfoPage> {
  final lawyerCol = Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "Rahul Rao",
        style: TextStyle(
            fontSize: 34, fontWeight: FontWeight.bold, color: Colors.black87),
      ),
      Text("Criminal Lawyer",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black87)),
      Text("Location: Mangalore",
          style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.normal,
              color: Colors.black87)),
    ],
  );

  // forward button
  final button = IconButton(
      onPressed: () {
        // Navigator.pop(context);
      },
      icon: Icon(
        Icons.arrow_forward_ios_rounded,
        color: Colors.black87,
        size: 30,
      ));

  @override
  Widget build(BuildContext context) {
    // final int date = 30;
    // String name = "Rahul";
    // final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      extendBodyBehindAppBar: true,
      // Header of the app
      appBar: appBar("Lawyer Info"),

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
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA6A4A4).withOpacity(.5),
                        blurRadius: 3.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    lawyerCol,
                    IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, MyRoutes.lawProRoute);
                        },
                        icon: Icon(
                          Icons.arrow_forward_ios_rounded,
                          color: Colors.black,
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
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA6A4A4).withOpacity(.5),
                        blurRadius: 3.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    lawyerCol,
                    button,
                  ],
                ),
              ),
              // tile 3
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA6A4A4).withOpacity(.5),
                        blurRadius: 3.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    lawyerCol,
                    button,
                  ],
                ),
              ),
              // tile 4
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA6A4A4).withOpacity(.5),
                        blurRadius: 3.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    lawyerCol,
                    button,
                  ],
                ),
              ),
              // tile 5
              Container(
                height: 130,
                margin: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xffA6A4A4).withOpacity(.5),
                        blurRadius: 3.0,
                      )
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    lawyerCol,
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
