import 'package:flutter/material.dart';
import 'package:test_app/app/models/circle_model.dart';
import 'package:test_app/screen/arithmetic_screen.dart';
import 'package:test_app/screen/circle_screen.dart';
import 'package:test_app/screen/column_screen.dart';
import 'package:test_app/screen/dashboard_screen.dart';
import 'package:test_app/screen/hello_world_screen.dart';
import 'package:test_app/screen/simple_interest_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:DashboardScreen(),
    );
  }
}
