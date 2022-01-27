import 'package:flutter/material.dart';

import '../main_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  String email = "someone@gmail.com";
  String pass = "123";
  TextEditingController emailController = TextEditingController();
  TextEditingController passControler = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        changeButton = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      // await Navigator.pushNamed(context, MyRoutes.homeRoute);
      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const HomePage()));
      setState(() {
        changeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/BG.png"),
                    fit: BoxFit.cover))),
        SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 400),
            child: Column(children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "DIGIHEALTH",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                child: Column(
                  children: [
                    TextFormField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        hintText: "Enter UserName",
                        labelText: "UserName",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username cannot be empty";
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: passControler,
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Password",
                        labelText: "Password",
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (value.length < 6) {
                          return "Password should be 6";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      color: Colors.indigo[600],
                      borderRadius: BorderRadius.circular(changeButton ? 80 : 5),
                      child: InkWell(
                        onTap: () async {
                          if (emailController.text == email &&
                              passControler.text == pass) {
                            setState(() {
                              changeButton = true;
                            });
                            await Future.delayed(const Duration(seconds: 1));
                            // Navigator.pushNamed(context, MyRoutes.homeRoute);
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const MainPage()));
                          }
                        },
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changeButton ? 80 : 180,
                          height: 50,
                          alignment: Alignment.center,
                          child: changeButton
                              ? const Icon(
                                  Icons.done,
                                  color: Colors.deepPurple,
                                )
                              : const Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ]),
          ),
        )
      ]),
    );
  }
}

                        //SizedBox(
                        //height: 20,
                        //),
                        //InkWell(
                        //onTap: () {
                        // Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //},
                        //child: Container(
                        //width: 225,
                        //height: 60,
                        //alignment: Alignment.center,
                        //child: Text(
                        //"New Register",
                        //style: TextStyle(
                        //  color: Colors.white,
                        //fontWeight: FontWeight.bold,
                        //fontSize: 18),
                        //),
                        //decoration: BoxDecoration(
                        //  color: Colors.deepPurpleAccent,
                        //borderRadius: BorderRadius.circular(8)),
                        //),
                        //),
