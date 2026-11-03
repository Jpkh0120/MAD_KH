import 'package:flutter/material.dart';

void main() {
  runApp(const KokHao());
} // end main

class KokHao extends StatelessWidget {
  const KokHao({super.key});

  void doSomething() {
    debugPrint("Hello World");
  } // end doSomething

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: doSomething,
            icon: const Icon(Icons.menu),
          ), // end IconButton
          title: const Text("Profile"),
          backgroundColor: Colors.green,
        ), // end AppBar
        body: const Center(
          child: Column(
            children: [ 
               SizedBox(height: 40),
              CircleAvatar(
                backgroundColor: Colors.green,
                radius: 60,
                child:
              CircleAvatar(
                backgroundImage: AssetImage("assets/images/2.jpg"),
                backgroundColor: Colors.green,
                radius: 50,
              ), 
              ), // end CircleAvatar
              Text("Aqil Qayyim", style: TextStyle(color: Colors.green, fontSize: 18, fontFamily: 'Times New Roman')),
            ], // end children list
          ), // end Column
        ), // end Center
      ), // end Scaffold
    ); // end MaterialApp
  } // end build
} // end class KokHao