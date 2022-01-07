import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/startup.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      // initialRoute: MyRoutes.loginRoute,
      // routes: {
      //   "/": (context) => const LoginPage(),
      //   MyRoutes.homeRoute: (context) => const HomePage(),
      //   MyRoutes.loginRoute: (context) => const LoginPage()
      // },
      home: const StartupPage(),
    );
  }
}
