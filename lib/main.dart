import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutter Demo')),
        body: const Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 100),
              Text('TextField issue'),
              SizedBox(
                width: 400,
                child: TextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
