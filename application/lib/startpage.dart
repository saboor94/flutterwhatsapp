import 'package:application/login.dart';
import 'package:application/signup.dart';
import 'package:flutter/material.dart';

class Startpage extends StatelessWidget {
  const Startpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://t4.ftcdn.net/jpg/04/61/47/03/360_F_461470323_6TMQSkCCs9XQoTtyer8VCsFypxwRiDGU.jpg'),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            const Text('hello'),
            const SizedBox(
              height: 150,
            ),
            SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Loginpage()),
                    );
                  },
                  child: const Text(
                    'login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
                height: 30,
                width: 200,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      side: const BorderSide(width: 1, color: Colors.black),
                      elevation: 0),
                  child: const Text('sign up',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ))
          ],
        ),
      ),
    ));
  }
}
