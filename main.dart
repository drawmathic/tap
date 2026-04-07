import 'package:flutter/material.dart';

void main() {
  runApp(const MyMinimalApp());
}

// 1. Changed to a StatefulWidget
class MyMinimalApp extends StatefulWidget {
  const MyMinimalApp({super.key});

  @override
  State<MyMinimalApp> createState() => _MyMinimalAppState();
}

class _MyMinimalAppState extends State<MyMinimalApp> {
  // 2. Create a variable to store the button's color
  Color buttonColor = Colors.blue; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('INTP Sandbox')),
        body: Center(
          child: ElevatedButton(
            // 3. Apply the color variable to the button
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor, 
              foregroundColor: Colors.white, // Text color
            ),
            onPressed: () {
              // 4. Use setState() to change the color and rebuild the UI
              setState(() {
                // This toggles the color between blue and green
                if (buttonColor == Colors.blue) {
                  buttonColor = Colors.green;
                } else {
                  buttonColor = Colors.blue;
                }
              });
            },
            child: const Text('System Operational.'),
          ),
        ),
      ),
    );
  }
}
