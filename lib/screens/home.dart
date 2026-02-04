import 'package:flutter/material.dart';
import '/widget/category_section.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Events"),
      ),
      body: ListView(
        padding: EdgeInsets.all(22),
        scrollDirection: Axis.vertical,
        children: [
          CategorySection(title:"Sports"),
          CategorySection(title:"Tech"),
          CategorySection(title:"Arts"),
          CategorySection(title:"Entertainment"),
          CategorySection(title:"mech"),
          CategorySection(title:"electrical"),

          
        ],
        

      ),
    );
  }
}