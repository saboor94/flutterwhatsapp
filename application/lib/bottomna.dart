import 'package:application/homepage.dart';
import 'package:application/login.dart';
import 'package:application/signup.dart';
import 'package:flutter/material.dart';

bottom(context) {
  return BottomNavigationBar(
    showSelectedLabels: false,
    showUnselectedLabels: false,
    backgroundColor: Colors.blue,
    selectedLabelStyle: TextStyle(fontSize: 0),
    unselectedLabelStyle: TextStyle(fontSize: 0),
    items: [
      BottomNavigationBarItem(
          icon: iconbutton(Icons.home, context, Homepage()), label: ''),
      BottomNavigationBarItem(
          icon: iconbutton(Icons.people, context, Homepage()), label: ''),
      BottomNavigationBarItem(
          icon: iconbutton(Icons.shopping_cart, context, Signup()), label: ''),
      BottomNavigationBarItem(
          icon: iconbutton(Icons.notifications, context, Loginpage()),
          label: '')
    ],
  );
}
iconbutton(icon, context, Screen) {
  return IconButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Screen));
      },
      icon:Icon(icon,color: Colors.black,));
}
