import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl =
        "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.computerhope.com%2Fjargon%2Fg%2Fguest-user.jpg&imgrefurl=https%3A%2F%2Fwww.computerhope.com%2Fjargon%2Fd%2Fdefaultu.htm&tbnid=yEXaoet_zCg0sM&vet=10CBgQxiAoBmoXChMI4OqV1fWM8wIVAAAAAB0AAAAAEA8..i&docid=Vr60JEDc0bRy8M&w=300&h=300&itg=1&q=sign%20in%20picture&ved=0CBgQxiAoBmoXChMI4OqV1fWM8wIVAAAAAB0AAAAAEA8";

    return Drawer(
      child: ListView(
        children:  [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: const Text("abcd"),
                  accountEmail: const Text("abcd@email.com"),
                currentAccountPicture: Image.network(imageUrl) ,
                  )
                  )
        ],
      ),
    );
  }
}
