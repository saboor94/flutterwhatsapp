import 'package:application/login.dart';
import 'package:application/loginfun.dart';
import 'package:application/successful.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

TextEditingController UsernameController = TextEditingController();
TextEditingController SignUpEmailController = TextEditingController();
TextEditingController SignUpPasswordController = TextEditingController();
TextEditingController ConfirmpasswordController = TextEditingController();

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 91, 163, 204),
      body: ListView(
        children: [
          const SizedBox(
            height: 130,
            child: Center(
                child: Text('Super Mart',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color:  Color.fromARGB(255, 4, 54, 105)))),
          ),
          const ListTile(
            title:
                Text('Sign up', style: TextStyle(fontWeight: FontWeight.bold,color:  Color.fromARGB(255, 4, 54, 105),fontSize: 22)),
            subtitle: Text('Create an new account',style:TextStyle(color:  Color.fromARGB(255, 4, 54, 105),fontSize: 15),),
          ),
          const SizedBox(
            height: 10,
          ),
          listTileLoginAndSignup('Username', UsernameController, false),
          listTileLoginAndSignup('Email', SignUpEmailController, false),
          listTileLoginAndSignup('Password', SignUpPasswordController, true),
          listTileLoginAndSignup(
              'Confirm Password', ConfirmpasswordController, true),
              SizedBox(height: 20,),
          Center(
            child: SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    signupfun();
                    if (signUp == true) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Successfull()),
                      );
                    } else {
                      SignUpEmailController.clear();
                      SignUpPasswordController.clear();
                      ConfirmpasswordController.clear();
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
