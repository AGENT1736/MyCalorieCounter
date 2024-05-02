import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalorieCalculator extends StatefulWidget {
  const CalorieCalculator({super.key});



  @override
  State<CalorieCalculator> createState() => _CalorieCalculatorState();
}

class _CalorieCalculatorState extends State<CalorieCalculator> {

  //TODO: create a better UI for the application


  // this is used to edit take the input from a text field and make changes on the UI based on it
  TextEditingController ageController = TextEditingController();
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  TextEditingController activityController = TextEditingController();


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


              // This is for the age input
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
                controller:ageController,
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),


              //This is for the height input
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
                controller: heightController,
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),


              //This is for the weight input
              const SizedBox(height: 25,),
              const Text("Enter Your Weight!",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 25,
                    color: Colors.white
                ),
              ),
              TextFormField(
                controller: weightController,
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),


              //This is for the activity input
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
                controller: activityController,
                style: const TextStyle(
                    color:Colors.white,
                    fontSize: 20
                ),
              ),


              //This is for the buttons for the calculations
              const SizedBox(height: 25,),
              Row(
                children: [
                  ElevatedButton(onPressed: (){
                    //TODO: this is where the code for the changes for the male side will happen
                    age = ageController as int;
                    bodyHeight = heightController as int;
                    bodyWeight = weightController as int;
                    isActive = activityController as int;

                    //checks age
                    if(age < 0 && age > 100){
                      print("Enter a valid age!");
                    }
                    else if(bodyHeight < 130){
                      print("Enter a valid body height");
                    }else if(bodyWeight < 20){
                      print("Enter a valid body weight");
                    }

                    switch(isActive) {
                      case 1:
                        isActive = 1;
                        break;
                      case 2:
                        isActive = 2;
                        break;
                      case 3:
                        isActive = 3;
                        break;
                      case 4:
                        isActive = 4;
                        break;
                      default:
                        print("Enter a valid scaling");
                    }

                  },
                  child: const Text("Calculate for male!",),
                  ),
                  const SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){
                    //TODO: this is where the changes for the female side will happen

                  },
                    child: const Text("Calculate for female!",),
                  ),
                ],
              ),



              const SizedBox(height: 10,),
              const Text("Calories to consume are : ",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15
              ),
              ),
              //TODO: create a Text to display the result for the calorie count

            ],
          ),
        ),
      ),
    );
  }
}
