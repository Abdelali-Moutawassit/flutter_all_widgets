import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Center(
            child: Text(
              "All Widgets Flutter",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          width: 100,
          height: 100,
          color: Colors.amber,
          margin: EdgeInsets.all(
            10,
          ), // Laisser l'espace entre container et les elements a l'exterieur
          padding: EdgeInsets.all(10), // L'espace entre child et le widget
          alignment: Alignment(
            0,
            0,
          ), // Le deplacement de child par apport le container selon (x,y)
          transform: Matrix4.rotationZ(-0.5),
          constraints: BoxConstraints(minWidth: 0, maxWidth: 80),
          child: const Text("Test"),
        ),
      ),
    );
  }
}
