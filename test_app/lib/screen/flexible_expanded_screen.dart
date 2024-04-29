import 'package:flutter/material.dart';
import 'package:test_app/app/common/snackbar.dart';

import '../common/snackbar.dart';

class FlexibleExpandedScreen extends StatelessWidget {
  const FlexibleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              child: Container(
                alignment: Alignment.center,
                color: Colors.grey,
                width: double.infinity,
                height: 400,
                child: ElevatedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Button'),
                      duration: Duration(seconds: 2),
                      backgroundColor: Colors.green,
                      behavior: SnackBarBehavior.floating,
                    ),
                  );
                }, child: const Text("Button")),

              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                color: Colors.blueGrey,
                width: double.infinity,
                height: 200,
                child: ElevatedButton(onPressed: (){
                  showMySnackBar(message: "Hello", context:context,
                    color: Colors.red
                  );
                  // ScaffoldMessenger.of(context).showSnackBar(
                  //   const SnackBar(
                  //     content: Text('Button2'),
                  //     duration: Duration(seconds: 2),
                  //     backgroundColor: Colors.red,
                  //     behavior: SnackBarBehavior.floating,
                  //   ),
                  //);
                }, child: const Text("Button2"))
              ),
            )
          ],
        ),
      ),


    );
  }
}
