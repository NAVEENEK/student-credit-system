import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage("assets/sports.jpg"),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text(
                        "your name ",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("your email", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20,),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  profileStatus(120,"credits"),
                  profileStatus(5,"rank"),
                  profileStatus(70,"participation"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget profileStatus(int value, String title){
 return Column(
  children: [
    Text(
      value.toString(),
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),
      ),
    Text(title)
  ],
 );


}
