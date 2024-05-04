import 'package:flutter/material.dart';
import 'package:ieee_it_mobile_app/Pages/BMIcalculator.dart';
import 'package:ieee_it_mobile_app/Pages/calorieCalculatorPage.dart';

class TabBarPage extends StatefulWidget {
  const TabBarPage({super.key});

  @override
  State<TabBarPage> createState() => _TabBarPageState();
}

class _TabBarPageState extends State<TabBarPage> {
  @override


  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          // backgroundColor: Colors.blueGrey[900],
          appBar: AppBar(
            //Title settings
            title: const Text("Calorie Calculator",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(0)
              )
            ),
            //Title Background Settings
            backgroundColor: const Color.fromRGBO(255, 122, 0, 1),
            //Tab bar settings
            bottom:  TabBar(tabs: const[
              Text("CALORIES"),
              Text("BODY MASS INDEX")
            ],
            //this is the part that edits the underline of selected tab
            indicator: const UnderlineTabIndicator(
              borderSide: BorderSide(width: 1.0,color: Colors.white),
            ),
            labelColor: Colors.white,
            dividerColor: Colors.grey,
            unselectedLabelColor: Colors.deepOrange[900],
            ),
          ),


          body: const TabBarView(

            children: [
              CalorieCalculator(),
              BMICalculator()
            ],
          ),

        )
    );
  }
}
