// ignore: avoid_web_libraries_in_flutter

import 'package:flutter/material.dart';

// ignore: camel_case_types
class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.indigo.shade900,
        child: Column(
          children: <Widget>[
            // ignore: prefer_const_literals_to_create_immutables
            Column(
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/2,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/splash.png'),
                              fit: BoxFit.fill
                              )
                              ),
                    ),
                    Text('DIGIHEALTH',style: TextStyle(fontSize: 55,    
                    color: Theme.of(context).primaryColor),
                    textAlign: TextAlign.center,
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ), 
    );
  }
}
