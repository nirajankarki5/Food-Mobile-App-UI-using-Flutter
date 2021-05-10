import 'package:flutter/material.dart';

class Toppings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange[100],
          ),
          child: Center(
            child: Text(
              "Ketchup",
              style: TextStyle(
                  color: Colors.red[900], fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange[100],
          ),
          child: Center(
            child: Text(
              "Chilly",
              style: TextStyle(
                  color: Colors.green[900], fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Container(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.orange[100],
          ),
          child: Center(
            child: Text(
              "Onion",
              style: TextStyle(
                  color: Colors.purple[900], fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
