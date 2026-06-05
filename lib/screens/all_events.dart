import 'package:credit_point_system/widget/category_section.dart';
import 'package:flutter/material.dart';

class AllEvents extends StatefulWidget {
  const AllEvents({super.key});

  @override
  State<AllEvents> createState() => _AllEventsState();
}

class _AllEventsState extends State<AllEvents> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("All Events"),
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          icon: const Icon(Icons.arrow_back)
          ),
      ),
      body: ListView(
        padding: EdgeInsets.all(22),
        children: [
          CategorySection(title:"Workshop"),
          CategorySection(title: "Seminar"),
          CategorySection(title: "Competition"),
          CategorySection(title: "Training"),
          CategorySection(title: "Exhibition"),
          CategorySection(title: "Campaign"),
          CategorySection(title: "Community service"),
          CategorySection(title: "Certification program"),
          CategorySection(title: "Field visit"),
          CategorySection(title: "Performance"),
          CategorySection(title: "Project"),
          CategorySection(title: "Research")
        ],
      ),

    );
  }
}