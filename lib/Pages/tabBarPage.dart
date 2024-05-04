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
              color: Colors.black
            ),
            ),
            centerTitle: true,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(25)
              )
            ),
            //Title Background Settings
            backgroundColor: Colors.amber[900],
            //Tab bar settings
            bottom:  TabBar(tabs: const[
              Text("CALORIES"),
              Text("BODY MASS INDEX")
            ],
            labelColor: Colors.black,
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
