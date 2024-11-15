import 'package:flutter/material.dart';
import 'discussion_detail_screen.dart'; // Import the discussion detail screen
import 'add_discussion_screen.dart'; // Import the add discussion screen

class DiscussionsScreen extends StatefulWidget {
  const DiscussionsScreen({super.key});

  @override
  _DiscussionsScreenState createState() => _DiscussionsScreenState();
}

class _DiscussionsScreenState extends State<DiscussionsScreen> {
  final List<String> discussions = [
    "How to grow organic vegetables?",
    "Best practices for irrigation",
  ];

  void _addDiscussion(String discussion) {
    setState(() {
      discussions.add(discussion);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Discussions')),
      body: Container(
        color: Colors.lightGreenAccent, // Background color
        child: ListView.builder(
          itemCount: discussions.length,
          itemBuilder: (ctx, i) => ListTile(
            title: Text(
              discussions[i],
              style: const TextStyle(color: Colors.black), // Text color
            ),
            onTap: () {
              // Navigate to DiscussionDetailScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DiscussionDetailScreen(discussion: discussions[i]),
                ),
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to AddDiscussionScreen
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddDiscussionScreen(onAddDiscussion: _addDiscussion),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
