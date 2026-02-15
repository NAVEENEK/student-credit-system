import 'package:credit_point_system/screens/enroll_page.dart';
import 'package:credit_point_system/widget/common_appbar.dart';
import 'package:flutter/material.dart';

class EventinfoPage extends StatelessWidget {
  const EventinfoPage({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CommonAppbar(title: "Event", islogged: false),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: screenHeight * 0.45,
              child: Stack(
                children: [
                  //background image
                  Positioned.fill(
                    child: Image.network(
                      "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
                      fit: BoxFit.cover,
                    ),
                  ),

                  //add gradient effect to the background image
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.black87, Colors.transparent],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),

                  Positioned(
                    bottom: 30,
                    left: 20,
                    right: 20,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "club Name",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),

                        const SizedBox(height: 8),

                        const Text(
                          "Event Name",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        const SizedBox(height: 8),

                        ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) => EnrollPage(),
                            );
                          },
                          child: Text("Enroll"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
>>>>>>> bee91ff5d549a00e6a57e1f29e0ea941d2d44d22
      ),
    );
  }
}
