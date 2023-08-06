import 'package:flutter/material.dart';
import 'package:task_iti/category.dart';
import 'package:task_iti/home.dart';
import 'package:task_iti/profile.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({Key? key}) : super(key: key);

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int currentIndex =0;
  List<Widget>Screens=[
    const HomeScreen(),
    const CategoryScreen(),
    const ProfileScreen(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index){
              setState(() {
                currentIndex=index;
              });
            },
            selectedItemColor: Colors.orangeAccent,


            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: 'Home'),
              BottomNavigationBarItem(icon: Icon(Icons.category_outlined),label: 'Category'),
              BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),]),
      body:Screens[currentIndex] ,
    );
  }
}
