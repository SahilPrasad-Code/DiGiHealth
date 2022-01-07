import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final String day = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text("DiGiHealth"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 25),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
         
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
         decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
              //     stops: [
              //   0.1,
              //   0.4,
              //   0.7,
              //   0.9
              // ],
                  colors: [
                Color(0xFF4F0D73),
                // Color(0xFF4563DB),
                // Color(0xFF5036D5),
                // Color(0xFF5B16D0)
              ])),
      )
    );
  }
}






// import 'package:flutter_application_1/pages/recognise.dart';

// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         actions: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               Text(
//                 "DiGiHealth",
//                 style: TextStyle(fontSize: 30, color: Colors.white38),
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
