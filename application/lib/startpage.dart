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
              filterQuality: FilterQuality.high,
              image: NetworkImage(
                  'https://myrepublica.nagariknetwork.com/uploads/media/commerce.jpg'),
              fit: BoxFit.cover)),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 180,
            ),
            const Text(
              ' Welcome\n      To\nSupermart',
              style: TextStyle(
                color: Color.fromARGB(255, 4, 54, 105),
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  fontStyle: FontStyle.italic),
            ),
            const SizedBox(
              height: 350,
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
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: const Text(
                    'login',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
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
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18)),
                ))
          ],
        ),
      ),
    ));
  }
}
