import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Happy Birthday App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: '🎉 Happy Birthday! 🎂'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> _messages = [
    "Have a wonderful day! 🎈",
    "Wishing you all the best! 🎉🎁",
    "Enjoy your special day! 🎊🥳",
    "Make it unforgettable! 🌟💖",
    "Cheers to another year of greatness! 🥂🎂",
  ];

  int _currentIndex = 0;

  void _updateMessage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % _messages.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(Icons.cake, size: 100, color: Colors.pink),
            const SizedBox(height: 20),
            Text(
              _messages[_currentIndex],
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateMessage,
        tooltip: 'Next Message',
        child: const Icon(Icons.forward, color: Colors.yellow),
      ),
    );
  }
}
