import 'package:flutter/material.dart';
import 'package:lawyer/widgets/appBar.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _clicked = false;
  String dropdownValue = 'One';

  final header = Container(
    width: double.infinity,
    height: 200,
    padding: EdgeInsets.symmetric(vertical: 30, horizontal: 50),
    decoration: BoxDecoration(
      color: Color(0xff6E72E9),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Search by",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 42,
            letterSpacing: 2,
          ),
        ),
        Text(
          "Name, Category",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 30,
            letterSpacing: 1,
          ),
        ),
        Text(
          "State/City",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 30,
            letterSpacing: 1,
          ),
        ),
      ],
    ),
  );

  final textField = Container(
    width: 250,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Color(0xffBEBDBD).withOpacity(.5),
          blurRadius: 3.0,
        )
      ],
    ),
    child: TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          color: Color(0xffBEBDBD),
        ),
        hintText: "Search by name...",
        hintStyle: TextStyle(color: Color(0xffBEBDBD), fontSize: 20),
        border: InputBorder.none,
      ),
    ),
  );

  void _changeMode() {
    setState(() {
      _clicked = !_clicked;
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBodyBehindAppBar: true,
      // Header of the app
      appBar: appBar("Search"),

      // Body of the app
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 10, top: 90, right: 10, bottom: 0),
          child: Column(
            children: [
              // Header of the page (blue box)
              header,

              // search box and filter button
              Container(
                margin: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // search text field
                    textField,
                    SizedBox(
                      width: screenWidth - 415,
                    ),
                    // Search button
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xff6E72E9),
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffBEBDBD).withOpacity(.5),
                              blurRadius: 3.0,
                            )
                          ]),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenWidth - 410,
                    ),
                    // filter box
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Color(0xffEF4646),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xffBEBDBD).withOpacity(.5),
                              blurRadius: 3.0,
                            )
                          ]),
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            _changeMode();
                          });
                        },
                        icon: Icon(
                          Icons.filter_alt_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Conditional.single(
                context: context,
                conditionBuilder: (BuildContext context) => _clicked == false,
                widgetBuilder: (BuildContext context) {
                  return Container(
                    width: double.infinity,
                    height: 335,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/search_man.png"),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Looking for a lawyer ?",
                            style: TextStyle(
                                color: Color(0xff676666), fontSize: 20)),
                        Text(
                            "Try using our filter to better match your search . . .",
                            style: TextStyle(
                                color: Color(0xff7E7D7D),
                                fontSize: 22,
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  );
                },
                fallbackBuilder: (BuildContext context) {
                  return Container(
                    width: double.infinity,
                    height: screenWidth,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage("assets/images/search_man.png"),
                      fit: BoxFit.cover,
                    )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Filter",
                            style: TextStyle(
                                color: Color(0xff676666), fontSize: 20)),
                        SizedBox(
                          height: screenWidth - 380,
                        ),
                        // Category DropDown
                        Container(
                          height: 90,
                          margin: EdgeInsets.symmetric(
                              vertical: 0, horizontal: screenWidth - 400),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Category",
                                  style: TextStyle(
                                      color: Color(0xff676666), fontSize: 16)),
                              DropdownButtonFormField<String>(
                                elevation: 10,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xffEF2F1F1)),
                                value: dropdownValue,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                iconSize: 24,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Free',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenWidth - 410,
                        ),
                        // State DropDown
                        Container(
                          height: 90,
                          margin: EdgeInsets.symmetric(
                              vertical: 0, horizontal: screenWidth - 400),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("State",
                                  style: TextStyle(
                                      color: Color(0xff676666), fontSize: 16)),
                              DropdownButtonFormField<String>(
                                elevation: 10,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xffEF2F1F1)),
                                value: dropdownValue,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                iconSize: 24,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Free',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenWidth - 410,
                        ),
                        // City DropDown
                        Container(
                          height: 90,
                          margin: EdgeInsets.symmetric(
                              vertical: 0, horizontal: screenWidth - 400),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("City",
                                  style: TextStyle(
                                      color: Color(0xff676666), fontSize: 16)),
                              DropdownButtonFormField<String>(
                                elevation: 10,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(20)),
                                    ),
                                    filled: true,
                                    fillColor: Color(0xffEF2F1F1)),
                                value: dropdownValue,
                                icon: const Icon(
                                    Icons.keyboard_arrow_down_rounded),
                                iconSize: 24,
                                style:
                                    const TextStyle(color: Colors.deepPurple),
                                onChanged: (String newValue) {
                                  setState(() {
                                    dropdownValue = newValue;
                                  });
                                },
                                items: <String>[
                                  'One',
                                  'Two',
                                  'Free',
                                  'Four'
                                ].map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: bottomNavBar(context),
    );
  }
}
