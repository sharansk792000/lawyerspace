import 'package:flutter/material.dart';
import 'package:lawyer/utils/routes.dart';

class RegistrationPage extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Color(0xff6E72E9),
          body: Container(
            // height: 900,
            child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment(-1, 0),
                      child: Container(
                        height: 340,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                                color: Color(0xff646567), blurRadius: 5.0)
                          ],
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 120,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/registerLaw.png"),
                                  )),
                            ),
                            Text(
                              'Are you a lawyer?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.lawRegisterRoute);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blueAccent[400]),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ))),
                                  child: const Text('Register Here')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
                      child: Container(
                          child: Row(children: [
                        Expanded(
                          flex: 2,
                          child: Container(
                            // width: 100,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Color(0xffA9BFF9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'or',
                              style: TextStyle(
                                fontSize: 22,
                                color: Color(0xffE5EAFF),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            // width: 100,
                            height: 1,
                            decoration: BoxDecoration(
                              color: Color(0xffA9BFF9),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                            ),
                          ),
                        ),
                      ])),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Align(
                      alignment: Alignment(1, 1),
                      child: Container(
                        height: 340,
                        width: 330,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            new BoxShadow(
                                color: Color(0xff646567), blurRadius: 5.0)
                          ],
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(50)),
                        ),
                        padding: EdgeInsets.fromLTRB(0, 25, 0, 25),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              width: 120,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/registerLogo.png"),
                                  )),
                            ),
                            Text(
                              'Are you looking for a lawyer?',
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 150,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, MyRoutes.cltRegisterRoute);
                                  },
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.blueAccent[400]),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ))),
                                  child: const Text('Register Here')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ]),
          ),
        ));
  }
}
