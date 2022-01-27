import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
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
                child: Column(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: Text(
                          "DiGiHealth",
                          style: TextStyle(
                              color: Color(0xFF421C52),
                              fontFamily: "OpenSans",
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic),
                        )),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(50, 255, 255, 255),
                        borderRadius: BorderRadius.all(Radius.circular(22)),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Find Your Doctor",
                                  hintStyle: TextStyle(color: Colors.white),
                                  icon: Icon(Icons.search_outlined)),
                            ),
                          ),
                          Expanded(
                            flex: 0,
                            child: Row(
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.mic,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CarouselSlider(
                        items: [
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/s1.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            margin: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                image: DecorationImage(
                                  image: AssetImage("assets/images/s2.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
                        options: CarouselOptions(
                          height: 200,
                          enlargeCenterPage: true,
                          autoPlay: true,
                          aspectRatio: 16 / 9,
                          autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 800),
                          viewportFraction: 0.8,
                        ))
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
