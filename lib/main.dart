import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Hello'),
        ),
        body: Builder(
          builder: (coco) {
            return ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(coco)
                    .showSnackBar(const SnackBar(content: Text('Hello')));
              },
              child: const Text("Next"),
            );
          },
        ),
      ),
    );
  }
}
