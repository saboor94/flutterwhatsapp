import 'package:application/homepage.dart';
import 'package:application/loginfun.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: 130,
            child: Center(
                child: Text('Super Mart',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30))),
          ),
          const ListTile(
            title:
                Text('welcome', style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('Please login or sign up to continue our app'),
          ),
          const SizedBox(
            height: 10,
          ),
          listTileLoginAndSignup('Email', emailController, false),
          listTileLoginAndSignup('Password', passwordController, true),
          Center(
            child: SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    loginfun();
                    if (login == true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Homepage()),
                      );
                    } else {
                      emailController.clear();
                      passwordController.clear();
                    }
                    setState(() {});
                  },
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text('login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                )),
          )
        ],
      ),
    );
  }
}

listTileLoginAndSignup(
  title,
  contorller,
  falseortrue,
) {
  return ListTile(
    title: Text(
      (title),
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    subtitle: SizedBox(height: 30, child: textfeild(contorller, falseortrue)),
  );
}

textfeild(controller, open) {
  return TextField(
    obscureText: open,
    controller: controller,
    decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 25),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0))),
    cursorHeight: 20,
    cursorColor: Colors.black,
    style: const TextStyle(fontSize: 15),
  );
}
