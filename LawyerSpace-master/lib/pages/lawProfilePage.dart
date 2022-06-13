import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lawyer/widgets/appBar.dart';

class LawyerProfilePage extends StatelessWidget {
  // const LawyerProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBar("Lawyer Profile"),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(
              left: screenWidth - 410,
              top: screenWidth - 410,
              right: screenWidth - 410,
              bottom: 0),
          child: Column(
            children: [
              // Main header (blue box)
              Container(
                width: double.infinity,
                height: screenWidth - 280,
                decoration: BoxDecoration(
                  color: Color(0xff6E72E9),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffBEBDBD).withOpacity(.5),
                      blurRadius: 3.0,
                    )
                  ],
                ),
                // blue box content
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth - 330,
                      // margin: EdgeInsets.all(screenWidth - 400),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image(
                            image: AssetImage("assets/images/human2.png"),
                          )),
                    ),
                    // Info column (name, ph_no, categoty, exp)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Nithin Mahendran",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              height: 1.5,
                            )),
                        Text("+91 9902876487",
                            style: TextStyle(
                              fontWeight: FontWeight.w100,
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.5,
                            )),
                        Text("Criminal Lawyer",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.5,
                            )),
                        Text("10 yrs. experience",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              height: 1.5,
                            )),
                      ],
                    ),
                    // Call button
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xff3C43F6),
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffBEBDBD).withOpacity(.5),
                              blurRadius: 3.0,
                            )
                          ]),
                      child: IconButton(
                        onPressed: () {
                          print("Calling...");
                        },
                        icon: Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ), // End of Main header (blue box)
              SizedBox(
                height: screenWidth - 400,
                // height: 20,
              ),

              // personel description
              Container(
                margin: EdgeInsets.all(screenWidth - 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Personel Description",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenWidth - 400,
                    ),
                    Text(
                      "Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out print, graphic or web designs. The passage is attributed to an unknown typesetter in the 15th century who is thought to have scrambled parts of Cicero's ",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: screenWidth - 410,
                    ),
                    Container(
                      width: screenWidth - 50,
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              // email
              Container(
                margin: EdgeInsets.all(screenWidth - 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenWidth - 400,
                    ),
                    Text(
                      "example@example.com",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: screenWidth - 410,
                    ),
                    Container(
                      width: screenWidth - 50,
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              // Qualfications
              Container(
                margin: EdgeInsets.all(screenWidth - 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Qualfications",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenWidth - 400,
                    ),
                    Text(
                      "LLB, ....etc",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: screenWidth - 410,
                    ),
                    Container(
                      width: screenWidth - 50,
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              // State
              Container(
                margin: EdgeInsets.all(screenWidth - 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "State",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenWidth - 400,
                    ),
                    Text(
                      "Karnataka",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: screenWidth - 410,
                    ),
                    Container(
                      width: screenWidth - 50,
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              // District
              Container(
                margin: EdgeInsets.all(screenWidth - 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "District",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenWidth - 400,
                    ),
                    Text(
                      "Dakshina Kannada",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: screenWidth - 410,
                    ),
                    Container(
                      width: screenWidth - 50,
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),

              // City
              Container(
                margin: EdgeInsets.all(screenWidth - 400),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "City",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: screenWidth - 400,
                    ),
                    Text(
                      "Mangalore",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      height: screenWidth - 410,
                    ),
                    Container(
                      width: screenWidth - 50,
                      height: 1,
                      color: Colors.black,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
