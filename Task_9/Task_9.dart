import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFE5E5E5),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    "https://i.pinimg.com/736x/72/d9/af/72d9af964d384fc2a16fd087c1062a7c.jpg",
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 40,
                    left: 20,
                    child: Icon(Icons.arrow_back, color: Colors.white),
                  ),
  

                  Positioned(
                    top: 40,
                    right: 20,
                    child: Row(children: [
                      Icon(Icons.share,color: Colors.white),
                      const SizedBox(width: 15),
                      Icon(Icons.bookmark_border,color: Colors.white),
                    ],),
                  ),
                  Center(
                    child: Icon(Icons.play_circle_fill, color: Colors.white, size: 80),
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Homemade Ramen",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     const SizedBox(height: 5),
                     Row(
                      mainAxisAlignment: MainAxisAlignment.end, 
                      children: [
                            Container(
       decoration: BoxDecoration(
         color: Colors.orange, 
         shape: BoxShape.circle,
       ),
       padding: EdgeInsets.all(5), 
       child: Icon(Icons.star, color: Colors.white, size: 20),
     ),
                        Text(
                          "4,5",style:TextStyle(fontSize: 16,fontWeight: FontWeight.bold),
                        ),

                     ],),
    

                    const SizedBox(height: 5),
                    Text(
                      "By June Xie",
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.access_time, size: 30, color: Colors.blueAccent),
                            const SizedBox(height: 5),
                            Text("3h 30min", style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.people, size: 30, color: Colors.blueAccent),
                            const SizedBox(height: 5),
                            Text("Serves 4", style: TextStyle(fontSize: 14)),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.star, size: 30, color: Colors.blueAccent),
                            const SizedBox(height: 5),
                            Text("Intermediate", style: TextStyle(fontSize: 14)),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Text(
                      "Ingredients",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _ingredientItem("8 cups", "Low sodium chicken broth"),
                    _ingredientItem("16", "Dried Shiitake mushrooms"),
                    _ingredientItem("1", "Kombu (about 10-inch piece)"),
                    _ingredientItem("20g", "Dried Bonito flakes"),
                    _ingredientItem("1 1/4 cups", "Low sodium soy sauce"),
                    _ingredientItem("1 1/4 cups", "Mirin"),
                    _ingredientItem("1/2 cup", "Sake"),
                    _ingredientItem("1 cup", "Water"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ingredientItem(String quantity, String ingredient) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(quantity, style: TextStyle(fontWeight: FontWeight.bold)),
          Text(ingredient, style: TextStyle(color: Colors.grey[700])),
        ],
      ),
    );
  }
}
