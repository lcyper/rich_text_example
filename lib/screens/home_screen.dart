import 'package:flutter/material.dart';
import 'package:rich_text_example/screens/content_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => ContentScreen(),
            ),
          ),
          child: const Text('Read'),
        ),
      ),
    );
  }
}
