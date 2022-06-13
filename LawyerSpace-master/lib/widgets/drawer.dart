import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  final url =
      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fpngtree.com%2Ffreepng%2Fbusiness-people-avatar-icon-user-profile-free-vector_4815126.html&psig=AOvVaw2mdyDUGWptn8syY8Q6Isn4&ust=1622877182309000&source=images&cd=vfe&ved=0CAIQjRxqFwoTCNCjv-W2_fACFQAAAAAdAAAAABAE";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(color: Color(0xff6C8AB6)),
                accountName: Text("Rahul Rao"),
                accountEmail: Text("rahulrao7144@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    "assets/images/human2.png",
                  ),
                )
                // For images from browser
                // currentAccountPicture: Image.network(url),
                ),
          ),
          ListTile(
            leading: Icon(
              Icons.home,
              color: Color(0xff565555),
            ),
            title: Text(
              "Home",
              textScaleFactor: 1,
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                color: Color(0xff565555),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.account_circle,
              color: Color(0xff565555),
            ),
            title: Text(
              "Profile",
              textScaleFactor: 1,
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                color: Color(0xff565555),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.search,
              color: Color(0xff565555),
            ),
            title: Text(
              "Search",
              textScaleFactor: 1,
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                color: Color(0xff565555),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.info,
              color: Color(0xff565555),
            ),
            title: Text(
              "About Us",
              textScaleFactor: 1,
              style: TextStyle(
                fontFamily: GoogleFonts.lato().fontFamily,
                fontWeight: FontWeight.bold,
                color: Color(0xff565555),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
