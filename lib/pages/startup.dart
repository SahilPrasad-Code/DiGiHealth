import 'package:flutter/material.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/pages/recognise.dart';
import 'package:flutter_application_1/pages/startup2.dart';
import 'package:flutter_application_1/pages/startup3.dart';
import 'slider.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import '../utils/widgets/slide_item.dart';

class StartupPage extends StatefulWidget {
  const StartupPage({Key? key}) : super(key: key);

  @override
  _StartupPageState createState() => _StartupPageState();
}

class _StartupPageState extends State<StartupPage> {
  final int _numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<Widget> _buildPageIndicator() {
    List<Widget> list = [
      StartupPage2(),
      StartupPage3(),
    ];
    for (int i = 0; i < _numPages; i++) {
      list.add(i == _currentPage ? _indicator(true) : _indicator(false));
    }
    return list;
  }

  Widget _indicator(bool isActive) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 150),
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: 8.0,
      width: isActive ? 24.0 : 16.0,
      decoration: BoxDecoration(
        color: isActive ? Colors.white : Color(0xFF7B51D3),
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }

  var child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartupPage2()),
                  );
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 22.0,
                  ),
                )),
          )
        ],
      ),
      // backgroundColor: Colors.blue,
      // body: Center(
      //     child: Image(
      //   image: const AssetImage("assets/images/start_upt.png"),
      //   width: MediaQuery.of(context).size.width / .5,
      // )),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      // floatingActionButton: FloatingActionButton(
      //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      //   child: const Center(
      //     child: Text(
      //       "GET START",
      //       style: TextStyle(
      //           color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      //     ),
      //   ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Container(
          // ignore: prefer_const_constructors
          height: MediaQuery.of(context).size.height,
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 1.5,
                  child: PageView(
                    physics: const ClampingScrollPhysics(),
                    controller: _pageController,
                    onPageChanged: (int page) {
                      setState(() {
                        _currentPage = page;
                      });
                    },
                    children: [
                      Center(
                        child: Image(
                          image: const AssetImage(
                            "assets/images/sss.png",
                          ),
                          // height: 500.0,
                          width: MediaQuery.of(context).size.width / 2,
                        ),
                      )
                    ],
                  ),
                ),
                
                Text(
                  'Find Your Perfect Doctor Through \nSingle App DigiHealth',
                  style: TextStyle(fontSize: 22, color: Colors.indigo.shade200),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(height: 60),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    ),

                    // ignore: avoid_print
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already Have An Account ?",
                      style: TextStyle(fontSize: 15),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()),
                          );
                        },
                        child: Text(
                          "Sign In",
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.underline,
                              color: Colors.indigo.shade200,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

    // onPressed: () {
    //   Navigator.push(
    //     context,
    //     MaterialPageRoute(builder: (context) => const LoginPage()),
    //   );
    // }
  }

  // _indicator(bool bool) {}
}
