import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Container(
        color: Colors.green, // Background color
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Welcome message
                const Text(
                  'Welcome to the Farmer Marketplace!',
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                const SizedBox(height: 20),

                // Introduction text
                const Text(
                  'Explore the best products and engage in discussions with fellow farmers.',
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
                const SizedBox(height: 20),

                // Featured Products Title
                const Text(
                  'Featured Products',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                const SizedBox(height: 10),

                // Sample product grid (you can replace this with actual products)
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true, // Use this to prevent overflow
                  physics: const NeverScrollableScrollPhysics(), // Disable scrolling
                  children: List.generate(4, (index) {
                    return Card(
                      color: Colors.white,
                      margin: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Expanded(child: Icon(Icons.image, size: 50)), // Placeholder for product image
                          Text(
                            'Product ${index + 1}',
                            style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                          Text('₹${(index + 1) * 10}/kg', style: const TextStyle(color: Colors.black)),
                        ],
                      ),
                    );
                  }),
                ),

                // Navigation button to Products
                const SizedBox(height: 20),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the Products screen
                      Navigator.pushNamed(context, '/products'); // Make sure to set up routes
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white, // Background color
                      foregroundColor: Colors.deepOrange, // Text color
                    ),
                    child: const Text('View All Products'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
