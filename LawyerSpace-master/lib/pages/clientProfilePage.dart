import "package:flutter/material.dart";
import 'package:lawyer/widgets/appBar.dart';

class ClientProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // MAIN HEADER CONTAINER (blue box)
            Container(
              width: double.infinity,
              height: (sreenWidth) - 80,
              padding: EdgeInsets.all(sreenWidth - 400),
              decoration: BoxDecoration(
                color: Color(0xff6E72E9),
                borderRadius: BorderRadius.vertical(
                    top: Radius.zero, bottom: Radius.circular(25)),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xffBEBDBD).withOpacity(.5),
                    blurRadius: 3.0,
                  )
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Back arrow and Edit button
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back_outlined,
                              color: Colors.white,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Edit",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ))
                      ]),
                  // Profile Image
                  Container(
                    width: 100,
                    margin: EdgeInsets.all(sreenWidth - 400),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image(
                          image: AssetImage("assets/images/human2.png"),
                        )),
                  ),

                  Text(
                    "N Rahul Rao",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    "example@example.com",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ), // Main container end
            SizedBox(
              height: sreenWidth - 380,
              // height: 20,
            ),

            // phone number
            Container(
              margin: EdgeInsets.all(sreenWidth - 400),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Phone No",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: sreenWidth - 400,
                  ),
                  Text(
                    "9148473657",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: sreenWidth - 410,
                  ),
                  Container(
                    width: sreenWidth - 50,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            // State
            Container(
              margin: EdgeInsets.all(sreenWidth - 400),
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
                    height: sreenWidth - 400,
                  ),
                  Text(
                    "Karnataka",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: sreenWidth - 410,
                  ),
                  Container(
                    width: sreenWidth - 50,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            // District
            Container(
              margin: EdgeInsets.all(sreenWidth - 400),
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
                    height: sreenWidth - 400,
                  ),
                  Text(
                    "Dakshina Kannada",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: sreenWidth - 410,
                  ),
                  Container(
                    width: sreenWidth - 50,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
            ),
            // City
            Container(
              margin: EdgeInsets.all(sreenWidth - 400),
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
                    height: sreenWidth - 400,
                  ),
                  Text(
                    "Mangalore",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: sreenWidth - 410,
                  ),
                  Container(
                    width: sreenWidth - 50,
                    height: 1,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
