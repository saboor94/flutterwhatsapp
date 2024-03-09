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
      backgroundColor:Color.fromARGB(255, 91, 163, 204),
      body: ListView(
        children: [
          const SizedBox(
            height: 250,
            child: Center(
                child: Text('Super Mart',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 40,color:  Color.fromARGB(255, 4, 54, 105)))),
          ),
          const ListTile(
            title:
                Text('welcome', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Color.fromARGB(255, 4, 54, 105))),
            subtitle: Text('Please login or sign up to continue our app',style: TextStyle(fontSize: 15,color:  Color.fromARGB(255, 4, 54, 105)),),
          ),
          const SizedBox(
            height: 30,
          ),
          listTileLoginAndSignup('Email', emailController, false),
          listTileLoginAndSignup('Password', passwordController, true),
          SizedBox(height: 15,),
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
                      ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 37, 36, 36)),
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
      style: TextStyle(fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 4, 54, 105),fontSize: 18),
    ),
    subtitle: SizedBox(height: 30, child: textfeild(contorller, falseortrue)),
  );
}

textfeild(controller, open) {
  return TextField(
    obscureText: open,
    controller: controller,
    decoration: const InputDecoration(
        contentPadding: EdgeInsets.only(bottom: 20),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 0))),
    cursorHeight: 20,
    cursorColor: Colors.black,
    style: const TextStyle(fontSize: 15),
  );
}
