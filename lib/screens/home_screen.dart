import 'package:flutter/material.dart';
import 'package:food_app/widgets/fav_fast_food.dart';
import 'package:food_app/widgets/fav_fresh_food.dart';

import 'package:food_app/widgets/hello_user.dart';
import 'package:food_app/widgets/my_tab_bar.dart';
import 'package:food_app/widgets/restaurants.dart';
import 'package:food_app/widgets/search_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: HelloUser(),
          elevation: 0,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          toolbarHeight: 250,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(kToolbarHeight),
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0),
              child: Column(
                children: [
                  SearchBar(),
                  SizedBox(height: 20),
                  MyTabBar(),
                ],
              ),
            ),
          ),
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(new FocusNode());
          },
          child: TabBarView(
            children: [
              ListView(
                children: [
                  FavFastFoodCarousel(),
                  Restaurants(),
                ],
              ),
              ListView(
                children: [
                  FavFreshFoodCarousel(),
                ],
              ),
              Center(
                  child: Text(
                "Your Breakfast goes here!!!",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
