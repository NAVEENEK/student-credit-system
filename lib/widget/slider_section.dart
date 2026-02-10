import 'package:flutter/material.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {

  int sliderIndex=0;
  late final PageController _pageController;
  final int bannerCount=5;

  @override
  void initState(){
    super.initState();
    _pageController=PageController();
  }

  @override
  void dispose(){
    _pageController.dispose();
    super.dispose();

  }

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        //slider
        SizedBox(
          height: 180,
          child: PageView.builder(
            itemCount: bannerCount,
            onPageChanged: (index){
              setState(() {
                sliderIndex=index;
              });
            },
            itemBuilder: (BuildContext context,int index){
              return Placeholder();
            },
            controller: _pageController,
            physics: const BouncingScrollPhysics(),
          ),
        ),

        const SizedBox(height: 8,),

        //dot indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:List.generate(
            bannerCount, 
            (index)=>Container(
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: sliderIndex==index ? 10 : 6,
              height: sliderIndex==index ? 10 : 6,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: sliderIndex==index 
                ? Theme.of(context).colorScheme.primary 
                : Colors.grey
              ),
            )
            )
        )
      ],
    );
  }
}
