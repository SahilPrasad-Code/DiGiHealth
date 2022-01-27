import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/account_page.dart';
import 'package:flutter_application_1/pages/discover_page.dart';
import 'package:flutter_application_1/pages/doctor_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final String day = "";
  bool home = true, doctor = false, discover = false, account = false;
  void navigator(int val) {
    if (val == 0) {
      setState(() {
        home = true;
        doctor = false;
        discover = false;
        account = false;
      });
    } else if (val == 1) {
      setState(() {
        home = false;
        doctor = true;
        discover = false;
        account = false;
      });

      //  Navigator

    } else if (val == 2) {
      setState(() {
        home = false;
        doctor = false;
        discover = true;
        account = false;
      });
    } else if (val == 3) {
      setState(() {
        home = false;
        doctor = false;
        discover = false;
        account = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text("DiGiHealth"),
      //   titleTextStyle: TextStyle(
      //       fontWeight: FontWeight.bold, color: Colors.black, fontSize: 25),
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions: [],
      // ),

      body: home
          ? HomePage()
          : discover
              ? DiscoverPage()
              : doctor
                  ? DoctorPage()
                  : account
                      ? AccountPage()
                      : Container(),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (val) {
            navigator(val);
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "Home",
                backgroundColor: Color(0xFF421C52)),
            BottomNavigationBarItem(
                icon: Icon(Icons.health_and_safety_outlined),
                label: "Doctor",
                backgroundColor: Color(0xFF421C52)),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: "Discover",
                backgroundColor: Color(0xFF421C52)),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: "Account",
                backgroundColor: Color(0xFF421C52)),
          ]),
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
