import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
      borderSide: BorderSide.none,
    );
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).accentColor,
          ),
          enabled: true,
          enabledBorder: border,
          focusedBorder: border,
          hintText: "Search",
        ),
      ),
    );
  }
}
