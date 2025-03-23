

import 'package:flutter/material.dart';

class ItemsDetails extends StatefulWidget {
  final Map<String, String> data;

  const ItemsDetails({super.key, required this.data});

  @override
  State<ItemsDetails> createState() => _ItemsDetailsState();
}

class _ItemsDetailsState extends State<ItemsDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           bottomNavigationBar: BottomNavigationBar(
        iconSize: 40,
        selectedItemColor: Colors.orange,
        items: [
            BottomNavigationBarItem(icon:Icon(Icons.home_outlined),label: "*" ),
            BottomNavigationBarItem(icon:Icon(Icons.shopping_bag_outlined),label: "*" ),
            BottomNavigationBarItem(icon:Icon(Icons.person_2_outlined),label: "*" ),
      ]
      ),
      endDrawer: Drawer(

      ),
      appBar: AppBar(
        title: Text( 
          widget.data['name']!,
          style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[200],
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 5,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  widget.data['imagePath']!,
                  height: 250,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Text(
              widget.data['name']!,
              style: const TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 15),
            Text(
              widget.data['description']!,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            
            Text(
                widget.data['price']!,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
          const SizedBox(height: 20),
            
            Row(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Color : ",style: TextStyle(color: Colors.grey),),
                SizedBox(width:20),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Colors.orange),
                  ),
                ),
                Text("   Grey "),
                 SizedBox(width:20),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                Text("   Black "),
               
              ],
            ),
            
            Container(
              margin: EdgeInsets.all(20),
              child: Text(" Size :  34  35  40  41  ",textAlign:TextAlign.center,style: TextStyle(color: Colors.grey[600],fontSize: 20,fontWeight: FontWeight.bold),)
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: MaterialButton(
                  color: Colors.black,
                  textColor: Colors.white,
                  onPressed: (){},child: Text("Add To Card"),),
              ),  
          ],
        ),
      ),
    );
  }
}
