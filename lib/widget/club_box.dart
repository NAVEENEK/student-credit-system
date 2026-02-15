//this is a resuable code for showing the clubboxs

import 'package:credit_point_system/models/club_data.dart';
import 'package:credit_point_system/screens/club_events.dart';
import 'package:flutter/material.dart';

class ClubBox extends StatelessWidget {
  final Club clubs;
  const ClubBox({
    super.key,
    required this.clubs
    });
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => ClubEvents()),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        elevation: 4,
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Stack(
            children: [
              //background image
              Image.asset(
                clubs.imagePath,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
              ),

              //club name
              Positioned(
                bottom: 10,
                left: 10,
                child: Text(
                  clubs.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
