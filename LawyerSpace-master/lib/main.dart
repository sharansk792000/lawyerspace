import 'package:flutter/material.dart';
import 'package:lawyer/pages/clientProfilePage.dart';
import 'package:lawyer/pages/clientRegister.dart';
import 'package:lawyer/pages/home_page.dart';
import 'package:lawyer/pages/lawProfilePage.dart';
import 'package:lawyer/pages/lawyerRegistration.dart';
import 'package:lawyer/pages/loginPage.dart';
import 'package:lawyer/pages/lawyerInfo.dart';
import 'package:lawyer/pages/registrationPage.dart';
import 'package:lawyer/pages/searchPage.dart';
import 'package:lawyer/utils/routes.dart';
import 'package:lawyer/widgets/themes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      // Make theme selection
      themeMode: ThemeMode.light,
      // Specifying light mode themes
      theme: MyThemes.lightTheme(context),
      debugShowCheckedModeBanner: false,
      // Specifying dark theme
      // execute only if ThemeMode.dark is specified
      darkTheme: MyThemes.darkTheme(context),

      // By Default route starts from "/"
      // Start the app from "/home"
      // initialRoute: MyRoutes.cltProRoute,

      // Specify the pages
      routes: {
        MyRoutes.homeRoute: (context) => HomePage(),
        "/": (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.registerRoute: (context) => RegistrationPage(),
        MyRoutes.cltRegisterRoute: (context) => ClientRegistration(),
        MyRoutes.lawRegisterRoute: (context) => LawyerRegistration(),
        MyRoutes.lawyerInfoRoute: (context) => LawyerInfoPage(),
        MyRoutes.searchRoute: (context) => SearchPage(),
        MyRoutes.cltProRoute: (context) => ClientProfile(),
        MyRoutes.lawProRoute: (context) => LawyerProfilePage(),
      },
    );
  }
}
