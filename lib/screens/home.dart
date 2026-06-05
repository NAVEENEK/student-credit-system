import 'package:credit_point_system/screens/all_events.dart';
import 'package:credit_point_system/widget/common_appbar.dart';
import 'package:credit_point_system/widget/slider_section.dart';
import 'package:flutter/material.dart';
import '../widget/category_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Events", islogged: true),
      body: SafeArea(
        child: Column(
          children: [
            const SliderSection(),

            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(22),
                children:  [
                  CategorySection(title: "Workshop"),
                  CategorySection(title: "seminar"),
                  CategorySection(title: "competition"),
                  CategorySection(title: "Exhibition"),
                  CategorySection(title: "Training"),
                  CategorySection(title: "Campaign"),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context)=>const AllEvents(),
                          )
                        );
                    }, 
                    child: Text("view all"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
