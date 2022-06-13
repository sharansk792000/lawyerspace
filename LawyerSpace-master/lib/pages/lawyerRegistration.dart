import 'package:flutter/material.dart';
import 'package:lawyer/widgets/appBar.dart';

class LawyerRegistration extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: appBar("Registration"),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(40, 0, 40, 0),
            child: Column(
              children: [
                
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Full Name',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(

                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Contact Number',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'email address',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                        obscureText: true,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'State',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    child: Row(
                      children: [
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'District',
                                  hintStyle:
                                      TextStyle(color: Color(0xFFB1B0B0)),
                                  border: InputBorder.none),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: TextFormField(
                              decoration: InputDecoration(
                                  hintText: 'City',
                                  hintStyle:
                                      TextStyle(color: Color(0xFFB1B0B0)),
                                  border: InputBorder.none),
                            ),
                          ),
                        )),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'How long have you been in this field?',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Write about yourself...',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Your Qualification',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Colors.white,
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: 'Your Category (eg: Criminal)',
                            hintStyle: TextStyle(color: Color(0xFFB1B0B0)),
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Expanded(
                      child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                            color: Color(0xFFEFEFEF),
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: Color(0xFFEFEFEF),
                            ),
                            boxShadow: [
                              BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                            ]),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              color: Color(0xFF8B97A2),
                            ),
                          ),
                        ),
                        Text(
                          'Add Photo',
                          style: TextStyle(color: Color(0xFF8B97A2)),
                        )
                      ],
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  child: Expanded(
                      child: Container(
                    height: 45,
                    decoration: BoxDecoration(
                   
                        color: Color(0xFFEFEFEF),
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(
                          color: Color(0xFFEFEFEF),
                        ),
                        boxShadow: [
                          BoxShadow(blurRadius: 2, color: Color(0xFFCBCACA))
                        ]),

                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                            child: Icon(
                              Icons.document_scanner_outlined,
                              color: Color(0xFF8B97A2),
                            ),
                          ),
                        ),
                        Text(
                          'Upload Documents',
                          style: TextStyle(color: Color(0xFF8B97A2)),
                        )
                      ],
                    ),
                  )),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 50),
                  child: Expanded(
                      child: Container(
                    width: 250,
                    height: 45,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(5)),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        )),
                  )),
                )
              ],
            ),
          ),
        ));
  }
}
