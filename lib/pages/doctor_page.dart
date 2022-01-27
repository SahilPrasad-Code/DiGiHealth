import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/recognise.dart';

class DoctorPage extends StatefulWidget {
  const DoctorPage({ Key? key }) : super(key: key);

  @override
  _DoctorPageState createState() => _DoctorPageState();
}

class _DoctorPageState extends State<DoctorPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [
                      0.1,
                      0.4,
                      0.7,
                      0.9
                    ],
                        colors: [
                      Color(0xFF3594DD),
                      Color(0xFF4563DB),
                      Color(0xFF5036D5),
                      Color(0xFF5B16D0)
                    ])),
      child: Center(child: text(name: "Doctor", size: 22),),
      
    );
  }
}