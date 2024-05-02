import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ieee_it_mobile_app/Pages/tabBarPage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int currentIndex = 0;

  List navBarBody = const[
    TabBarPage(),
    Text("UNDER CONSTRUCTION!",
    style: TextStyle(
      color: Colors.white,
      fontSize: 25
    ),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("Calorie Counter",
      //
      //     //This is the text style of the title
      //     style: TextStyle(
      //         fontSize: 25,
      //         fontWeight:FontWeight.bold,
      //         color: Colors.white),
      //   ),
      //   centerTitle: true,
      //
      //   // This is the background color of the title
      //   backgroundColor: Colors.blueGrey[800],
      // ),

      //This is the background color of the page itself
      backgroundColor: Colors.black,

      //This is the body of the application
      body: Center(
        child: navBarBody[currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (int newIndex){
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const[
          BottomNavigationBarItem(
            label: 'Calculator',
            icon: Icon(Icons.calculate_rounded)
          ),
          BottomNavigationBarItem(
            label: 'Blk V Cut',
              icon: Icon(Icons.fastfood_rounded)
          )
        ],
        backgroundColor: Colors.amber[900],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.deepOrange[900],
      ),
    );
  }
}
