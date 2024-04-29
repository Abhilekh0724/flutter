
import 'package:flutter/material.dart';

class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body:Text("Hello World!",style:TextStyle(fontSize: 30))
    );

  }
}
