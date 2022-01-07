import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/patient.dart';
import 'package:flutter_application_1/pages/sign.dart';


class Doctor extends StatelessWidget {
  const Doctor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Color(0xFF73AEF5),
                Color(0xFF61A4F1),
                Color(0xFF478DE0),
                Color(0xFF398AE2)
              ],
                  stops: [
                0.1,
                0.4,
                0.7,
                0.9
              ])),
        ),
        Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 60,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "OpenSans",
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Name",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadiusDirectional.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(
                                    0,
                                    10,
                                  ))
                            ]),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.account_circle,
                                color: Colors.white,
                              ),
                              hintText: "Enter Your Name",
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "OpenSans")),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Email",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadiusDirectional.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(
                                    0,
                                    10,
                                  ))
                            ]),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.white,
                              ),
                              hintText: "Enter Your Email",
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "OpenSans")),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Contact",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadiusDirectional.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(
                                    0,
                                    10,
                                  ))
                            ]),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.add_ic_call,
                                color: Colors.white,
                              ),
                              hintText: "Enter Your Contact No.",
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "OpenSans")),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Specialist In",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadiusDirectional.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(
                                    0,
                                    10,
                                  ))
                            ]),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.spa,
                                color: Colors.white,
                              ),
                              hintText: "Specialist In...",
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "OpenSans")),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Address",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: "OpenSans",
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Container(
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                            color: Color(0xFF6CA8F1),
                            borderRadius: BorderRadiusDirectional.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 6,
                                  offset: Offset(
                                    0,
                                    10,
                                  ))
                            ]),
                        height: 60,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.only(top: 14),
                              prefixIcon: Icon(
                                Icons.add_location,
                                color: Colors.white,
                              ),
                              hintText: "Enter Your Address",
                              hintStyle: TextStyle(
                                  color: Colors.white54,
                                  fontFamily: "OpenSans")),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                   Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF6CA8F1),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),),
                    ),

                    // ignore: avoid_print
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> Sign()));
                    },
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                  )
                ],
              ),
            ))
      ],
    ));
  }
}
