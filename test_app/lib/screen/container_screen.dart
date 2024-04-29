import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.centerRight,
          child: const Text('I am a container',style: TextStyle(fontSize: 30),),


        ),
      ),

    );
  }
}

// import 'package:flutter/material.dart';
//
// class ContainerScreen extends StatelessWidget {
//   const ContainerScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightGreenAccent,
//       body: SafeArea(
//         child: Center(
//           child: Container(
//             width: 300,
//             height: 300,
//             alignment: Alignment.center,
//             child: const Text('I am a container',style: TextStyle(fontSize: 30),),
//             decoration: BoxDecoration(
//               shape: BoxShape.circle,
//               color: Colors.lightGreenAccent,
//               border: Border.all(
//                 color: Colors.black,
//                 width: 5,
//               ),
//             ),
//
//           ),
//         ),
//       ),
//
//     );
//   }
// }

