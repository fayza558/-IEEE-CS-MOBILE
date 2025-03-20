
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'bmi_result_screen.dart'; // استيراد الشاشة الجديدة

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 150;
  int weight = 90;
  int age = 23;
  bool isClicked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#0d1232"),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "BMI Application",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// Gender Selection
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildGenderCard("MALE", "assets/male-gender.png", isClicked, () {
                    setState(() {
                      isClicked = true;
                    });
                  }),
                  buildGenderCard("FEMALE", "assets/femenine.png", !isClicked, () {
                    setState(() {
                      isClicked = false;
                    });
                  }),
                ],
              ),
              const SizedBox(height: 20),

              /// Height Slider
              Container(
                width: double.infinity,
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: HexColor('#252a48'),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "HEIGHT",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "${height.toInt()} ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: "CM",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Slider(
                        value: height,
                        min: 60,
                        max: 250,
                        activeColor: Colors.red,
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),

              /// Weight & Age Counters
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildCounterCard("WEIGHT", weight, () {
                    setState(() {
                      weight++;
                    });
                  }, () {
                    setState(() {
                      if (weight > 1) weight--;
                    });
                  }),
                  buildCounterCard("AGE", age, () {
                    setState(() {
                      age++;
                    });
                  }, () {
                    setState(() {
                      if (age > 1) age--;
                    });
                  }),
                ],
              ),
              const SizedBox(height: 20),

              /// Check BMI Button
              Container(
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.red,
                ),
                child: MaterialButton(
                  onPressed: () {
                    double res=weight/pow(height/100, 2);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BmiResultScreen(gender: isClicked?"MALE":"FEMALE",
                          res: res.toInt(),
                          age: age,);
                        },
                      ),
                    );
                  },
                  child: Text(
                    "CHECK YOUR BMI",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Gender Selection Card
  Widget buildGenderCard(String gender, String asset, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 170,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: selected ? Colors.blue : HexColor('#252a48'),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                asset,
                height: 80,
                width: 80,
                color: Colors.white,
              ),
              SizedBox(height: 10),
              Text(
                gender,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Weight & Age Counter Cards
  Widget buildCounterCard(String label, int value, VoidCallback onIncrease, VoidCallback onDecrease) {
    return Container(
      padding: EdgeInsets.all(20),
      width: 170,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: HexColor('#252a48'),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "$value",
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: HexColor("#0d1232"),
                  child: IconButton(
                    onPressed: onIncrease,
                    icon: Icon(Icons.add),
                    color: Colors.white,
                  ),
                ),
                CircleAvatar(
                  backgroundColor: HexColor("#0d1232"),
                  child: IconButton(
                    onPressed: onDecrease,
                    icon: Icon(Icons.remove),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
