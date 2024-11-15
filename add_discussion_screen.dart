import 'package:flutter/material.dart';

class AddDiscussionScreen extends StatelessWidget {
  final Function(String) onAddDiscussion;

  AddDiscussionScreen({super.key, required this.onAddDiscussion});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Add Discussion')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: const InputDecoration(labelText: 'Discussion Title'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String discussionTitle = _controller.text;
                if (discussionTitle.isNotEmpty) {
                  onAddDiscussion(discussionTitle);
                  Navigator.pop(context);
                }
              },
              child: const Text('Add Discussion'),
            ),
          ],
        ),
      ),
    );
  }
}
