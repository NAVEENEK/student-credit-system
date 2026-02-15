import 'package:credit_point_system/screens/club.dart';
import 'package:credit_point_system/screens/home.dart';
import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  const SelectScreen({super.key});

  @override
  State<SelectScreen> createState() => _SelectScreenState();
}

class _SelectScreenState extends State<SelectScreen> {

  int selectedIndex=0;

  final List<Widget> pages=[
    HomePage(),
    clubPage(),
    Placeholder(),
    Placeholder()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: NavigationBar(
        destinations: const[
          NavigationDestination(
            icon: Icon(Icons.home_outlined), 
            selectedIcon: Icon(Icons.home),
            label: 'Home'
            ),
            NavigationDestination(
            icon: Icon(Icons.groups_outlined), 
            selectedIcon: Icon(Icons.groups),
            label: 'Club'
            ),
            NavigationDestination(
            icon: Icon(Icons.article_outlined), 
            selectedIcon: Icon(Icons.article),
            label: 'News'
            ),
            NavigationDestination(
            icon: Icon(Icons.person_outline), 
            selectedIcon: Icon(Icons.person),
            label: 'Profile'
            )

        ],
        selectedIndex: selectedIndex,
        onDestinationSelected:(index){
          setState(() {
            selectedIndex=index;
          });
        }
        
      ),
    );
  }
}