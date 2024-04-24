import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
        title: Text("Dashboard"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=>const ArithmeticScreen() ));
              }, child: Text("Arithmetic"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const SimpleInterestScreen() ));
              }, child: Text("SI"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const AreaCircle()));
              }, child: Text("Area of Circle"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const TreeScreen()));
              }, child: Text("Tree"))),
          SizedBox(width: double.infinity,
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,//pushReplacement
                    MaterialPageRoute(builder: (context)=>const ColumnScreen()));
              }, child: Text("Column"))),
        ],
      ),
    );
  }
}
