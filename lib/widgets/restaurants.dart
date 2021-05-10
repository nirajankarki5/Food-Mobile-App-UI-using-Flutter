import 'package:flutter/material.dart';
import 'package:food_app/models/restaurant_model.dart';

class Restaurants extends StatefulWidget {
  @override
  _RestaurantsState createState() => _RestaurantsState();
}

class _RestaurantsState extends State<Restaurants> {
  List _restaurantList = [];

  Text _buildRatingStars(int rating) {
    String stars = '';
    for (int i = 0; i < rating; i++) {
      stars += '⭐ ';
    }
    return Text('$stars',
        style: TextStyle(fontSize: 15.0, color: Colors.white));
  }

  getRestaurant() {
    List<Widget> templist = [];
    for (int i = 0; i < restaurants.length; i++) {
      templist.add(_restaurantCard(i));
    }
    _restaurantList = templist;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getRestaurant();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(25, 15, 0, 15),
          child: Text(
            "Restaurants",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Colors.grey[800],
            ),
          ),
        ),
        Column(children: _restaurantList),
      ],
    );
  }

  Widget _restaurantCard(int i) {
    return Container(
      height: 90,
      margin: EdgeInsets.only(left: 25, right: 25, bottom: 10),
      padding: EdgeInsets.only(left: 20, right: 20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              height: 60,
              width: 60,
              image: AssetImage(restaurants[i].imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 15),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5),
              Text(restaurants[i].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              _buildRatingStars(restaurants[i].rating),
              SizedBox(height: 5),
              Text("${restaurants[i].distance} km"),
            ],
          ),
        ],
      ),
    );
  }
}
