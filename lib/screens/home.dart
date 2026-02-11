import 'package:credit_point_system/screens/login_page.dart';
import 'package:credit_point_system/widget/slider_section.dart';
import 'package:flutter/material.dart';
import '../widget/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Events"),
        actions: [
          Padding(
            padding: EdgeInsetsGeometry.only(right: 12),
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green[400]
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: const Text('Login'),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
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
