import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Container & Padding Lab"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "1. Padding Widget:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            // TODO 1: Implement a Padding widget
            Padding(
              padding: const EdgeInsets.all(20.0),
              // Wrapped in a colored Container so you can visually see the padding space
              child: Container(
                color: Colors.yellow[300],
                child: const Text("I am inside a padding"),
              ),
            ),

            const Divider(height: 40, thickness: 2),

            const Text(
              "2. Container Widget:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            // TODO 2: Implement a Container widget
            Container(
              width: 200,
              height: 100,
              margin: const EdgeInsets.all(20.0),
              padding: const EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10.0),
              ),
              // Center widget added so the text is aligned nicely inside the container
              child: const Center(
                child: Text(
                  'Hello, Container!',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
