import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // TODO 1: Added the 'async' keyword
  Future<void> getData() async {
    // TODO 2: Added the 'await' keyword before Future.delayed
    await Future.delayed(const Duration(seconds: 3), () {
      print("Diluka");
    });

    // This will now print AFTER the 3-second delay
    print("Hello");
  }

  @override
  void initState() {
    super.initState();
    // TODO 3: Called the getData() function here
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Async & Await Lab"), centerTitle: true),
      body: const Center(
        child: Text(
          "Check the debug console after 3 seconds!",
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
