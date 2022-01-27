import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/doctor.dart';
import 'package:flutter_application_1/pages/lab.dart';
import 'package:flutter_application_1/pages/patient.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/startup2.dart';

class Recognise extends StatelessWidget {
  const Recognise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                text(name: "You Want To Register As...",size: 25,),
                 SizedBox(
                  height: 100,
                ),

                
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Doctor()),
                          );
                        },
                        child: Image(
                            image: AssetImage(
                              "assets/images/ddd.png",
                            ),
                            width: MediaQuery.of(context).size.width / 2.7),
                      ),
                      SizedBox(width: 50),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => const Lab()),
                          );
                        },
                        child: Image(
                            image: AssetImage(
                              "assets/images/bbb.png",
                            ),
                            width: MediaQuery.of(context).size.width / 2.3),
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Patient()),
                    );
                  },
                  child: Image(
                    image: AssetImage(
                      "assets/images/ppp.png",
                    ),
                    width: MediaQuery.of(context).size.width / 2.3,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class text extends StatelessWidget {
  
  final String name;
  final double size;
  const text({
    Key? key, required this.name, required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: size,
          fontStyle: FontStyle.italic,
          color: Colors.white,
          fontWeight: FontWeight.bold),
    );
  }
}



class textBlack extends StatelessWidget {
  
  final String name;
  final double size;
  const textBlack({
    Key? key, required this.name, required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
          fontSize: size,
          fontStyle: FontStyle.italic,
          color: Colors.black,
          fontWeight: FontWeight.bold),
    );
  }
}
