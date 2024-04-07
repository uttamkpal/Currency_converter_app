import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

// Type of Widget
// 1. StatelessWidget -  Immutable
// 2. StatefulWidget - Mutable
// 3. InheritedWidget

// State


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
// Design
// 1. Material Design - Created by Google
// import 'package:flutter/material.dart';
// 2. Cupertino Design - Created by Apple
// import 'package:flutter/cupertino.dart';
    return const MaterialApp(
      home: Scaffold(
        body: Center(
            child: Text("Hello World App"),
        ),
      ),
    );


    //   const Text(
    //     "Uttam Kumar Pal .....!!!",
    //     textDirection: TextDirection.ltr
    // );
  }
}

