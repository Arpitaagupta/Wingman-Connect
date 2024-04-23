import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 166, 126, 0),
        title: const Text(
          'Wingman Chat bot',
          style: TextStyle(color: Colors.white),
        ),
      ),
      // body: DashChat(),
    );
  }
}
