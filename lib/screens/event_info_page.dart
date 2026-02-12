import 'package:credit_point_system/screens/enroll_page.dart';
import 'package:credit_point_system/widget/common_appbar.dart';
import 'package:flutter/material.dart';

class EventinfoPage extends StatelessWidget {
  const EventinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(title: "Event", islogged: false),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                //height:screenHeight* 0.45, ,
              )
            ],
           
          ),
        ],
      ),
    );
  }
}
