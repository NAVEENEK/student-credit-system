import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  const EventCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey.shade200
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //event banner/ image placeholder
          Container(
            height: 100,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius:const BorderRadius.vertical(
                top:Radius.circular(12)
              )
            ),
            child: Image.network(
              "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
              fit: BoxFit.cover,
            ),
          )
          //add event name and description here
        ],
      ) ,
    );
  }
}