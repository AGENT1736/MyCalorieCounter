import 'package:flutter/material.dart';

class CalorieCalculator extends StatefulWidget {
  const CalorieCalculator({super.key});



  @override
  State<CalorieCalculator> createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {


  //Inputs the tester is required to input to check the calorie to maintain
  //weight of the tester in kilograms
  int bodyWeight = 0;
  //gender of the tester
  bool isMale = true;
  // height of the tester in centimeters
  int bodyHeight = 0;
  //age of the tester
  int age = 0;
  //check the activity of the person reading the calorie count
  int isActive = 0;



  @override
  Widget build(BuildContext context) {

    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25,width: screenWidth,),
              const Text("Enter Your Age!",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
              // const SizedBox(height: 5,),
              TextFormField(
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),
              const SizedBox(height: 25,),
              const Text("Enter Your Height!",
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 25,
                color: Colors.white
              ),
              ),
              // const SizedBox(height: 5,),
              TextFormField(
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),
              const SizedBox(height: 25,),
              const Text("Enter Your Weight!",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
              TextFormField(
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),
              // const SizedBox(height: 25,),
              const SizedBox(height: 25,),
              const Text("On the scale from 1 to 4... How active are you?",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.white
                ),
              ),
              // const SizedBox(height: 5,),
              TextFormField(
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),
              const SizedBox(height: 25,),
              Row(
                children: [
                  ElevatedButton(onPressed: (){},
                  child: const Text("Calculate for male!",),
                  ),
                  const SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){},
                    child: const Text("Calculate for female!",),
                  ),
                ],
              ),
              const SizedBox(height: 10,),
              const Text("Your Calories are: ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
