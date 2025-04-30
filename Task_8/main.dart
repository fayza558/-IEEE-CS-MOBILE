import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Example 1")),
        body: SingleChildScrollView( // Wrap body in a scroll view to handle long text.
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 10,left: 10),
                decoration: BoxDecoration(
                  color: Color(0xffe6f0fa),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.all(10),
                width: double.infinity,  // Use double.infinity for full width.
                child: Text(
                  "Fayza Mahmoud",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: Colors.grey[700],
                  ),
                ),
              ),
              SizedBox(height: 20),  // Add some spacing between the containers.
              Container(
                decoration: BoxDecoration(
                  color: Color(0xffe6f0fa),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                width: double.infinity,  // Use double.infinity for full width.
                child: Text(
                  "Engineers play a crucial role in shaping the world around us. "
                  "They apply scientific principles and mathematical concepts to solve problems and create innovative solutions that make our lives easier, safer, and more efficient. "
                  "Whether designing bridges, developing new technologies, or improving existing systems, engineers are at the forefront of progress.",
                  textAlign: TextAlign.center,
                  style: TextStyle(

                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                ),
              ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  color: Color(0xffe6f0fa),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                padding: EdgeInsets.symmetric(horizontal: 40,vertical: 10),
                width: double.infinity,  // Use double.infinity for full width.
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const[
                  Row(children: [
                    Icon(Icons.star,size: 20),
                    Icon(Icons.star,size: 20),
                    Icon(Icons.star,size: 20),
                    Icon(Icons.star,size: 20),
                    Icon(Icons.star,size: 20),
                  ],),

                  Text("!170 Reviews")
                ],)
                ,
              ),
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(top: 10),
                 decoration: BoxDecoration(
                  color: Color(0xffe6f0fa),
                  border: Border.all(color: Colors.black, width: 2),
                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(children: [
                      Icon(Icons.person,color:Colors.green[400],),
                      Text("Prep",style: TextStyle(fontWeight: FontWeight.w600,color:Colors.grey[700]),),
                      Container(height: 8,),
                      Text("25 min"),
                    ],),
                         Column(children: [
                      Icon(Icons.alarm,color:Colors.green[400],),
                      Text("Cook",style: TextStyle(fontWeight: FontWeight.w600,color:Colors.grey[700]),),
                      Container(height: 8,),
                      Text("1h"),
                    ],),
                         Column(children: [
                      Icon(Icons.restaurant,color:Colors.green[400],),
                      Text("Feed",style: TextStyle(fontWeight: FontWeight.w600,color:Colors.grey[700]),),
                      Container(height: 8,),
                      Text("4-6"),
                    ],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

