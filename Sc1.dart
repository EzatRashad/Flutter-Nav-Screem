import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int index = 0;
  var t = ["Home", "Favorite", "Account"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: const Text(
          "IEEE",
          style: TextStyle(
              color: Colors.black,
              fontSize: 35,
              fontWeight: FontWeight.bold,
          ),
        ),
        titleSpacing: 30,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.black,
                size: 40,
              ))
        ],
      ),
      bottomNavigationBar: Container(
        height: 100,
        decoration: const BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GNav(
            backgroundColor: Colors.grey,
            selectedIndex: index,
            color: Colors.black,
            activeColor: Colors.grey,
            tabBackgroundColor: Colors.black,
            padding: const EdgeInsets.all(25),
            iconSize: 35,
            // SelectionOverlay.fadeDuration,
            rippleColor: Colors.red,
            //hoverColor: Colors.blue,
            curve: Curves.easeInCirc,
            duration: const Duration(milliseconds: 400),
            onTabChange: (indexx) {
              setState(() {
                index = indexx;
              });
            },
            tabs: const [
              GButton(
                icon: Icons.home_outlined,
              ),
              GButton(
                icon: Icons.favorite,
              ),
              GButton(
                icon: Icons.account_circle,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(t[index]),
      ),
    );
  }
}
