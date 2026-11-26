import 'package:flutter/material.dart';
import 'package:kokhao/block.dart';

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
          backgroundColor: Colors.grey,
        ), // end AppBar
        body: Center( // 
          child: Column(
            children: [ 
              const SizedBox(height: 40), 
              const CircleAvatar( 
                backgroundColor: Colors.grey,
                radius: 60,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/2.jpg"),
                  backgroundColor: Colors.green,
                  radius: 50,
                ), 
              ), // end CircleAvatar
              const SizedBox(height: 10),
              const Text("Aqil Qayyim", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 195, 198, 195),
                  borderRadius: BorderRadius.circular(88.888),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    Icon(Icons.school, color: Colors.white),
                    SizedBox(width: 4),
                    Text("Student", 
                    style: TextStyle(fontWeight:FontWeight.bold)
                    ),
                  ],
                ),
              ),// end Container
              const SizedBox(height: 40),
              const Padding(
                padding:EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                   Block(
                      "Hi Aqil",
                      "assets/images/2.jpg",
                      colour: Colors.green,
                      number: 80,
                    ),
                    Block(
                      "Hi Aqil",
                      "assets/images/2.jpg",
                      colour: Colors.blue,
                      number: 80,
                    ),
                    Block(
                      "Hi Aqil",
                      "assets/images/2.jpg",
                      colour: Colors.red,
                      number: 80,
                    ),
                    Block(
                      "Hi Aqil",
                      "assets/images/2.jpg",
                      colour: Colors.yellow,
                      number: 80,
                    ),
                  ]   
                )
              )
            ], // end children list
          ), // end Column
        ), // end Center
      ), // end Scaffold
    ); // end MaterialApp
  } // end build
} // end class KokHao