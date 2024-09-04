import 'package:flutter/material.dart';

void main() {
  runApp(const CounterApp());
}

class CounterApp extends StatelessWidget {
  const CounterApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      home: CounterScreen(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class CounterScreen extends StatefulWidget {
  @override
  _CounterScreenState createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Counter App')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$_counter',
            style: const TextStyle(fontSize: 72),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: _incrementCounter,
                tooltip: 'Add',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: _decrementCounter,
                tooltip: 'subtract',
                child: const Icon(Icons.remove),
              ),
            ],
          )
        ],
      )),
    );
  }
}
