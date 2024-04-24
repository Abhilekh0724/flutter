import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column'),
      ),
      body: Container(
        color: Colors.yellow,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.star,size:70),
            Icon(Icons.star,size:70),
            Icon(Icons.star,size:70),
          ],
        ),
      ),


    );
  }
}
