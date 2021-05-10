import 'package:flutter/material.dart';

class HelloUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      width: MediaQuery.of(context).size.width,
      //color: Colors.red,
      padding: const EdgeInsets.only(top: 60, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Hello User,",
              style:
                  TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
          Text("Welcome back!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.black)),
        ],
      ),
    );
  }
}
