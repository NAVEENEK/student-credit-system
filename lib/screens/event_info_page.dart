import 'package:credit_point_system/screens/enroll_page.dart';
import 'package:flutter/material.dart';


class EventinfoPage extends StatelessWidget {
  const EventinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            Image.network("https://picsum.photos/400/200"),
            TextButton(
              onPressed: (){
                Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_)=>EnrollPage()
                )
              );
              },
              child: Text('Enroll')
            )
          ],
        )
      ],
    );
  }
}