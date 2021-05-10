import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      unselectedLabelColor: Colors.grey,
      // indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).accentColor),
      tabs: [
        Tab(
          child: Row(
            children: [
              Icon(Icons.lunch_dining),
              SizedBox(width: 5),
              Text("Fast Food")
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Icon(Icons.restaurant),
              SizedBox(width: 5),
              Text("Fresh Food")
            ],
          ),
        ),
        Tab(
          child: Row(
            children: [
              Icon(Icons.local_cafe),
              SizedBox(width: 5),
              Text("Breakfast")
            ],
          ),
        ),
      ],
    );
  }
}
