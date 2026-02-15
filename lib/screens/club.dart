import 'package:credit_point_system/models/club_data.dart';
import 'package:credit_point_system/widget/club_box.dart';
import 'package:credit_point_system/widget/common_appbar.dart';
import 'package:flutter/material.dart';

class clubPage extends StatelessWidget {
   clubPage({super.key});

  final List<Club> clubs=[
    Club(name:"Sports Club", imagePath:'assets/sports.jpg'),
    Club(name: 'Photography Club', imagePath: 'assets/photo.jpg'),
    Club(name: 'Arts Club', imagePath: 'assets/arts.jpg'),
    Club(name: 'Tech Club', imagePath: 'assets/tech.jpg'),
    Club(name: 'Skill Club', imagePath: 'assets/skill.jpg'),
    Club(name: 'Environment Club', imagePath: 'assets/environment.jpg')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppbar(
        title: "Clubs", 
        islogged: false
        ),
        body: GridView.builder(
          physics: BouncingScrollPhysics(),
          padding: EdgeInsets.all(12),
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.5
            ), 
          itemBuilder: (context,index){
            return ClubBox(clubs:clubs[index]);

          }
          )
    );
  }
}