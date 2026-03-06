import 'package:credit_point_system/models/news_data.dart';
import 'package:flutter/material.dart';

class newsPage extends StatelessWidget {
   newsPage({super.key});

  List<News> newsList=[

      News(title:"news1", imagePath:"assets/sports.jpg", discription:"this is the discription"),
      News(title:"news2", imagePath:"assets/sports.jpg", discription:"this is the discription"),    
      News(title:"news3", imagePath:"assets/sports.jpg", discription:"this is the discription"),
      News(title:"news4", imagePath:"assets/sports.jpg", discription:"this is the discription"),
      News(title:"news5", imagePath:"assets/sports.jpg", discription:"this is the discription"),

  ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: newsList.length,
      itemBuilder: (context,index){
        final news=newsList[index];

        return Card(
          child:Column(
            children: [
              Image.asset(news.imagePath),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Text(news.title),
              ),
              const SizedBox(height: 5,),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(news.discription),
              )

            ],
          )

        );
      }
      );
  }
}