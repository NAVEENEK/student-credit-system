import 'package:credit_point_system/widget/slider_section.dart';
import 'package:flutter/material.dart';
import '../widget/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Events")),
      body: SafeArea(
        child:Column(
          children: [
            const SliderSection(),
            
            Expanded(
              child: ListView(
              padding: EdgeInsets.all(22),
              children: const [
                CategorySection(title: "Sports"),
                CategorySection(title: "Tech"),
                CategorySection(title: "Arts"),
                CategorySection(title: "Entertainment"),
                CategorySection(title: "mech"),
                CategorySection(title: "electrical"),
              ],
                    ),
            ),
          ],
        ), 
      ),

    );
  }
}
