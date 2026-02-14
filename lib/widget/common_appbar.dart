import 'package:credit_point_system/screens/login_page.dart';
import 'package:credit_point_system/screens/profile_page.dart';
import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget
implements PreferredSizeWidget{

  final String title;
  final bool islogged;


  const CommonAppbar({
    super.key, 
    required this.title,
    required this.islogged,    
    });

  
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      centerTitle: true,
      elevation: 0,
      actions: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: islogged 
          ?IconButton(
           onPressed: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder:(_)=>ProfilePage() 
              )
              );
           },
           icon: Icon(Icons.person)
           )
           :TextButton(
             onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:(_)=>LoginPage() 
                )
              );
             },
             style: TextButton.styleFrom(
              backgroundColor: Colors.green[400],
             ),
             child: const Text("Login"),
           )
          )
      ],
    );
  }

  @override
  Size get preferredSize=>const Size.fromHeight(kToolbarHeight);

} 
  
