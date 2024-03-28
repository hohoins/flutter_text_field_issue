import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Builder(
        builder: (context) {
          return const Scaffold(body: SafeArea(child: TabPage()));
        },
      ),
    );
  }
}

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int _tab = 0;

  void _changeTab(int index) {
    setState(() => _tab = index);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 200,
          padding: const EdgeInsets.all(12),
          color: Colors.lightGreen,
          child: Column(
            children: [
              Text('current tab: ${_tab + 1}'),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _changeTab(0),
                child: const Text('tab 1'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => _changeTab(1),
                child: const Text('tab 2'),
              ),
            ],
          ),
        ),
        Expanded(
          child: _tab == 0 ? const Page1() : const BugScreen(),
        ),
      ],
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        SizedBox(height: 60),
        Text('flutter TextField BUG'),
        Text('https://github.com/flutter/flutter/issues/145751'),
        Text('https://github.com/flutter/flutter/issues/138395'),
        Text('https://github.com/flutter/flutter/issues/144768'),
        SizedBox(height: 60),
        Text('flutter: 3.19.4'),
        Text('iPad Pro 11 (3rd gen)'),
        Text('iOS 17.4.1'),
      ],
    );
  }
}

class BugScreen extends StatelessWidget {
  const BugScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          const SizedBox(height: 100),
          const Text('TextField issue'),
          const SizedBox(width: 400, child: TextField()),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Test button'),
          ),
        ],
      ),
    );
  }
}
