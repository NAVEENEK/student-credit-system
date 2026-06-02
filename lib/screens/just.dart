import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
  height: 60,

  child: TextFormField(

    decoration: InputDecoration(

      hintText: "Email Address",

      filled: true,
      fillColor: Colors.white,

      contentPadding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),

      enabledBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(15),

        borderSide: BorderSide(
          color: Colors.grey.shade300,
          width: 1,
        ),
      ),

      focusedBorder: OutlineInputBorder(

        borderRadius: BorderRadius.circular(15),

        borderSide: BorderSide(
          color: Colors.green,
          width: 1.5,
        ),
      ),
    ),
  ),
);
  }
}