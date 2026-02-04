import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  final String title;
  const CategorySection({
    super.key,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //section title 
        Text(
          title,
          style: Theme.of(context).textTheme.titleLarge,
        ),

        //a sizedbox for spacing between title and horizontal list 
        const SizedBox(height: 8),

        //horizontal event list 
        SizedBox(
          height: 200,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index){
              return EventCard();
            },
            separatorBuilder:(_, _)=>const SizedBox(width: 12),
            ),
        ),

        //sizedBox between two horizontal list 
        const SizedBox(height: 24,)
      ],
    );
  }
}