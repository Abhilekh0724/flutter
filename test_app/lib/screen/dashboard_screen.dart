import 'package:flutter/material.dart';
import 'package:test_app/screen/Radio_Screen.dart';
import 'package:test_app/screen/arithmetic_screen.dart';
import 'package:test_app/screen/circle_screen.dart';
import 'package:test_app/screen/column_screen.dart';
import 'package:test_app/screen/simple_interest_screen.dart';
import 'package:test_app/screen/tree_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: const Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const ArithmeticScreen() ));
              }, child: const Text("Arithmetic"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const SimpleInterestScreen() ));
              }, child: const Text("SI"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const AreaCircle()));
              }, child: const Text("Area of Circle"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const TreeScreen()));
              }, child: const Text("Tree"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const ColumnScreen()));
              }, child: const Text("Column"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const RadioScreen()));
              }, child: const Text("Radio"))),
        ],
      ),
    );
  }
}
