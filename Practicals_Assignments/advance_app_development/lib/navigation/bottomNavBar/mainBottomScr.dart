import 'package:flu_prac/navigation/bottomNavBar/home.dart';
import 'package:flu_prac/navigation/bottomNavBar/search.dart';
import 'package:flu_prac/navigation/bottomNavBar/profile.dart';
import 'package:flutter/material.dart';

class btm1bar extends StatefulWidget {
  const btm1bar({super.key});

  @override
  State<btm1bar> createState() => _btm1barState();
}

class _btm1barState extends State<btm1bar> {
  List screens = [home(),search(),profile()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: screens[index],
      bottomNavigationBar: BottomNavigationBar(currentIndex: index,onTap: (value) {
        setState(() {
          index = value;
        });
      },items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'search'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),],),
    );
  }
}
