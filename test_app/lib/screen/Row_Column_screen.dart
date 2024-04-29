import 'package:flutter/material.dart';

class RowColumnScreen extends StatelessWidget {
  const RowColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row and Column"),
      ),
      body: Container(
        child: const Column(
          children: [
            Row(
              children: [
                Column()
              ],
            )
          ],
        ),
      ),

    );
  }
}
