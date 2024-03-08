import 'package:application/homepage.dart';
import 'package:flutter/material.dart';

class Successfull extends StatelessWidget {
  const Successfull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 200,
              child: Icon(
                Icons.check_circle_outline,
                color: Colors.teal,
                size: 100,
              ),
            ),
            const ListTile(
              title: Center(
                child: Text(
                  'Successful!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ),
              subtitle: Center(
                  child: Text(
                      'You have successfully registered in\n   our app and start working in it.')),
            ),
            SizedBox(
              height: 200,
            ),
            SizedBox(
                height: 30,
                width: 250,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                  child: const Text('Start Shopping',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold)),
                ))
          ],
        ),
      ),
    );
  }
}
