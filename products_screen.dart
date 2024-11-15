import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      "title": "Tomatoes",
      "price": "₹50/kg",
      "image": "images/tomatoes.jpg"
    },
    {"title": "Wheat", "price": "₹30/kg", "image": "images/wheat.jpg"},
    {
      "title": "Potatoes",
      "price": "₹25/kg",
      "image": "images/potatoes.jpg"
    },
    {
      "title": "Carrots",
      "price": "₹40/kg",
      "image": "images/carrots.jpg"
    },
    {"title": "Onions", "price": "₹20/kg", "image": "images/onions.jpg"},
    {"title": "Rice", "price": "₹45/kg", "image": "images/rice.jpg"},
    {
      "title": "Spinach",
      "price": "₹35/kg",
      "image": "images/spinach.jpg"
    },
    {
      "title": "Cucumbers",
      "price": "₹15/kg",
      "image": "images/cucumbers.jpg"
    },
    {
      "title": "Pumpkins",
      "price": "₹60/kg",
      "image": "images/pumpkins.jpg"
    },
    {
      "title": "Eggplant",
      "price": "₹55/kg",
      "image": "images/eggplant.jpg"
    },
  ];

   ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Container(
        color: Colors.lightGreenAccent,
        child: GridView.builder(
          padding: const EdgeInsets.all(10.0),
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (ctx, i) =>
              Card(
                color: Colors.white,
                child: Column(
                  children: [
                    Expanded(
                      child: Image.asset(
                        products[i]['image'] ?? 'images/wheat.jpg', // Provide a default image path
                        fit: BoxFit.cover,
                      ),
                    ),
                    // Load the image here
                    Text(
                      products[i]['title']!,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    Text(products[i]['price']!,
                        style: const TextStyle(color: Colors.black)),
                    TextButton(onPressed: () {}, child: const Text('Contact Seller')),
                  ],
                ),
              ),
        ),
      ),
    );
  }
}