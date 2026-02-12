import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget
implements PreferredSizeWidget{

  final String title;
  final bool islogged;
  final void Function() logginPressed;
  final void Function() profilePressed;


  const CommonAppbar({
    super.key, 
    required this.title,
    required this.islogged,
    required this.logginPressed,
    required this.profilePressed
    
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
           onPressed: profilePressed,
           icon: Icon(Icons.person)
           )
           :TextButton(
             onPressed: logginPressed,
             child: const Text("Login"),
             style: TextButton.styleFrom(
              backgroundColor: Colors.green[400],
             ),
           )
          )
      ],
    );
  }

  @override
  Size get preferredSize=>const Size.fromHeight(kToolbarHeight);

} 
  
